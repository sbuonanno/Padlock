CREATE TABLE PRODUCT (
                       idProduct IDENTITY NOT NULL PRIMARY KEY,
                       name VARCHAR(50) NOT NULL,
                       description VARCHAR(128) NOT NULL,
                       createdBy VARCHAR(128) NULL,
                       modifiedBy VARCHAR(128) NULL,
                       created DATE,
                       modified DATE);

CREATE TABLE MODULE_CONSTRAINT (
                         moduleId IDENTITY NOT NULL PRIMARY KEY,
                         requestedModuleId INT NOT NULL);

CREATE TABLE MODULE (
                        idModule IDENTITY NOT NULL PRIMARY KEY,
                        productId INT NOT NULL,
                        parentModuleId INT NOT NULL,
                        name VARCHAR(50) NOT NULL,
                        description VARCHAR(128) NOT NULL,
                        createdBy VARCHAR(128) NULL,
                        modifiedBy VARCHAR(128) NULL,
                        created DATE,
                        modified DATE);

CREATE TABLE LICENSE_TYPE (
                        idLicenseType IDENTITY NOT NULL PRIMARY KEY,
                        name VARCHAR(50) NOT NULL,
                        description VARCHAR(128) NOT NULL,
                        tag VARCHAR(128) NULL,
                        createdBy VARCHAR(128) NULL,
                        modifiedBy VARCHAR(128) NULL,
                        created DATE,
                        modified DATE);

CREATE TABLE MODULE_LICENSE_TYPE (
                        moduleId IDENTITY NOT NULL PRIMARY KEY,
                        licenceTypesId INT NOT NULL,

                        CONSTRAINT FK_MODULE_LICENSE_TYPE_MODULE FOREIGN KEY
                            (moduleId) REFERENCES MODULE(idModule));


CREATE TABLE LICENSE (
                      codeLicense VARCHAR(128) NOT NULL PRIMARY KEY,
                      companyId INT NOT NULL,
                      used BIT NOT NULL SET DEFAULT 0,
                      lastPing DATE NULL,
                      createdBy VARCHAR(128) NULL,
                      modifiedBy VARCHAR(128) NULL,
                      created DATE,
                      modified DATE);
