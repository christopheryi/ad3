module ProductsHelper
  def product_image_tag(product, style=:full)
    if style == :tiny_thumb
      size = '32x32'
    elsif style == :mid_thumb
      size = '48x48'
    elsif style == :headshot
      size = '150x150'
    else
      size = '64x64'
    end
    image_tag(product_image_path(product), size: size).html_safe
  end

  def product_image_path(product)
    if product && product.image.try(:file).present?
      product.image.url
    # else
    #   'default_avatar.png' // if you have a default image
    end
  end
end
