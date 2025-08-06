-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 06, 2025 at 10:00 AM
-- Server version: 8.0.42-0ubuntu0.20.04.1
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `venuesync_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `venuesync__venues`
--

CREATE TABLE `venuesync__venues` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `deleted` int DEFAULT '0',
  `flags` int DEFAULT NULL,
  `is_demo_data` int DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `owned_by` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `_acl` varchar(255) DEFAULT '',
  `_acl_delete` varchar(255) DEFAULT '',
  `_acl_edit` varchar(255) DEFAULT '',
  `_acl_tmp` varchar(255) DEFAULT '',
  `_acl_tmp_delete` varchar(255) DEFAULT '',
  `_acl_tmp_edit` varchar(255) DEFAULT '',
  `primary_acl_group` int DEFAULT NULL,
  `_acl_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='{"displayField":"name"}';

-- --------------------------------------------------------

--
-- Table structure for table `venuesync__spaces`
--

CREATE TABLE `venuesync__spaces` (
  `id` int NOT NULL,
  `venue_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `deleted` int DEFAULT '0',
  `flags` int DEFAULT NULL,
  `is_demo_data` int DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `owned_by` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `_acl` varchar(255) DEFAULT '',
  `_acl_delete` varchar(255) DEFAULT '',
  `_acl_edit` varchar(255) DEFAULT '',
  `_acl_tmp` varchar(255) DEFAULT '',
  `_acl_tmp_delete` varchar(255) DEFAULT '',
  `_acl_tmp_edit` varchar(255) DEFAULT '',
  `primary_acl_group` int DEFAULT NULL,
  `_acl_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='{"displayField":"name"}';

-- --------------------------------------------------------

--
-- Table structure for table `venuesync__event_types`
--

CREATE TABLE `venuesync__event_types` (
  `id` int NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `deleted` int DEFAULT '0',
  `flags` int DEFAULT NULL,
  `is_demo_data` int DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `owned_by` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `_acl` varchar(255) DEFAULT '',
  `_acl_delete` varchar(255) DEFAULT '',
  `_acl_edit` varchar(255) DEFAULT '',
  `_acl_tmp` varchar(255) DEFAULT '',
  `_acl_tmp_delete` varchar(255) DEFAULT '',
  `_acl_tmp_edit` varchar(255) DEFAULT '',
  `primary_acl_group` int DEFAULT NULL,
  `_acl_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='{"displayField":"type_name"}';

-- --------------------------------------------------------

--
-- Table structure for table `venuesync__booking_statuses`
--

CREATE TABLE `venuesync__booking_statuses` (
  `id` int NOT NULL,
  `status_name` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `deleted` int DEFAULT '0',
  `flags` int DEFAULT NULL,
  `is_demo_data` int DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `owned_by` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `_acl` varchar(255) DEFAULT '',
  `_acl_delete` varchar(255) DEFAULT '',
  `_acl_edit` varchar(255) DEFAULT '',
  `_acl_tmp` varchar(255) DEFAULT '',
  `_acl_tmp_delete` varchar(255) DEFAULT '',
  `_acl_tmp_edit` varchar(255) DEFAULT '',
  `primary_acl_group` int DEFAULT NULL,
  `_acl_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='{"displayField":"status_name"}';

-- --------------------------------------------------------

--
-- Table structure for table `venuesync__bookings`
--

CREATE TABLE `venuesync__bookings` (
  `id` int NOT NULL,
  `space_id` int DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  `event_type_id` int DEFAULT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `deleted` int DEFAULT '0',
  `flags` int DEFAULT NULL,
  `is_demo_data` int DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `owned_by` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `_acl` varchar(255) DEFAULT '',
  `_acl_delete` varchar(255) DEFAULT '',
  `_acl_edit` varchar(255) DEFAULT '',
  `_acl_tmp` varchar(255) DEFAULT '',
  `_acl_tmp_delete` varchar(255) DEFAULT '',
  `_acl_tmp_edit` varchar(255) DEFAULT '',
  `primary_acl_group` int DEFAULT NULL,
  `_acl_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='{"displayField":"id"}';

-- --------------------------------------------------------

--
-- Table structure for table `venuesync__vendor_types`
--

CREATE TABLE `venuesync__vendor_types` (
  `id` int NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `deleted` int DEFAULT '0',
  `flags` int DEFAULT NULL,
  `is_demo_data` int DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `owned_by` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `_acl` varchar(255) DEFAULT '',
  `_acl_delete` varchar(255) DEFAULT '',
  `_acl_edit` varchar(255) DEFAULT '',
  `_acl_tmp` varchar(255) DEFAULT '',
  `_acl_tmp_delete` varchar(255) DEFAULT '',
  `_acl_tmp_edit` varchar(255) DEFAULT '',
  `primary_acl_group` int DEFAULT NULL,
  `_acl_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='{"displayField":"type_name"}';

-- --------------------------------------------------------

--
-- Table structure for table `venuesync__vendors`
--

CREATE TABLE `venuesync__vendors` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `vendor_type_id` int DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `deleted` int DEFAULT '0',
  `flags` int DEFAULT NULL,
  `is_demo_data` int DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `owned_by` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `_acl` varchar(255) DEFAULT '',
  `_acl_delete` varchar(255) DEFAULT '',
  `_acl_edit` varchar(255) DEFAULT '',
  `_acl_tmp` varchar(255) DEFAULT '',
  `_acl_tmp_delete` varchar(255) DEFAULT '',
  `_acl_tmp_edit` varchar(255) DEFAULT '',
  `primary_acl_group` int DEFAULT NULL,
  `_acl_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='{"displayField":"name"}';

-- --------------------------------------------------------

--
-- Table structure for table `venuesync__booking_vendors`
--

CREATE TABLE `venuesync__booking_vendors` (
  `id` int NOT NULL,
  `booking_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `deleted` int DEFAULT '0',
  `flags` int DEFAULT NULL,
  `is_demo_data` int DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `owned_by` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `_acl` varchar(255) DEFAULT '',
  `_acl_delete` varchar(255) DEFAULT '',
  `_acl_edit` varchar(255) DEFAULT '',
  `_acl_tmp` varchar(255) DEFAULT '',
  `_acl_tmp_delete` varchar(255) DEFAULT '',
  `_acl_tmp_edit` varchar(255) DEFAULT '',
  `primary_acl_group` int DEFAULT NULL,
  `_acl_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='{"displayField":"id"}';

-- --------------------------------------------------------

--
-- Table structure for table `venuesync__resource_types`
--

CREATE TABLE `venuesync__resource_types` (
  `id` int NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `deleted` int DEFAULT '0',
  `flags` int DEFAULT NULL,
  `is_demo_data` int DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `owned_by` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `_acl` varchar(255) DEFAULT '',
  `_acl_delete` varchar(255) DEFAULT '',
  `_acl_edit` varchar(255) DEFAULT '',
  `_acl_tmp` varchar(255) DEFAULT '',
  `_acl_tmp_delete` varchar(255) DEFAULT '',
  `_acl_tmp_edit` varchar(255) DEFAULT '',
  `primary_acl_group` int DEFAULT NULL,
  `_acl_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='{"displayField":"type_name"}';

-- --------------------------------------------------------

--
-- Table structure for table `venuesync__resources`
--

CREATE TABLE `venuesync__resources` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `resource_type_id` int DEFAULT NULL,
  `venue_id` int DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `deleted` int DEFAULT '0',
  `flags` int DEFAULT NULL,
  `is_demo_data` int DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `owned_by` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `_acl` varchar(255) DEFAULT '',
  `_acl_delete` varchar(255) DEFAULT '',
  `_acl_edit` varchar(255) DEFAULT '',
  `_acl_tmp` varchar(255) DEFAULT '',
  `_acl_tmp_delete` varchar(255) DEFAULT '',
  `_acl_tmp_edit` varchar(255) DEFAULT '',
  `primary_acl_group` int DEFAULT NULL,
  `_acl_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='{"displayField":"name"}';

-- --------------------------------------------------------

--
-- Table structure for table `venuesync__booking_resources`
--

CREATE TABLE `venuesync__booking_resources` (
  `id` int NOT NULL,
  `booking_id` int DEFAULT NULL,
  `resource_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `deleted` int DEFAULT '0',
  `flags` int DEFAULT NULL,
  `is_demo_data` int DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `owned_by` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `_acl` varchar(255) DEFAULT '',
  `_acl_delete` varchar(255) DEFAULT '',
  `_acl_edit` varchar(255) DEFAULT '',
  `_acl_tmp` varchar(255) DEFAULT '',
  `_acl_tmp_delete` varchar(255) DEFAULT '',
  `_acl_tmp_edit` varchar(255) DEFAULT '',
  `primary_acl_group` int DEFAULT NULL,
  `_acl_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='{"displayField":"id"}';

-- --------------------------------------------------------

--
-- Table structure for table `venuesync__timelines`
--

CREATE TABLE `venuesync__timelines` (
  `id` int NOT NULL,
  `booking_id` int DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `assigned_to` int DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `deleted` int DEFAULT '0',
  `flags` int DEFAULT NULL,
  `is_demo_data` int DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `owned_by` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `_acl` varchar(255) DEFAULT '',
  `_acl_delete` varchar(255) DEFAULT '',
  `_acl_edit` varchar(255) DEFAULT '',
  `_acl_tmp` varchar(255) DEFAULT '',
  `_acl_tmp_delete` varchar(255) DEFAULT '',
  `_acl_tmp_edit` varchar(255) DEFAULT '',
  `primary_acl_group` int DEFAULT NULL,
  `_acl_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='{"displayField":"activity"}';

-- --------------------------------------------------------

--
-- Table structure for table `venuesync__checklists`
--

CREATE TABLE `venuesync__checklists` (
  `id` int NOT NULL,
  `booking_id` int DEFAULT NULL,
  `task` varchar(255) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `assigned_to` int DEFAULT NULL,
  `completed` int DEFAULT '0',
  `notes` varchar(500) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `deleted` int DEFAULT '0',
  `flags` int DEFAULT NULL,
  `is_demo_data` int DEFAULT '0',
  `modified` datetime DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `owned_by` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `_acl` varchar(255) DEFAULT '',
  `_acl_delete` varchar(255) DEFAULT '',
  `_acl_edit` varchar(255) DEFAULT '',
  `_acl_tmp` varchar(255) DEFAULT '',
  `_acl_tmp_delete` varchar(255) DEFAULT '',
  `_acl_tmp_edit` varchar(255) DEFAULT '',
  `primary_acl_group` int DEFAULT NULL,
  `_acl_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='{"displayField":"task"}';

--
-- Indexes for dumped tables
--

--
-- AUTO_INCREMENT for table `venuesync__venues`
--
ALTER TABLE `venuesync__venues`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venuesync__spaces`
--
ALTER TABLE `venuesync__spaces`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venuesync__event_types`
--
ALTER TABLE `venuesync__event_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venuesync__booking_statuses`
--
ALTER TABLE `venuesync__booking_statuses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venuesync__bookings`
--
ALTER TABLE `venuesync__bookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venuesync__vendor_types`
--
ALTER TABLE `venuesync__vendor_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venuesync__vendors`
--
ALTER TABLE `venuesync__vendors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venuesync__booking_vendors`
--
ALTER TABLE `venuesync__booking_vendors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venuesync__resource_types`
--
ALTER TABLE `venuesync__resource_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venuesync__resources`
--
ALTER TABLE `venuesync__resources`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venuesync__booking_resources`
--
ALTER TABLE `venuesync__booking_resources`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venuesync__timelines`
--
ALTER TABLE `venuesync__timelines`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venuesync__checklists`
--
ALTER TABLE `venuesync__checklists`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;