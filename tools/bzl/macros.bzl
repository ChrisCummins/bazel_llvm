def cc_remap_library(name, src, dst):
  """Rename a cc_library target.

    Args:
      name: The name of the target.
      src: The input library.
      dst: The renamed library.
    """
  native.genrule(
    name="{}_src".format(name), srcs=[src], outs=[dst], cmd="cp $< $@",
  )
  native.cc_library(
    name=name, srcs=[dst],
  )
