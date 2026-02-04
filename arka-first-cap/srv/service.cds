using {test} from '../db/schema';


service ProjectService {

    entity Users    as select from test.Users;
    entity Projects as select from test.Projects;

}
