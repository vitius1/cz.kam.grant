{if $customDataType}
  <div id="customData"></div>
  {*include custom data js file*}
  {assign var='cid' value=$cid|default:'false'}
  {literal}
  <script type="text/javascript">
    (function($) {
      CRM.buildCustomData = function (type, subType, subName, cgCount, groupID, isMultiple, onlySubtype, cid) {
        CRM.$(".faze-0").find(".custom_field-row").remove();
        CRM.$(".faze-1").find(".custom_field-row").remove();
        CRM.$(".faze-2").find(".custom_field-row").remove();
        CRM.$(".faze-3").find(".custom_field-row").remove();
        CRM.$(".faze-4").find(".custom_field-row").remove();
        CRM.$(".faze-5").find(".custom_field-row").remove();
        var dataUrl = CRM.url('civicrm/custom', {type: type}),
          prevCount = 1,
          fname = '#customData',
          storage = {};

        $('#customData').show();
  
        {/literal}
        {if $entityID}
          dataUrl += '&entityID=' + '{$entityID}';
        {/if}
        {if $qfKey}
          dataUrl += '&qf=' + '{$qfKey}';
        {/if}
        {if $action}
          dataUrl += '&action=' + '{$action}';
        {/if}
        {literal}
        if (cid) {
          dataUrl += '&cid=' + cid;
        }
  
        if (!cgCount) {
          cgCount = 1;
        }
        else if (cgCount >= 1) {
          prevCount = cgCount;
          cgCount++;
        }
  
        dataUrl += '&cgcount=' + cgCount;
  
        if (subName && subName != 'null') {
          fname += subName;
        }
  
        return CRM.loadPage(dataUrl, {target: fname}).on('crmLoad', function(event, data) {
          var classes = CRM.$(".custom-group-Grants_KAM").find(".form-layout-compressed").find("tbody").children('tr:first').attr("class");
          var pom = classes.split("-row")[1].split("_");
          var id=pom[pom.length-1];
            
            //faze1
            var popis = "custom_566_"+id;
            
            var popis_link = "custom_567_"+id;
            CRM.$("#"+popis_link).css("width", "600px");
            var oddeleni = "custom_572_"+id;
            var darce = "custom_125_"+id;
            var zprostredkovatel = "custom_552_"+id;
            var zpusob = "custom_571_"+id;
            var nazev = "custom_553_"+id;
            var datum_od = "custom_306_"+id;
            var datum_do = "custom_307_"+id;
            var datum_od_darce = "custom_568_"+id;
            var soubor1 = "custom_581_"+id;
            
            //faze2      
            var datum_schvaleni = "custom_556_"+id;
            var datum_odeslani = "custom_573_"+id;
            var poznamka = "custom_561_"+id;
            var castka = "custom_558_"+id;
            var mena = "custom_560_"+id;               
            
            //faze3
            var schvaleno = "custom_569_"+id;
            var poznamka_darce = "custom_570_"+id;
            
            //faze4
            var datum_smlouvy = "custom_559_"+id;
            var poznamka4 = "custom_575_"+id;
            var soubor2 = "custom_582_"+id;
            
            //faze5
            var zprava ="custom_502_"+id;
            var zprava_link="custom_503_"+id;
            CRM.$("#"+zprava_link).css("width", "600px");
            var castka_vyuzita ="custom_562_"+id;
            var castka_odlozena="custom_563_"+id;
            var castka_vraceni="custom_564_"+id;
            var datum_zpravy="custom_565_"+id;
            var datum_schv_zpravy="custom_574_"+id;
            var poznamka5 = "custom_577_"+id;
            var soubor3 = "custom_583_"+id;
            
            //faze1
            CRM.$(".crm-grant-form-block-status_id").after(CRM.$("."+nazev+"-row").get());
            CRM.$("#custom_553_"+id).after("<br><span class='description'>"+CRM.$("."+nazev+"-row-help-pre").find(".description").text()+"</span>");      
            CRM.$(".crm-grant-form-block-grant_type_id").after(CRM.$("."+zpusob+"-row").get());      
            CRM.$("#faze1").after(CRM.$("."+soubor1+"-row").get());  
            CRM.$("#"+soubor1).after("<br><span class='description'>"+CRM.$("."+soubor1+"-row-help-pre").find(".description").text()+"</span>");   
            CRM.$("#faze1").after(CRM.$("."+popis_link+"-row").get());      
            CRM.$("."+popis_link+"-row").find(".html-adjust").append('</br><a target="_blank" href="'+CRM.$("#"+popis_link).val()+'">'+CRM.$("#"+popis_link).val()+'</a>');                          
            CRM.$("#faze1").after(CRM.$("."+popis+"-row").get());
            CRM.$("#"+popis).after("<br><span class='description'>"+CRM.$("."+popis+"-row-help-pre").find(".description").text()+"</span>");  
            CRM.$("#faze1").after(CRM.$("."+zprostredkovatel+"-row").get());
            CRM.$("#"+zprostredkovatel).after("<br><span class='description'>"+CRM.$("."+zprostredkovatel+"-row-help-pre").find(".description").text()+"</span>");            
            CRM.$("#faze1").after(CRM.$("."+darce+"-row").get());
            CRM.$("#faze1").after(CRM.$("."+oddeleni+"-row").get());        
            CRM.$(".crm-grant-form-block-amount_total").after(CRM.$("."+datum_od_darce+"-row").get()); 
            CRM.$(".crm-grant-form-block-amount_total").after(CRM.$("."+datum_do+"-row").get()); 
            CRM.$(".crm-grant-form-block-amount_total").after(CRM.$("."+datum_od+"-row").get());  
            
            //faze2
            CRM.$("#faze2").after(CRM.$("."+castka+"-row").get());         
            CRM.$("#faze2").after(CRM.$("."+datum_schvaleni+"-row").get());  
            CRM.$(".crm-grant-form-block-amount_requested").after(CRM.$("."+datum_odeslani+"-row").get());  
            CRM.$("#"+datum_odeslani).after("<br><span class='description'>"+CRM.$("."+datum_odeslani+"-row-help-pre").find(".description").text()+"</span>");
            CRM.$(".crm-grant-form-block-amount_requested").after(CRM.$("."+poznamka+"-row").get());       
            CRM.$(".crm-grant-form-block-amount_requested").after(CRM.$("."+mena+"-row").get());        
            
            //faze3
            CRM.$(".crm-grant-form-block-decision_date").after(CRM.$("."+schvaleno+"-row").get());
            CRM.$(".crm-grant-form-block-amount_granted").after(CRM.$("."+poznamka_darce+"-row").get());            
            
            //faze4
            CRM.$("#faze4").after(CRM.$("."+soubor2+"-row").get());   
            CRM.$("#"+soubor2).after("<br><span class='description'>"+CRM.$("."+soubor2+"-row-help-pre").find(".description").text()+"</span>");   
            CRM.$("#faze4").after(CRM.$("."+datum_smlouvy+"-row").get()); 
            CRM.$(".crm-grant-form-block-grant_due_date").after(CRM.$("."+poznamka4+"-row").get());      
            
            //faze5  
            CRM.$("#faze6").after(CRM.$("."+poznamka5+"-row").get()); 
            CRM.$("#faze6").after(CRM.$("."+datum_zpravy+"-row").get()); 
            CRM.$("#"+datum_zpravy).after("<br><span class='description'>"+CRM.$("."+datum_zpravy+"-row-help-pre").find(".description").text()+"</span>");            
            
            CRM.$("#faze6").after(CRM.$("."+castka_vraceni+"-row").get()); 
            CRM.$("#faze6").after(CRM.$("."+castka_odlozena+"-row").get()); 
            CRM.$("#faze6").after(CRM.$("."+castka_vyuzita+"-row").get());           
            CRM.$("#faze6").after(CRM.$("."+soubor3+"-row").get());   
            CRM.$("#"+soubor3).after("<br><span class='description'>"+CRM.$("."+soubor3+"-row-help-pre").find(".description").text()+"</span>");
            CRM.$("#faze6").after(CRM.$("."+zprava_link+"-row").get()); 
            CRM.$("."+zprava_link+"-row").find(".html-adjust").append('</br><a target="_blank" href="'+CRM.$("#"+zprava_link).val()+'">'+CRM.$("#"+zprava_link).val()+'</a>');    
            CRM.$("#faze6").after(CRM.$("."+zprava+"-row").get()); 
            CRM.$("#"+zprava).after("<br><span class='description'>"+CRM.$("."+zprava+"-row-help-pre").find(".description").text()+"</span>");
            CRM.$("#faze6").after(CRM.$("."+datum_schv_zpravy+"-row").get()); 
            CRM.$("#"+datum_schv_zpravy).after("<br><span class='description'>"+CRM.$("."+datum_schv_zpravy+"-row-help-pre").find(".description").text()+"</span>");
            
            

            CRM.$("#"+datum_od).crmDatepicker({time: false, date: 'dd-mm-yy'});
            CRM.$("#"+datum_do).crmDatepicker({time: false, date: 'dd-mm-yy'});
            CRM.$("#"+schvaleno).crmDatepicker({time: false, date: 'dd-mm-yy'});
            CRM.$("#"+datum_schvaleni).crmDatepicker({time: false, date: 'dd-mm-yy'});
            CRM.$("#"+datum_zpravy).crmDatepicker({time: false, date: 'dd-mm-yy'});
            CRM.$("#"+datum_od_darce).crmDatepicker({time: false, date: 'dd-mm-yy'});
            CRM.$("#"+datum_odeslani).crmDatepicker({time: false, date: 'dd-mm-yy'});
            CRM.$("#"+datum_schv_zpravy).crmDatepicker({time: false, date: 'dd-mm-yy'});
            CRM.$("#"+datum_smlouvy).crmDatepicker({time: false, date: 'dd-mm-yy'});
            
            var value=CRM.$("#amount_total").val().replace("00\xa0Kč", "").replace(/\s/g, "");
            CRM.$("#amount_total").val(value);
            value=CRM.$("#amount_requested").val().replace("00\xa0Kč", "").replace(/\s/g, "");
            CRM.$("#amount_requested").val(value);
            value=CRM.$("#amount_granted").val().replace("00\xa0Kč", "").replace(/\s/g, "");
            CRM.$("#amount_granted").val(value);

          
            
          CRM.$("#customData").hide();
          CRM.$(".crm-grant-form-block-attachment").hide();
          CRM.$(".faze-1-table, .faze-2-table, .faze-3-table, .faze-4-table, .faze-5-table").hide();
          
          var faze;
          //faze1
          if (CRM.$("#status_id").val()==8) {
            CRM.$("#progress-1").addClass("done"); 
            CRM.$("#progress-2").addClass("current");   
            faze=".faze-2";
          //faze2
          } else if(CRM.$("#status_id").val()==9) {
            faze=".faze-3";
            CRM.$("#progress-1, #progress-2").addClass("done");     
            CRM.$("#progress-3").addClass("current");         
          //faze3a
          } else if(CRM.$("#status_id").val()==10) {
            faze=".faze-4";
            CRM.$("#progress-1, #progress-2, #progress-3").addClass("done");     
            CRM.$("#progress-4").addClass("current");        
          //faze3b    
          } else if(CRM.$("#status_id").val()==11) {
            faze=".faze-3";
            CRM.$("#progress-1, #progress-2, #progress-3").addClass("done");        
          //faze4 
          } else if(CRM.$("#status_id").val()==12) {
            faze=".faze-5";
            CRM.$("#progress-1,#progress-2, #progress-3, #progress-4").addClass("done");     
            CRM.$("#progress-5").addClass("current");      
          //faze5    
          } else if(CRM.$("#status_id").val()==13) {

            faze=".faze-5";   
            CRM.$("#progress-1, #progress-2, #progress-3, #progress-4, #progress-5").addClass("done");          
          } else {
            CRM.$(".faze-2, .faze-3, .faze-4, .faze-5").hide();
            CRM.$("#progress-1").addClass("current");   
            CRM.$(".faze-1").show();
            CRM.$("#status_id").val(8); 
            faze=".faze-1";
          }
          
          CRM.$(faze+"-table").show();
          CRM.$(faze).removeClass("collapsed");
          $("#customData").find(".custom_field-help-pre-row").remove();

        
        });
      };
    })(CRM.$);
    
    CRM.$(function($) {
      {/literal}
      {if $customDataSubType}
        CRM.buildCustomData('{$customDataType}', {$customDataSubType}, false, false, false, false, false, {$cid});
      {else}
        CRM.buildCustomData('{$customDataType}', false, false, false, false, false, false, {$cid});
      {/if}
      {literal}
    });
  </script>
  {/literal}
{/if}
