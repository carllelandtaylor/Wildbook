-- if you are seeing this error, chances are you have legacy NOT NULL constraints on the encounter table when you dont need them (shouldnt have them)
--   org.postgresql.util.PSQLException: ERROR: null value in column "APPROVED" violates not-null constraint

-- this will drop the troublesome not-null constraints

ALTER TABLE "ENCOUNTER" ALTER COLUMN "APPROVED" DROP NOT NULL;
ALTER TABLE "ENCOUNTER" ALTER COLUMN "HASSPOTIMAGE" DROP NOT NULL;
ALTER TABLE "ENCOUNTER" ALTER COLUMN "HASRIGHTSPOTIMAGE" DROP NOT NULL;
ALTER TABLE "ENCOUNTER" ALTER COLUMN "NUMSPOTSLEFT" DROP NOT NULL;
ALTER TABLE "ENCOUNTER" ALTER COLUMN "NUMSPOTSRIGHT" DROP NOT NULL;
ALTER TABLE "ENCOUNTER" ALTER COLUMN "OKEXPOSEVIATAPIRLINK" DROP NOT NULL; -- TODO before merge: does some schema need updating as well?
ALTER TABLE "ENCOUNTER" ALTER COLUMN "UNIDENTIFIABLE" DROP NOT NULL;
