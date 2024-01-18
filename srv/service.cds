using {capTestDraftSchema as my} from '../db/schema';

service listReport {
    entity PayDetail as projection on my.PayDetail;
}
