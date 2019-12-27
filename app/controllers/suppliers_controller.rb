class SuppliersController < InheritedResources::Base

  private

    def supplier_params
      params.require(:supplier).permit(:namasup, :alamat, :email, :telp, :termin)
    end

end
