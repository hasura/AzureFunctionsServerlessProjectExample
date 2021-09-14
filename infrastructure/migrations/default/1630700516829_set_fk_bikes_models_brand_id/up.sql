alter table "bikes"."models"
  add constraint "models_brand_id_fkey"
  foreign key ("brand_id")
  references "bikes"."brands"
  ("id") on update restrict on delete restrict;
