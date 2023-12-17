use academia;

alter table placement_student add constraint fk_placement_student_placement_id foreign key (placement_id) references placement(id);

alter table placement_student add constraint fk_placement_student_student_id foreign key (student_id) references student(student_id);

alter table placement_filter add constraint fk_placement_filter_placement_id foreign key (placement_id) references placement(id);

alter table placement_filter add constraint fk_placement_filter_domain_id foreign key (domain_id) references domain(domain_id);

alter table alumni add constraint fk_alumni_student_id foreign key (student_id) references student(student_id);

alter table alumni_organisation add constraint fk_alumni_organisation_organisation_id foreign key (organisation_id) references organisation(id);

alter table alumni_organisation add constraint fk_alumni_organisation_alumni_id foreign key (alumni_id) references alumni(id);

alter table student add constraint fk_domain_id foreign key (domain_id) references domain(domain_id);

alter table student add constraint fk_placement_id foreign key (placement_id) references placement(id);

alter table placement add constraint fk_organisation_id foreign key (organisation_id) references organisation(id);