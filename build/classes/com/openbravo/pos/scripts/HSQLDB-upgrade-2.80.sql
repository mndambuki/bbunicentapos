--    uniCenta oPOS - Touch Friendly Point Of Sale
--    Copyright (C) 2011 uniCenta
--    http://www.unicenta.net

--    This file is part of uniCenta oPOS.
--
--    uniCenta oPOS is free software: you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation, either version 3 of the License, or
--    (at your option) any later version.
--
--    uniCenta oPOS is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.
--
--    You should have received a copy of the GNU General Public License
--    along with uniCenta oPOS.  If not, see <http://www.gnu.org/licenses/>.

-- Database upgrade script for HSQLDB

-- v2.60 - v2.80

ALTER TABLE PRODUCTS ADD ISKITCHEN SMALLINT DEFAULT 0 NOT NULL;
ALTER TABLE PRODUCTS ADD PRINTKB SMALLINT DEFAULT 0 NOT NULL;
ALTER TABLE PRODUCTS ADD SENDSTATUS SMALLINT DEFAULT 0 NOT NULL;
ALTER TABLE PRODUCTS ADD ISSERVICE SMALLINT DEFAULT 0 NOT NULL;

ALTER TABLE PAYMENTS ADD COLUMN NOTES VARCHAR;

ALTER TABLE RECEIPTS ADD COLUMN PERSON VARCHAR;

UPDATE APPLICATIONS SET NAME = $APP_NAME{}, VERSION = $APP_VERSION{} WHERE ID = $APP_ID{};