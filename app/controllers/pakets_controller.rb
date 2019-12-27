class PaketsController < InheritedResources::Base

  private

    def paket_params
      params.require(:paket).permit(:jenispaket, :namapaket, :desk, :include, :exclude, :harga, :supplier_id)
    end

end
