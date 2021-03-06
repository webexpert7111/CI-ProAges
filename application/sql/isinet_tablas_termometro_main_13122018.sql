/*  SCRIPTS DE TABLAS PARA VIDA   */
CREATE TABLE `bona_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periodo` int(11) DEFAULT NULL,
  `inter` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `zona`  int(11) DEFAULT NULL,
  `st` varchar(255) DEFAULT NULL,
  `tipo_gte` int(11) DEFAULT NULL,
  `fec_cnsf` datetime DEFAULT NULL,
  `generacion` varchar(255) DEFAULT NULL,
  `pafect1` decimal(20,3) DEFAULT NULL,
  `pafect2` decimal(20,3) DEFAULT NULL,
  `incre` decimal(20,3) DEFAULT NULL,
  `pafect1_exc` decimal(20,3) DEFAULT NULL,
  `pafect2_exc` decimal(20,3) DEFAULT NULL,
  `prod_bono_1_ubi` decimal(20,3) DEFAULT NULL,
  `prod_bono_1_pag` decimal(20,3) DEFAULT NULL,
  `prod_bon_2_ubi` decimal(20,3) DEFAULT NULL,
  `prod_bon_2_pag` decimal(20,3) DEFAULT NULL,
  `negs_bono` int(5) DEFAULT NULL,
  `negs_bono_pag` int(5) DEFAULT NULL,
  `basea` decimal(20,3) DEFAULT NULL,
  `pconreal` decimal(20,3) DEFAULT NULL,
  `pconacot` decimal(20,3) DEFAULT NULL,
  `base_ca` decimal(20,3) DEFAULT NULL,
  `npol_ca` int(5) DEFAULT NULL,
  `base_cp` decimal(20,3) DEFAULT NULL,
  `npol_cp` int(5) DEFAULT NULL,
  `base_pp` decimal(20,3) DEFAULT NULL,
  `npol_pp` int(5) DEFAULT NULL,
  `base_co` decimal(20,3) DEFAULT NULL,
  `npol_co` int(5) DEFAULT NULL,
  `base_re` decimal(20,3) DEFAULT NULL,
  `npol_re` int(5) DEFAULT NULL,
  `col1` int(5) DEFAULT NULL,
  `renglon1` int(5) DEFAULT NULL,
  `porbono1` decimal(20,3) DEFAULT NULL,
  `bono1` decimal(20,3) DEFAULT NULL,
  `col2` int(5) DEFAULT NULL,
  `renglon2` int(5) DEFAULT NULL,
  `porbono2` decimal(20,3) DEFAULT NULL,
  `bono2` decimal(20,3) DEFAULT NULL,
  `renglon3` int(5) DEFAULT NULL,
  `porbono3` decimal(20,3) DEFAULT NULL,
  `bono3` decimal(20,3) DEFAULT NULL,
  `prod_tot` decimal(20,3) DEFAULT NULL,
  `ptos_tot` decimal(20,3) DEFAULT NULL,
  `tabla` int(5) DEFAULT NULL,
  `tipo_` int(5) DEFAULT NULL,
  `min_cons` int(5) DEFAULT NULL,
  `base_min_cero` int(5) DEFAULT NULL,
  `bon_cre` int(5) DEFAULT NULL,
  `bxacot` decimal(20,3) DEFAULT NULL,
  `pro_inc_ant` decimal(20,3) DEFAULT NULL,
  `pro_inc_act` decimal(20,3) DEFAULT NULL,
  `por_incremento` decimal(20,3) DEFAULT NULL,
  `prod_nov` decimal(20,3) DEFAULT NULL,
  `prod_ct` decimal(20,3) DEFAULT NULL,
  `cons_min` int(4) DEFAULT NULL,
  `mes_corte` int(3) DEFAULT NULL,
  `fec_act` varchar(255) DEFAULT NULL,
  `congreso` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `business_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` varchar(255) DEFAULT NULL,
  `interl` int(11) DEFAULT NULL,
  `inter` varchar(255) DEFAULT NULL,
  `asegurado` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `pma_pagada` decimal(20,3) DEFAULT NULL,
  `pma_anual` decimal(20,3) DEFAULT NULL,
  `neg_camp_mas_pai` int(11) DEFAULT NULL,
  `neg_paga` int(11) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `conservation_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` varchar(255) DEFAULT NULL,
  `interl` int(11) DEFAULT NULL,
  `inter` varchar(255) DEFAULT NULL,
  `tipoho` varchar(255) DEFAULT NULL,
  `poliza1` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `fec_emis` datetime DEFAULT NULL,
  `pag_hasta` int(11) DEFAULT NULL,
  `aio_pol` int(11) DEFAULT NULL,
  `prima1` decimal(20,3) DEFAULT NULL,
  `cons_real1` decimal(20,3) DEFAULT NULL,
  `cons_acot1` decimal(20,3) DEFAULT NULL,
  `prisfp1` decimal(20,3) DEFAULT NULL,
  `moneda1` varchar(255) DEFAULT NULL,
  `for_pago1` varchar(255) DEFAULT NULL,
  `pe_con_zona` decimal(20,3) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `points_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` varchar(255) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `zona` int(11) DEFAULT NULL,
  `inter` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `generacion` varchar(255) DEFAULT NULL,
  `renglon1` int(11) DEFAULT NULL,
  `prod_bono_1_pag` decimal(20,3) DEFAULT NULL,
  `ptos_tot` decimal(20,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `production_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` varchar(255) DEFAULT NULL,
  `interl` int(11) DEFAULT NULL,
  `inter` varchar(255) DEFAULT NULL,
  `fla_num` varchar(255) DEFAULT NULL,
  `poliza` varchar(255) DEFAULT NULL,
  `apri` int(11) DEFAULT NULL,
  `femovibo` datetime DEFAULT NULL,
  `fefipebo` datetime DEFAULT NULL,
  `impri` decimal(20,3) DEFAULT NULL,
  `po_ubi1_da` int(11) DEFAULT NULL,
  `impri_ubi` decimal(20,3) DEFAULT NULL,
  `po_pag1_da` int(11) DEFAULT NULL,
  `impri_pag` decimal(20,3) DEFAULT NULL,
  `dnnom` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `fecontbo` datetime DEFAULT NULL,
  `incremen` varchar(255) DEFAULT NULL,
  `periodo` varchar(255) DEFAULT NULL,
  `generation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*  SCRIPTS DE TABLAS PARA GMM    */
CREATE TABLE `asegurados_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `lider` varchar(255) DEFAULT NULL,
  `f_lider` varchar(255) DEFAULT NULL,
  `asegurado` varchar(255) DEFAULT NULL,
  `numcert` varchar(255) DEFAULT NULL,
  `fec:antig` varchar(255) DEFAULT NULL,
  `poliza` varchar(255) DEFAULT NULL,
  `fec_antig` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `siniestralidad_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `agente` int(11) DEFAULT NULL,
  `asegurado` varchar(255) DEFAULT NULL,
  `numrecl` varchar(255) DEFAULT NULL,
  `poliza` int(11) DEFAULT NULL,
  `total` decimal(20,3) DEFAULT NULL,
  `sinaco_da` decimal(20,3) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `production_gmm_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` varchar(255) DEFAULT NULL,
  `fecsis` datetime DEFAULT NULL,
  `clave` varchar(255) DEFAULT NULL,
  `fla_num` varchar(255) DEFAULT NULL,
  `poliza_` varchar(255) DEFAULT NULL,
  `st_nueren` varchar(255) DEFAULT NULL,
  `pmaneta` decimal(20,3) DEFAULT NULL,
  `pmaubi` decimal(20,3) DEFAULT NULL,
  `primaafe` decimal(20,3) DEFAULT NULL,
  `asegurado` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `periodo` varchar(255) DEFAULT NULL,
  `tipo_deducible` varchar(255) DEFAULT NULL,
  `generation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `bong_sa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periodo` int(11) DEFAULT NULL,
  `folio` int(11) DEFAULT NULL,
  `zona` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `fec_conec` datetime DEFAULT NULL,
  `generacion` varchar(255) DEFAULT NULL,
  `st` varchar(255) DEFAULT NULL,
  `inter` decimal(20,3) DEFAULT NULL,
  `pma_afe1` decimal(20,3) DEFAULT NULL,
  `pma_afe2` decimal(20,3) DEFAULT NULL,
  `pma_ubi1` decimal(20,3) DEFAULT NULL,
  `pma_ubi2` decimal(20,3) DEFAULT NULL,
  `pma_pag1` decimal(20,3) DEFAULT NULL,
  `pma_pag2` decimal(20,3) DEFAULT NULL,
  `pma_exc1` decimal(20,3) DEFAULT NULL,
  `pma_exc2` decimal(20,3) DEFAULT NULL,
  `pma_anual` decimal(20,3) DEFAULT NULL,
  `pma_ult_12` decimal(20,3) DEFAULT NULL,
  `sini_real` decimal(20,3) DEFAULT NULL,
  `sinaco` decimal(20,3) DEFAULT NULL,
  `porsini_real` decimal(20,3) DEFAULT NULL,
  `porsini` decimal(20,3) DEFAULT NULL,
  `indicador_porsini` int(11) DEFAULT NULL,
  `renglon1` int(11) DEFAULT NULL,
  `columna1` int(11) DEFAULT NULL,
  `porbono1` decimal(20,3) DEFAULT NULL,
  `bono1` decimal(20,3) DEFAULT NULL,
  `renglon2` int(11) DEFAULT NULL,
  `columna2` int(11) DEFAULT NULL,
  `porbono2` decimal(20,3) DEFAULT NULL,
  `bono2` decimal(20,3) DEFAULT NULL,
  `bono_total` decimal(20,3) DEFAULT NULL,
  `ptos_prod` int(11) DEFAULT NULL,
  `porbono_desarrollo` decimal(20,3) DEFAULT NULL,
  `bono_desarrollo` decimal(20,3) DEFAULT NULL,
  `num_aseg` int(11) DEFAULT NULL,
  `tabla` int(11) DEFAULT NULL,
  `pma_nov` int(11) DEFAULT NULL,
  `congreso` varchar(255) DEFAULT NULL,
  `fec_act` datetime DEFAULT NULL,
  `cons_vida` decimal(20,3) DEFAULT NULL,
  `pma_ini_vida` decimal(20,3) DEFAULT NULL,
  `pma_nov_vida` decimal(20,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `bona_sa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` varchar(255) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `lider` int(11) DEFAULT NULL,
  `nlider` varchar(255) DEFAULT NULL,
  `fecconec` datetime DEFAULT NULL,
  `generacion` varchar(255) DEFAULT NULL,
  `zona_prov` int(11) DEFAULT NULL,
  `tipo_gte` int(11) DEFAULT NULL,
  `subgrupo` int(11) DEFAULT NULL,
  `st_pro` varchar(255) DEFAULT NULL,
  `pma_afe1` decimal(20,3) DEFAULT NULL,
  `pma_ubi1` decimal(20,3) DEFAULT NULL,
  `pma_pag1` decimal(20,3) DEFAULT NULL,
  `pma_exc1` decimal(20,3) DEFAULT NULL,
  `pma_afe2` decimal(20,3) DEFAULT NULL,
  `pma_ubi2` decimal(20,3) DEFAULT NULL,
  `pma_pag2` decimal(20,3) DEFAULT NULL,
  `pma_exc2` decimal(20,3) DEFAULT NULL,
  `pma_anual` decimal(20,3) DEFAULT NULL,
  `n_aseg` decimal(20,3) DEFAULT NULL,
  `sini_real` decimal(20,3) DEFAULT NULL,
  `sinaco_agt` decimal(20,3) DEFAULT NULL,
  `pma_ult_12` decimal(20,3) DEFAULT NULL,
  `porsini_real` decimal(20,3) DEFAULT NULL,
  `porsini` decimal(20,3) DEFAULT NULL,
  `indicador_porsini` decimal(20,3) DEFAULT NULL,
  `renglon1` decimal(20,3) DEFAULT NULL,
  `columna1` decimal(20,3) DEFAULT NULL,
  `porbono1` decimal(20,3) DEFAULT NULL,
  `bono1` decimal(20,3) DEFAULT NULL,
  `ptos_prod_da` decimal(20,3) DEFAULT NULL,
  `renglon2` decimal(20,3) DEFAULT NULL,
  `columna2` decimal(20,3) DEFAULT NULL,
  `porbono2` decimal(20,3) DEFAULT NULL,
  `bono2` decimal(20,3) DEFAULT NULL,
  `ptos` decimal(20,3) DEFAULT NULL,
  `bono_tot` decimal(20,3) DEFAULT NULL,
  `agt_prod` varchar(255) DEFAULT NULL,
  `ind_pago` varchar(255) DEFAULT NULL,
  `tabla` int(11) DEFAULT NULL,
  `renglon_vi` int(11) DEFAULT NULL,
  `pma_vi` int(11) DEFAULT NULL,
  `ptos_vi` int(11) DEFAULT NULL,
  `bono_vi` int(11) DEFAULT NULL,
  `renglon_au` int(11) DEFAULT NULL,
  `pma_au` int(11) DEFAULT NULL,
  `ptos_au` int(11) DEFAULT NULL,
  `bono_au` int(11) DEFAULT NULL,
  `ptos_total` int(11) DEFAULT NULL,
  `bonos_total` int(11) DEFAULT NULL,
  `porbono_integral` int(11) DEFAULT NULL,
  `bono_integral` int(11) DEFAULT NULL,
  `congreso` int(11) DEFAULT NULL,
  `fec_act` datetime DEFAULT NULL,
  `folio` int(11) DEFAULT NULL,
  `renovado` varchar(255) DEFAULT NULL,
  `cancelado` varchar(255) DEFAULT NULL,
  `rehabilitada` varchar(255) DEFAULT NULL,
  `base` varchar(255) DEFAULT NULL,
  `conservacion` varchar(255) DEFAULT NULL,
  `por_conservacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* CAMBIOS HECHOS VIERNES 04-01-2019: Se agreegó tabla Produccion_ y Producción_sa*/

CREATE TABLE `produccion_` (
  `id` INT NOT NULL  AUTO_INCREMENT,
  `interl` int(11) NULL,
  `inter` VARCHAR(45) NULL,
  `fla_num` int(11) NULL,
  `poliza` int(11) NULL,
  `apri` INT NULL,
  `femovibo` int(11) NULL,
  `fefipebo` int(11) NULL,
  `impri` decimal(20,3) NULL,
  `po_ubi1_da` INT NULL,
  `po_pag1_da` INT NULL,
  `dnnom` VARCHAR(45) NULL,
  `plan` VARCHAR(45) NULL,
  `fecontbo` int(11) NULL,
  `incremen` VARCHAR(45) NULL,
  `periodo` int(11) NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `produccion_sa` (
  `id` INT NOT NULL  AUTO_INCREMENT,
  `fecsis` VARCHAR(45) NULL,
  `clave` VARCHAR(45) NULL,
  `poliza_` VARCHAR(45) NULL,
  `st_nueren` VARCHAR(45) NULL,
  `pmaneta` decimal(20,3) NULL,
  `pmaubi` decimal(20,3) NULL,
  `primaafe` decimal(20,3) NULL,
  `asegurado` VARCHAR(45) NULL,
  `plan` VARCHAR(45) NULL,
  `periodo` VARCHAR(45) NULL,
  `tipo_deducible` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
  /* CAMBIOS HECHOS LUNES 21-01-2019: Se agregó tabla bona_vi, se hicieron correcciones a tipos de datos */
  
  CREATE TABLE `bona_vi` (
  `id` INT NOT NULL  AUTO_INCREMENT,
  `periodo` INT(11) NULL DEFAULT NULL,
  `inter` INT(11) NULL DEFAULT NULL,
  `agent_id` INT(11) NULL DEFAULT NULL,
  `folio` INT(11) NULL,
  `nombre` VARCHAR(255) NULL,
  `zona` INT(11) NULL,
  `st` VARCHAR(10) NULL,
  `tipo_gte` INT(5) NULL DEFAULT NULL,
  `fec_conec` DATETIME NULL DEFAULT NULL,
  `generacion` VARCHAR(45) NULL DEFAULT NULL,
  `pafect1` decimal(20,3) NULL DEFAULT NULL,
  `pafect2` decimal(20,3) NULL DEFAULT NULL,
  `incre` decimal(20,3) NULL DEFAULT NULL,
  `pafect1_exc` decimal(20,3) NULL DEFAULT NULL,
  `pafect2_exc` decimal(20,3) NULL DEFAULT NULL,
  `prod_bono_1_ubi` decimal(20,3) NULL DEFAULT NULL,
  `prod_bono_1_pag` decimal(20,3) NULL DEFAULT NULL,
  `prod_bon_2_ubi` decimal(20,3) NULL DEFAULT NULL,
  `prod_bon_2_pag` decimal(20,3) NULL DEFAULT NULL,
  `negs_bono` INT(11) NULL DEFAULT NULL,
  `basea` decimal(20,3) NULL DEFAULT NULL,
  `pconreal` decimal(20,3) NULL DEFAULT NULL,
  `pconacot` decimal(20,3) NULL DEFAULT NULL,
  `npol_ca` INT(11) NULL DEFAULT NULL,
  `base_ca` decimal(20,3) NULL DEFAULT NULL,
  `npol_cp` INT(11) NULL DEFAULT NULL,
  `base_cp` decimal(20,3) NULL DEFAULT NULL,
  `npol_pp` INT(11) NULL DEFAULT NULL,
  `base_pp` decimal(20,3) NULL DEFAULT NULL,
  `npol_co` INT(11) NULL DEFAULT NULL,
  `base_co` decimal(20,3) NULL DEFAULT NULL,
  `npol_re` INT(11) NULL DEFAULT NULL,
  `base_re` decimal(20,3) NULL DEFAULT NULL,
  `col1` INT(11) NULL DEFAULT NULL,
  `renglon1` INT(11) NULL DEFAULT NULL,
  `porbono1` decimal(20,3) NULL DEFAULT NULL,
  `bono1` decimal(20,3) NULL DEFAULT NULL,
  `col2` INT(11) NULL DEFAULT NULL,
  `renglon2` INT(11) NULL DEFAULT NULL,
  `porbono2` decimal(20,3) NULL DEFAULT NULL,
  `bono2` decimal(20,3) NULL DEFAULT NULL,
  `bono_tot` decimal(20,3) NULL DEFAULT NULL,
  `ptos_tot` decimal(20,3) NULL DEFAULT NULL,
  `ptos_int_vi` decimal(20,3) NULL DEFAULT NULL,
  `tabla` INT(11) NULL DEFAULT NULL,
  `tipo_` INT(11) NULL DEFAULT NULL,
  `min_cons` INT(11) NULL DEFAULT NULL,
  `base_min_cero` INT(11) NULL DEFAULT NULL,
  `bon_cre` INT(11) NULL DEFAULT NULL,
  `bxacot` decimal(20,3) NULL DEFAULT NULL,
  `club_elite` INT(11) NULL DEFAULT NULL,
  `bono1_sa` decimal(20,3) NULL DEFAULT NULL,
  `ptos_sa` decimal(20,3) NULL DEFAULT NULL,
  `bono1_au` decimal(20,3) NULL DEFAULT NULL,
  `ptos_au` decimal(20,3) NULL DEFAULT NULL,
  `bono_tot_int` decimal(20,3) NULL DEFAULT NULL,
  `ptos_tot_int` decimal(20,3) NULL DEFAULT NULL,
  `porbono_int` decimal(20,3) NULL DEFAULT NULL,
  `bono_int` decimal(20,3) NULL DEFAULT NULL,
  `bono_constancia_negs` VARCHAR(45) NULL DEFAULT NULL,
  `congreso` VARCHAR(45) NULL DEFAULT NULL,
  `fec_act` DATETIME NULL DEFAULT NULL,
  `tipo_agrup` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`));
  
  -- Actualizacion 26/02/2019: Agregada Tabla bona_au --
  
 CREATE TABLE `bona_au` (
  `id` INT NOT NULL,
  `periodo` INT(11) NULL,
  `inter` INT(11) NULL,
  `agent_id` INT(11) NULL DEFAULT NULL,
  `folio` INT NULL,
  `nombre` VARCHAR(255) NULL,
  `zona` INT NULL,
  `estatus` VARCHAR(3) NULL,
  `generacion` VARCHAR(5) NULL,
  `pma_lp_nuevo` decimal(20,3) NULL,
  `pma_lp_renovado` decimal(20,3) NULL,
  `pma_mic_nuevo` decimal(20,3) NULL,
  `pma_mic_renovado` decimal(20,3) NULL,
  `pma_act_pymes` decimal(20,3) NULL,
  `pma_ant_pymes` decimal(20,3) NULL,
  `pma_incre_pymes` decimal(20,3) NULL,
  `por_incre_pymes` decimal(20,3) NULL,
  `pma_lp_nuevo_total` decimal(20,3) NULL,
  `pma_lp_renovado_total` decimal(20,3) NULL,
  `pma_retencion_02` decimal(20,3) NULL,
  `pma_retencion_03` decimal(20,3) NULL,
  `ptos` INT NULL,
  `renglon1` INT NULL,
  `porbono1` decimal(20,3) NULL,
  `bono1` decimal(20,3) NULL,
  `renglon_incre_pymes` decimal(20,3) NULL,
  `porbono_incre_pymes` decimal(20,3) NULL,
  `bono_reten_02` decimal(20,3) NULL,
  `bono_reten_03` decimal(20,3) NULL,
  `bono_retencion_total` decimal(20,3) NULL,
  `pma_ubi_bon_cartera` decimal(20,3) NULL,
  `pma_pag_bon_cartera` decimal(20,3) NULL,
  `emi_ant` INT NULL,
  `emi_act` INT NULL,
  `eficiencia` decimal(20,3) NULL,
  `renglon_cartera` INT NULL,
  `columna_cartera` INT NULL,
  `porbono_cartera` decimal(20,3) NULL,
  `bono_cartera` decimal(20,3) NULL,
  `renglon_vi` INT NULL,
  `pma_vi` decimal(20,3) NULL,
  `ptos_vi` INT NULL,
  `bono_vi` decimal(20,3) NULL,
  `renglon_sa` INT NULL,
  `pma_sa` decimal(20,3) NULL,
  `ptos_sa` INT NULL,
  `bono_sa` decimal(20,3) NULL,
  `porbono_integral` decimal(20,3) NULL,
  `bono_integral` decimal(20,3) NULL,
  `fec_act` INT NULL,
  `congreso` VARCHAR(45) NULL,
  `sgpo` INT NULL,
  PRIMARY KEY (`id`));
  
  /* Actualizacion 07/03/2019 - Nuevo Campo agregado a Bona */
  
  ALTER TABLE `bona_t` 
  ADD COLUMN `fec_corrida` VARCHAR(45) NULL DEFAULT NULL AFTER `congreso`;
  
  ALTER TABLE `bona_vi` 
  ADD COLUMN `fec_corrida` VARCHAR(45) NULL DEFAULT NULL AFTER `tipo_agrup`;
  ALTER TABLE `bona_sa` 
  ADD COLUMN `fec_corrida` VARCHAR(45) NULL DEFAULT NULL AFTER `por_conservacion`;

