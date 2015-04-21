class MicroMime
  attr_accessor :"content_type", :encoding, :references,
                :xrefs, :registered, :extensions, :obsolete,
                :"use_instead", :friendly, :signature,
                :system, :docs

  def initialize(hash)
    @content_type = hash["content-type"]
    @encoding     = hash["encoding"]
    @references   = hash["references"]
    @xrefs        = hash["xrefs"]
    @registered   = hash["registered"]
    @extensions   = hash["extensions"]
    @obsolete     = hash["obsolete"]
    @use_instead  = hash["use-instead"]
    @friendly     = hash["friendly"]
    @signature    = hash["signature"]
    @system       = hash["system"]
    @docs         = hash["docs"]
  end
end
MIMES = []