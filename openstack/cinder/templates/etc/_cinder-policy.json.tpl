{
  "context_is_cloud_admin":  "role:cloud_volume_admin",
  "context_is_quota_admin":  "role:resource_service",
  "context_is_admin":  "rule:context_is_cloud_admin",
  "owner": "project_id:%(project_id)s",
  "member": "role:member and rule:owner",
  "viewer": "role:volume_viewer and rule:owner",
  "admin": "role:volume_admin and rule:owner",
  "context_is_volume_admin": "rule:context_is_admin or rule:admin",
  "context_is_editor": "rule:context_is_volume_admin or rule:member",
  "context_is_viewer":  "rule:context_is_editor or rule:viewer",
  "view_all": "role:member or role:volume_viewer or role:volume_admin or role:cloud_volume_admin",
  "edit_all": "role:member or role:volume_admin or role:cloud_volume_admin",
  "default": "rule:context_is_admin",

  "volume:create": "rule:context_is_editor",
  "volume:reserve_volume": "rule:context_is_editor",
  "volume:unreserve_volume": "rule:context_is_editor",
  "volume:initialize_connection": "rule:context_is_editor",
  "volume:terminate_connection": "rule:context_is_editor",
  "volume:detach": "rule:context_is_editor",
  "volume:begin_detaching": "rule:context_is_editor",
  "volume:roll_detaching": "rule:context_is_editor",
  "volume:attach": "rule:context_is_editor",

  "volume:delete": "rule:context_is_editor",
  "volume:get": "rule:context_is_viewer",
  "volume:get_all": "rule:context_is_viewer",
  "volume:get_volume_metadata": "rule:context_is_viewer",
  "volume:delete_volume_metadata": "rule:context_is_editor",
  "volume:update_volume_metadata": "rule:context_is_editor",
  "volume:get_volume_admin_metadata": "rule:context_is_editor",
  "volume:update_volume_admin_metadata": "rule:context_is_editor",
  "volume:get_snapshot": "rule:context_is_viewer",
  "volume:get_all_snapshots": "rule:context_is_viewer",
  "volume:create_snapshot": "rule:context_is_editor",
  "volume:delete_snapshot": "rule:context_is_editor",
  "volume:update_snapshot": "rule:context_is_editor",
  "volume:extend": "rule:context_is_editor",
  "volume:update_readonly_flag": "rule:context_is_volume_admin",
  "volume:retype": "rule:context_is_editor",
  "volume:update": "rule:context_is_editor",

  "volume_extension:types_manage": "rule:context_is_admin",
  "volume_extension:types_extra_specs": "rule:context_is_admin",
  "volume_extension:access_types_qos_specs_id": "rule:context_is_admin",
  "volume_extension:access_types_extra_specs": "rule:context_is_admin",
  "volume_extension:volume_type_access": "rule:context_is_viewer",
  "volume_extension:volume_type_access:addProjectAccess": "rule:context_is_admin",
  "volume_extension:volume_type_access:removeProjectAccess": "rule:context_is_admin",
  "volume_extension:volume_type_encryption": "rule:context_is_admin",
  "volume_extension:volume_encryption_metadata": "rule:context_is_editor",
  "volume_extension:extended_snapshot_attributes": "rule:context_is_editor",
  "volume_extension:volume_image_metadata": "rule:context_is_editor",

  "volume_extension:quotas:show": "rule:context_is_viewer or rule:context_is_quota_admin",
  "volume_extension:quotas:update": "rule:context_is_quota_admin",
  "volume_extension:quotas:delete": "rule:context_is_quota_admin",
  "volume_extension:quota_classes": "rule:context_is_admin or rule:context_is_quota_admin",
  "volume_extension:quota_classes:validate_setup_for_nested_quota_use": "rule:context_is_admin",

  "volume_extension:volume_admin_actions:reset_status": "rule:context_is_volume_admin",
  "volume_extension:snapshot_admin_actions:reset_status": "rule:context_is_volume_admin",
  "volume_extension:backup_admin_actions:reset_status": "rule:context_is_volume_admin",
  "volume_extension:volume_admin_actions:force_delete": "rule:context_is_volume_admin",
  "volume_extension:volume_admin_actions:force_detach": "rule:context_is_volume_admin",
  "volume_extension:snapshot_admin_actions:force_delete": "rule:context_is_volume_admin",
  "volume_extension:backup_admin_actions:force_delete": "rule:context_is_volume_admin",
  "volume_extension:volume_admin_actions:migrate_volume": "rule:context_is_admin",
  "volume_extension:volume_admin_actions:migrate_volume_completion": "rule:context_is_admin",

  "volume_extension:volume_host_attribute": "rule:context_is_admin",
  "volume_extension:volume_tenant_attribute": "rule:context_is_admin",
  "volume_extension:volume_mig_status_attribute": "rule:context_is_admin",
  "volume_extension:hosts": "rule:context_is_admin",
  "volume_extension:services:index": "rule:context_is_admin",
  "volume_extension:services:update" : "rule:context_is_admin",

  "volume_extension:volume_manage": "rule:context_is_admin",
  "volume_extension:volume_unmanage": "rule:context_is_admin",

  "volume_extension:capabilities": "rule:context_is_admin",

  "volume:create_transfer": "rule:context_is_editor",
  "volume:accept_transfer": "rule:edit_all",
  "volume:delete_transfer": "rule:context_is_editor",
  "volume:get_all_transfers": "rule:view_all",

  "volume_extension:replication:promote": "rule:context_is_admin",
  "volume_extension:replication:reenable": "rule:context_is_admin",

  "volume:enable_replication": "rule:context_is_admin",
  "volume:disable_replication": "rule:context_is_admin",
  "volume:failover_replication": "rule:context_is_admin",
  "volume:list_replication_targets": "rule:context_is_admin",

  "backup:create" : "rule:context_is_admin",
  "backup:delete": "rule:context_is_admin",
  "backup:get": "rule:context_is_admin",
  "backup:get_all": "rule:context_is_admin",
  "backup:restore": "rule:context_is_admin",
  "backup:backup-import": "rule:context_is_admin",
  "backup:backup-export": "rule:context_is_admin",

  "snapshot_extension:snapshot_actions:update_snapshot_status": "rule:context_is_admin",
  "snapshot_extension:snapshot_manage": "rule:context_is_admin",
  "snapshot_extension:snapshot_unmanage": "rule:context_is_admin",

  "consistencygroup:create" : "rule:context_is_admin",
  "consistencygroup:delete": "rule:context_is_admin",
  "consistencygroup:update": "rule:context_is_admin",
  "consistencygroup:get": "rule:context_is_admin",
  "consistencygroup:get_all": "rule:context_is_admin",

  "consistencygroup:create_cgsnapshot" : "rule:context_is_admin",
  "consistencygroup:delete_cgsnapshot": "rule:context_is_admin",
  "consistencygroup:get_cgsnapshot": "rule:context_is_admin",
  "consistencygroup:get_all_cgsnapshots": "rule:context_is_admin",

  "scheduler_extension:scheduler_stats:get_pools" : "rule:context_is_admin"
}