/* Actualizacion 27/03/2019 to 10/04/2019 - Nuevo Campo agregado a Bona_vi, Bona_T y Bong_SA */

  ALTER TABLE `bona_vi` 
  ADD COLUMN `puntos_desarrollo` INT NULL DEFAULT NULL AFTER `fec_corrida`;
  
  ALTER TABLE `bona_t` 
  ADD COLUMN `puntos_desarrollo` INT NULL DEFAULT NULL AFTER `fec_corrida`;

  ALTER TABLE `bong_sa` 
  ADD COLUMN `fecha_corrida` VARCHAR(45) NULL DEFAULT NULL AFTER `pma_nov_vida`;

CREATE TABLE `general_pays_agent_vi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ingresos_generales` decimal(20,3) DEFAULT NULL,
  `ingresos_nuevo` decimal(20,3) DEFAULT NULL,
  `ingresos_renov` decimal(20,3) DEFAULT NULL,
  `primas_ubicar` decimal(20,3) DEFAULT NULL,
  `primas_pagar` decimal(20,3) DEFAULT NULL,
  `negocios_pai` decimal(20,3) DEFAULT NULL,
  `ptos_standing` int(11) DEFAULT NULL,
  `congreso` varchar(255) DEFAULT NULL,
  `generation` varchar(255) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
