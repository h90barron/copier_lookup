module RequestsHelper
  def create_copier_from_request(req)
    @copier = Copier.new(name: req.req_name, oem: req.req_oem, marketer: req.req_marketer, 
                         pc_embedded: req.req_pc_embedded, embedded_platform: req.req_embedded_platform,
                         pc_int_scanning: req.req_pc_int_scanning, pc_dependency: req.req_pc_dependency,
                         pc_dependency_detail: req.req_pc_dependency_detail, general_notes: req.req_general_notes,
                         aka: req.req_aka, intro_date: req.req_intro_date, disc_date: req.req_disc_date,
                         print: req.req_print, copy: req.req_copy, scan: req.req_scan, fax: req.req_fax)
    return true if @copier.save
  end
      
end
