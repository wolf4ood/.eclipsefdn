local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.edc', 'eclipse-edc') {
  settings+: {
    description: "",
    discussion_source_repository: "eclipse-edc/.github",
    has_discussions: true,
    name: "Eclipse Dataspace Components",
    web_commit_signoff_required: false,
    workflows+: {
      default_workflow_permissions: "write",
    },
  },
  secrets+: [
    orgs.newOrgSecret('ORGANIZATION_PROJECT') {
      value: "********",
    },
    orgs.newOrgSecret('DISCORD_GITHUB_CI_WEBHOOK') {
      value: "pass:bots/technology.edc/discord/ci-webhook-url",
    },
    orgs.newOrgSecret('DISCORD_GITHUB_WEBHOOK') {
      value: "pass:bots/technology.edc/discord/webhook-url",
    },
    orgs.newOrgSecret('GITLAB_API_TOKEN') {
      value: "pass:bots/technology.edc/gitlab.eclipse.org/api-token",
    },
    orgs.newOrgSecret('ORG_GITHUB_BOT_TOKEN') {
      value: "pass:bots/technology.edc/github.com/api-token",
    },
    orgs.newOrgSecret('ORG_GITHUB_BOT_USER') {
      value: "pass:bots/technology.edc/github.com/username",
    },
    orgs.newOrgSecret('ORG_GPG_PASSPHRASE') {
      value: "pass:bots/technology.edc/gpg/passphrase",
    },
    orgs.newOrgSecret('ORG_GPG_PRIVATE_KEY') {
      value: "pass:bots/technology.edc/gpg/secret-subkeys.asc",
    },
    orgs.newOrgSecret('CENTRAL_SONATYPE_TOKEN_PASSWORD') {
      value: "pass:bots/technology.edc/central.sonatype.org/token-password",
    },
    orgs.newOrgSecret('CENTRAL_SONATYPE_TOKEN_USERNAME') {
      value: "pass:bots/technology.edc/central.sonatype.org/token-username",
    },
    orgs.newOrgSecret('SWAGGERHUB_TOKEN') {
      value: "********",
    },
    orgs.newOrgSecret('SWAGGERHUB_USER') {
      value: "********",
    },
  ],
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      has_discussions: true,
      has_wiki: false,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('Collateral') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "EDC Presentations and Working Documents",
      homepage: "",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('Connector') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "EDC core services including data plane and control plane",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_discussions: true,
      has_wiki: false,
      homepage: "",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('DataDashboard') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "DataDashboard",
      has_discussions: true,
      has_wiki: false,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('FederatedCatalog') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "FederatedCatalog",
      has_discussions: true,
      has_wiki: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_path: "/",
      gh_pages_source_branch: "gh-pages",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('GradlePlugins') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_discussions: true,
      has_wiki: false,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('GRADLE_PUBLISH_KEY') {
          value: "********",
        },
        orgs.newRepoSecret('GRADLE_PUBLISH_SECRET') {
          value: "********",
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('IdentityHub') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "IdentityHub",
      has_discussions: true,
      has_wiki: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('Fleet') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Fleet Management Components",
      has_discussions: true,
      has_wiki: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "read",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('JenkinsPipelines') {
      archived: true,
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      has_discussions: true,
      has_wiki: false,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('MinimumViableDataspace') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Guidance on documentation, scripts and integration steps on using the EDC project results",
      has_discussions: true,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('ACR_NAME') {
          value: "********",
        },
        orgs.newRepoSecret('APP_CLIENT_ID') {
          value: "********",
        },
        orgs.newRepoSecret('APP_CLIENT_SECRET') {
          value: "********",
        },
        orgs.newRepoSecret('APP_OBJECT_ID') {
          value: "********",
        },
        orgs.newRepoSecret('ARM_CLIENT_ID') {
          value: "********",
        },
        orgs.newRepoSecret('ARM_CLIENT_SECRET') {
          value: "********",
        },
        orgs.newRepoSecret('ARM_SUBSCRIPTION_ID') {
          value: "********",
        },
        orgs.newRepoSecret('ARM_TENANT_ID') {
          value: "********",
        },
        orgs.newRepoSecret('COMMON_RESOURCE_GROUP') {
          value: "********",
        },
        orgs.newRepoSecret('COMMON_RESOURCE_GROUP_LOCATION') {
          value: "********",
        },
        orgs.newRepoSecret('REGISTRY_SHARE') {
          value: "********",
        },
        orgs.newRepoSecret('REGISTRY_STORAGE_ACCOUNT') {
          value: "********",
        },
        orgs.newRepoSecret('TERRAFORM_STATE_CONTAINER') {
          value: "********",
        },
        orgs.newRepoSecret('TERRAFORM_STATE_STORAGE_ACCOUNT') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('Publications') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "EDC publications",
      has_discussions: true,
      homepage: "",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('RegistrationService') {
      archived: true,
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "RegistrationService",
      has_discussions: true,
      has_wiki: false,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('Release') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      has_discussions: true,
      has_wiki: false,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('Runtime-Metamodel') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Runtime-Metamodel",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_wiki: false,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('Samples') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      has_discussions: true,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('Technology-Aws') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_discussions: true,
      has_wiki: false,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('Technology-Azure') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_discussions: true,
      has_wiki: false,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('PG_CONNECTION_STRING') {
          value: "********",
        },
      ],
      environments: [
        orgs.newEnvironment('Azure-dev'),
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('Technology-Gcp') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_discussions: true,
      has_wiki: false,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('Technology-HuaweiCloud') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_discussions: true,
      has_projects: false,
      has_wiki: false,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      secrets+: [
        orgs.newRepoSecret('ACCESS_KEY') {
          value: "pass:bots/technology.edc/cloud.huawei.com/access-key",
        },
        orgs.newRepoSecret('SECRET_KEY') {
          value: "pass:bots/technology.edc/cloud.huawei.com/secret-key",
        },
        orgs.newRepoSecret('OBS_ACCESS_KEY_ID') {
          value: "pass:bots/technology.edc/cloud.huawei.com/obs-access-key-id",
        },
        orgs.newRepoSecret('OBS_SECRET_ACCESS_KEY') {
          value: "pass:bots/technology.edc/cloud.huawei.com/obs-secret-access-key",
        },
      ],
      workflows+: {
        default_workflow_permissions: "read",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('Template-Basic') {
      archived: true,
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      has_wiki: false,
      is_template: true,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('TrustFrameworkAdoption') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      has_discussions: true,
      has_projects: false,
      has_wiki: false,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('docs') {
      archived: true,
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "EDC documentation",
      gh_pages_build_type: "workflow",
      homepage: "",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "main"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('json-ld-context') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('eclipse-edc.github.io') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "EDC documentation website",
      gh_pages_build_type: "workflow",
      homepage: "https://eclipse-edc.github.io",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "main"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('CompatibilityTests') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      has_discussions: true,
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
    },
  ],
}
