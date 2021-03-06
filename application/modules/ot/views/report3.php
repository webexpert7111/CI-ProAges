<?php
$iniciales=0;
$renovacion=0;
$total=0;
$totalgeneral=0;
$base_url = base_url();
$segments = $this->uri->rsegment_array();
$is_director_module = ($segments[1] == 'director');
?>

<table  class="sortable altrowstable tablesorter" id="sorter-report3"  style="width:100%;">
    <thead  class="head">
        <tr>
            <th id="table_agents" class="header_manager" style="width:100px">Agentes</th>
            <th id="total_negocio" class="header_manager" style="width:70px;">Iniciales </th>
            <th id="total_negocio_pai" class="header_manager" style="width:70px;">Renovación</th>
            <th id="total_primas_pagadas" class="header_manager" style="width:100px;">Totales</th>
        </tr>
    </thead>

    <tbody class="tbody">
      <?php  if( !empty( $data ) ): ?>
        <?php  foreach( $data as $value ):  ?>    
            <?php
                $iniciales += (float)$value['iniciales'];		
                $renovacion +=(float) $value['renovacion'];		
                $total =  (float)$value['iniciales']+(int)$value['renovacion'];
                $totalgeneral += (float)$total;		
            ?>
        <tr>
            <td  style="width:100px">
                <div class="text_azulado" id="<?php echo $value['id'] ?>">
                    <?php echo $value['name'] ?>
                </div> 
                <div class="info" id="info-<?php echo $value['id'] ?>">
                    <?php if( !empty( $value['uids'][0]['uid'] ) )echo $value['uids'][0]['uid']. ' - '; else echo 'Sin clave asignada - '; ?>
                    <?php echo $value['disabled'] .' - '. $value['generacion']. ' - ' ?>
                    <?php if( $value['connection_date'] != '0000-00-00' and $value['connection_date'] != '' ): ?>
                          Conectado <?php echo getFormatDate( $value['connection_date'] ) ?>
                    <?php else: ?>
                          En proceso de conexión
                    <?php endif; ?> 
                    <?php /*
                    - Definir meta -si la meta no está definida- o Editar meta -si está definida-  
                        - Simular resultado
                        - Ver desempeño en campo (es la liga a las actividades de ese agente)
                        - Ver perfil (esta página aún no está creada, es el siguiente punto)
                    */

		if (!$is_director_module)
		{
			$simulator_url = $base_url .'simulator/index/'.$value['id'];
			if( isset( $_POST['query']['ramo'] ) )
				$simulator_url .= '/'.$_POST['query']['ramo'];
			else
				$simulator_url .= '/1';
			$simulator_url .= '.html';		
			$activities_url = $base_url . 'activities/index/'.$value['id'].'.html';
		}
		$perfil_url = $base_url .'agent/index/'.$value['id'];
		if( isset( $_POST['query']['ramo'] ) )
			$perfil_url .= '/'.$_POST['query']['ramo'];
		else
			$perfil_url .= '/1';
		$perfil_url .= '.html';
		if (!$is_director_module): 
		?>
           |<a href="<?php echo $simulator_url ?>" class="btn btn-link">Simular resultado y definir meta</a>|
           <a href="<?php echo $activities_url ?>" class="btn btn-link">Actividades en campo</a>
		<?php endif; ?>		   
		   |
           <a href="<?php echo $perfil_url ?>" class="btn btn-link" target="_blank">Perfil</a><br />
                </div>
            </td>
            <td class="celda_gris"><div class="numeros"style="text-align:right">$ <?php echo $value['iniciales'] ?></div></td>
            <td class="celda_gris"><div class="numeros"style="text-align:right">$ <?php echo $value['renovacion']; ?></div></td>
            <td class="celda_gris"><div class="numeros"style="text-align:right">$ <?php echo $total ?></div></td>	
        </tr>
    <?php endforeach; ?>                                
    <?php endif; ?>  
    </tbody>
</table>


<div id="contentFoot" style="width:77% !important;" class="theader">
    <table  class="sortable altrowstable tablesorter" id="Tfoot" style="min-width:100% !important;" >
        <thead>
            <tr>
                <td style="width:100px"><div class="text_total">Agentes</div></td>
                <td style="width:70px;"><div class="numeros"></div>Iniciales</td>
                <td style="width:70px;"><div class="numeros"></div>Renovación</td>
                <td style="width:100px;"><div class="numeros"></div>Totales</td>
            </tr>
        </thead>
    </table>
</div>     



<div id="contentFoot" style="width:77% !important;">
    <table  class="sortable altrowstable tablesorter" id="Tfoot" style="min-width:100% !important;" >
        <tr>
            <td style="width:100px"><div class="text_total">Totales</div></td>
            <td style="width:70px;text-align:right"><div class="numeros"><?php echo $iniciales?></div>Iniciales</td>
            <td style="width:70px;text-align:right"><div class="numeros"><?php echo $renovacion?></div> Renovación</td>
            <td style="width:100px;text-align:right"><div class="numeros"><?php echo $totalgeneral?></div> Totales</td>
        </tr>
    </table>
</div>          