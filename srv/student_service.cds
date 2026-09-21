using {rpe5.db as model} from '../db/schema';

service studentAPIService {
    entity StudentData as projection on model.Students;
}

