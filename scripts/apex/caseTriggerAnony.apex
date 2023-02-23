list<case> listcase = new list<case>();
for (Integer i = 0; i < 210; i++) {
    case c = new case();
    c.Subject = 'Trigger case';
    c.Origin = 'Web';
    c.Status = 'New';
    c.Description = 'resolve it, come on';
    listcase.add(c);
}
insert listcase;

List<Case> allCase = [select id, status from case where status = 'New'];
for (case eachCase : allCase) {
    eachCase.Status = 'Working';
}
update allCase; 