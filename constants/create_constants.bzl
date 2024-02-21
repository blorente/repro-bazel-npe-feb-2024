
def _create_constants_impl(rctx):
  rctx.file("constants.bzl", """
cats=["Ember", "Cinder"]
  """)
  rctx.file("BUILD.bazel", "")


def create_constants(name):
  create_constants_rule = repository_rule(
    _create_constants_impl,
  )
  create_constants_rule(name=name)

