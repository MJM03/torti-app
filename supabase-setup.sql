-- Torti V4 · esquema opcional de sincronización
-- Ejecutar una sola vez en Supabase > SQL Editor.

create table if not exists public.torti_sync (
  sync_code text primary key,
  payload jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.torti_sync enable row level security;

-- Torti usa un código de sincronización largo y privado como identificador.
-- Estas políticas permiten al cliente PWA leer/escribir mediante la anon key.
-- No reutilices contraseñas personales como sync_code.
create policy "torti anon read"
on public.torti_sync for select
to anon
using (true);

create policy "torti anon insert"
on public.torti_sync for insert
to anon
with check (char_length(sync_code) >= 20);

create policy "torti anon update"
on public.torti_sync for update
to anon
using (char_length(sync_code) >= 20)
with check (char_length(sync_code) >= 20);

grant select, insert, update on public.torti_sync to anon;
