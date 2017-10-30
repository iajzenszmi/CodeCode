import mapnik
import cairo
    
mapfile = 'mapfile.xml'
projection = '+proj=latlong +datum=WGS84'
    
mapnik_map = mapnik.Map(1000, 500)
mapnik.load_map(mapnik_map, mapfile)
bbox = mapnik.Envelope(-180.0,-90.0,180.0,90.0)
mapnik_map.zoom_to_box(bbox)
    
# Write to SVG
surface = cairo.SVGSurface('mapfile.svg', mapnik_map.width, mapnik_map.height)
mapnik.render(mapnik_map, surface)
surface.finish()
   
# Or write to PDF
surface = cairo.PDFSurface('mapfile.pdf', mapnik_map.width, mapnik_map.height)
mapnik.render(mapnik_map, surface)
surface.finish()
