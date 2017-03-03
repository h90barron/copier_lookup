module RequestsHelper
  def create_copier_from_request(req)
    @copier = Copier.new(name: req.name, manufacturer: req.manufacturer, papercut: req.papercut, coinop: req.coinop, card_reader: req.card_reader)
    return true if @copier.save
  end
      
end
