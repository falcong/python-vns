
%Module vns

%Include vector.sip
%Include list.sip
%Include core.sip
%Include vec.sip
%Include bbox.sip
%Include mercartor.sip
%Include maths.sip
%Include kdtree.sip
%Include polyline.sip
%Include lane.sip
%Include road.sip
%Include junction.sip
%Include roadnetwork.sip

%Include driverinfo.sip
%Include drivermodels/drivermodel.sip
%Include drivermodels/eidm.sip
%Include drivermodels/fvdm.sip
%Include drivermodels/gipps.sip
%Include drivermodels/idm.sip
%Include drivermodels/krauss.sip
%Include drivermodels/newell.sip
%Include drivermodels/ovm.sip
%Include drivermodels/pipes.sip

%Include vehicles/vehicle.sip
%Include vehicles/taxi.sip
%Include vehicles/train.sip
%Include vehicles/vehiclefactory.sip

%Include simulation/observer.sip
%Include simulation/simulator.sip
%Include simulation/parallelsimulator.sip
%Include simulation/generationfunction.sip
%Include simulation/trafficgenerationmodel.sip

%Include object.sip
%Include laneobject.sip
%Include trigger.sip
%Include routing/pathstop.sip
%Include routing/pathnode.sip
%Include routing/path.sip
%Include routing/route.sip
%Include routing/scheduledroute.sip
%Include routing/routes.sip
%Include routing/pathfinderhandler.sip
%Include routing/astarhandler.sip
%Include routing/dijkstrahandler.sip
%Include routing/routingtable.sip
%Include routing/membasedroutingtable.sip
%Include routing/routesgenerator.sip
%Include routing/routesfile.sip
%Include routing/sumoroutesfile.sip
%Include routing/xmlroutesfile.sip

%Include maps/mapfile.sip
%Include maps/infoptmapfile.sip
%Include maps/osmmapfile.sip
%Include maps/shpmapfile.sip
%Include maps/sumomapfile.sip
%Include maps/tigermapfile.sip
%Include maps/vnsshpmapfile.sip
%Include maps/xmlmapfile.sip
%Include maps/manhattanmap.sip
//%Include maps/buildingsloader.sip
//%Include maps/mapfilters.sip

%Include trafficlights/trafficlightcontroller.sip
%Include trafficlights/fixedtimetrafficlightcontroller.sip
%Include trafficlights/pretimedtrafficlightcontroller.sip
%Include trafficlights/trafficlightsgenerator.sip

//%Include viewer/sceneviewer.sip
//%Include viewer/painter.sip
%Include viewer/visualizer.sip

%Include communication/networkmodule.sip
//%Include communication/ns3networkmodule.sip
%Include communication/omnetnetworkmodule.sip