PRIMARY KEY (`id`));

CREATE TABLE `general_pays_agent_gmm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ingresos_generales` decimal(20,3) DEFAULT NULL,
  `ingresos_nuevo` decimal(20,3) DEFAULT NULL,
  `ingresos_renov` decimal(20,3) DEFAULT NULL,
  `primas_ubicar` decimal(20,3) DEFAULT NULL,
  `primas_pagar` decimal(20,3) DEFAULT NULL,
  `numero_asegurados` decimal(20,3) DEFAULT NULL,
  `congreso` varchar(255) DEFAULT NULL,
  `generation` varchar(255) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
PRIMARY KEY (`id`));

CREATE TABLE `general_pays_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `vi_grl_income` decimal(20,3) DEFAULT NULL,
  `vi_new_income` decimal(20,3) DEFAULT NULL,
  `vi_ren_income` decimal(20,3) DEFAULT NULL,
  `vi_primas_ubi` decimal(20,3) DEFAULT NULL,
  `vi_primas_pag` decimal(20,3) DEFAULT NULL,
  `vi_ptos_stand` decimal(20,3) DEFAULT NULL,
  `vi_pai_buss` decimal(20,3) DEFAULT NULL,
  `vi_congreso` varchar(255) DEFAULT NULL,
  `gmm_grl_income` decimal(20,3) DEFAULT NULL,
  `gmm_new_income` decimal(20,3) DEFAULT NULL,
  `gmm_ren_income` decimal(20,3) DEFAULT NULL,
  `gmm_primas_ubi` decimal(20,3) DEFAULT NULL,
  `gmm_primas_pag` decimal(20,3) DEFAULT NULL,
  `gmm_num_buss` decimal(20,3) DEFAULT NULL,
  `gmm_congreso` varchar(255) DEFAULT NULL,
  `generation` varchar(255) DEFAULT NULL,
  `connection_date` date DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
PRIMARY KEY (`id`));



