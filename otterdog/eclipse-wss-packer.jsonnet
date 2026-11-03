local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('automotive.dco.wss-packer', 'eclipse-wss-packer') {
  settings+: {
    name: "Eclipse WSS-Packer",
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('wss-packer-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "WSS-Packer project website",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('Packer') {
      allow_merge_commit: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Packer component for transferring compressed Wheel Speed Sensor data over a vehicle data bus using a fixed bandwidth.",
    },
  ],
}
