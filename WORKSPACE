load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
http_archive(
    name = "contrib_rules_jvm",
    sha256 = "2412e22bc1eb9d3a5eae15180f304140f1aad3f8184dbd99c845fafde0964559",
    strip_prefix = "rules_jvm-0.24.0",
    url = "https://github.com/bazel-contrib/rules_jvm/releases/download/v0.24.0/rules_jvm-v0.24.0.tar.gz",
)

# Fetches the contrib_rules_jvm dependencies.
# If you want to have a different version of some dependency,
# you should fetch it *before* calling this.
load("@contrib_rules_jvm//:repositories.bzl", "contrib_rules_jvm_deps")

contrib_rules_jvm_deps()

# Now ensure that the downloaded deps are properly configured
load("@contrib_rules_jvm//:setup.bzl", "contrib_rules_jvm_setup")

contrib_rules_jvm_setup()
