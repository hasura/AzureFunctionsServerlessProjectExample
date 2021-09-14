alter table "bikes"."models"
  add constraint "models_type_id_fkey"
  foreign key ("type_id")
  references "bikes"."types"
  ("id") on update restrict on delete restrict;
