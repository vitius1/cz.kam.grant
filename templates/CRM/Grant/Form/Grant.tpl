{*
 +--------------------------------------------------------------------+
 | Copyright CiviCRM LLC. All rights reserved.                        |
 |                                                                    |
 | This work is published under the GNU AGPLv3 license with some      |
 | permitted exceptions and without any warranty. For full license    |
 | and copyright information, see https://civicrm.org/licensing       |
 +--------------------------------------------------------------------+
*}
{* this template is used for adding/editing/deleting grant *}


<div class="crm-block crm-form-block crm-grant-form-block">
  
  <style>
  {literal}
  /* jQuery Demo */
  
  .clearfix:after {
    clear: both;
    content: "";
    display: block;
    height: 0;
  }
  
  /* Responsive Arrow Progress Bar */
  
  .container1 {
    font-family: 'Lato', sans-serif;
  }
  
  .arrow-steps .step {
    font-size: 14px;
    text-align: center;
    color: #777;
    cursor: default;
    margin: 0 1px 0 0;
    padding: 10px 0px 10px 0px;
    width: 19.5%;
    float: left;
    position: relative;
    background-color: #ddd;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }
  
  .arrow-steps .step a {
    color: #777;
    text-decoration: none;
  }
  
  .arrow-steps .step:after,
  .arrow-steps .step:before {
    content: "";
    position: absolute;
    top: 0;
    right: -17px;
    width: 0;
    height: 0;
    border-top: 19px solid transparent;
    border-bottom: 17px solid transparent;
    border-left: 17px solid #ddd;
    z-index: 2;
  }
  
  .arrow-steps .step:before {
    right: auto;
    left: 0;
    border-left: 17px solid #fff;
    z-index: 0;
  }
  
  .arrow-steps .step:first-child:before {
    border: none;
  }
  
  .arrow-steps .step:last-child:after {
    // border: none;
  }
  
  .arrow-steps .step:first-child {
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px;
  }
  
  .arrow-steps .step:last-child {
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
  }
  
  .arrow-steps .step span {
    position: relative;
  }
  
  *.arrow-steps .step.done span:before {
    opacity: 1;
    content: "";
    position: absolute;
    top: -2px;
    left: -10px;
    font-size: 11px;
    line-height: 21px;
  }
  
  .arrow-steps .step.current {
    color: #fff;
    background-color: #5599e5;
  }
  
  .arrow-steps .step.current a {
    color: #fff;
    text-decoration: none;
  }
  
  .arrow-steps .step.current:after {
    border-left: 17px solid #5599e5;
  }
  
  .arrow-steps .step.done {
    color: white;
    background-color: #2f69aa;
  }
  
  .arrow-steps .step.done a {
    color: white;
    text-decoration: none;
  }
  
  .arrow-steps .step.done:after {
    border-left: 17px solid #2f69aa;
  }
  
  .html-adjust {
    vertical-align: bottom !important;
  }
  {/literal}
  </style>

  
  <div class="container1" style="padding-top: 30px; margin: 2%;">
    <!-- Responsive Arrow Progress Bar -->
    <div class="arrow-steps clearfix">
      <div id="progress-1" class="step"> <span> <a href="#" >1. N??vrh</a></span> </div>
      <div id="progress-2" class="step"> <span><a href="#" >2. KAM schv??l a Odesl.</a></span> </div>
      <div id="progress-3" class="step"> <span><a href="#" >3. Rozh. d??rce</a><span> </div>
      <div id="progress-4" class="step"> <span><a href="#" >4. Dar. sml. a p??esun pen??z</a><span> </div>
      <div id="progress-5" class="step"> <span><a href="#" >5. Report. a vy????t.</a><span> </div>
    </div>

  </div>

{if $action eq 8}
     <div class="messages status">
         <p>{icon icon="fa-info-circle"}{/icon}
         {ts}Are you sure you want to delete this Grant?{/ts} {ts}This action cannot be undone.{/ts}</p>
         <p>{include file="CRM/Grant/Form/Task.tpl"}</p>
     </div>
{elseif $action eq 1}
<div class="crm-submit-buttons">{include file="CRM/common/formButtons.tpl" location="top"}</div>
<div class="popis help">Zde m????ete zadat grantovou ????dost, to jest ????dost o podporu na projekty/programy, obvykle ve v????i od 50 tis??c K??. 
  Finan??n?? ????stky jsou v CZK, pokud nen?? uvedeno jinak.
  ????dost d??le bude intern?? projedn??na veden??m KAM. Pot?? bude ve spolupr??ci s v??mi odesl??na d??rci. V p????pad?? pot??eby kontaktujte M????u T.</div>
<div class="custom-group faze-1 crm-accordion-wrapper crm-custom-accordion">
  <div class="crm-accordion-header">F??ze 1: N??vrh</div>
 <table class="form-layout-compressed">
   <!--typ-->
   <tr class="field-row crm-grant-form-block-grant_type_id hidden">
      <td class="label"><label>Typ grantu</label></td>
      <td>{$form.grant_type_id.html}</td>
   </tr>
   <!--stav, musi byt 1-->
 <tr class="field-row crm-grant-form-block-status_id hidden">
    <td class="label">{$form.status_id.label}</td>
    <td>{$form.status_id.html}</td>
 </tr>
   <!--nazev zadosti-->
   <!--zadatel-->
   <tr class="field-row crm-grant-form-block-contact_id">
     <td class="label">{$form.contact_id.label}</td>
     <td>{$form.contact_id.html}
     <br><span class="description">inici??tor ??? pracovn??k KAM, kter?? ????dost o grant vypl??uje</span>
     </td>
   </tr>
   <tr id="faze1"></tr>
 <!--kam dpt-->
 <!--darce-->
 <!--darce fund-->
 <!--popis-->
 <!--castka V CZK-->
 <tr class="field-row crm-grant-form-block-amount_total">
    <td class="label"><label>Po??adovan?? ????stka</label></td>
    <td>{$form.amount_total.html}
    <br><span class="description">Uve??te v CZK</span>
    </td>
 </tr>
</table>
</div>

<div class="custom-group faze-2 crm-accordion-wrapper crm-custom-accordion collapsed hidden">
 <div class="crm-accordion-header">F??ze 2: KAM intern?? schv??len?? a Odesl??n?? ????dosti</div>
 <table class="form-layout-compressed ostatni-faze">
   <tr id="faze2"></tr>
  <!--datum-->
  <!--pozn??mka-->
  <!--Po??adovan?? ????stka po int. schv??len??-->
  <!--castka original-->
  <tr class="crm-grant-form-block-amount_requested">
     <td class="label"><label>Po??adovan?? ????stka v ciz?? m??n??</label></td>
     <td>{$form.amount_requested.html}<br /><span class="description">{ts}Amount requested for grant in original currency (if different).{/ts}</span></td>
  </tr>
</table>
</div>

<div class="custom-group faze-3 crm-accordion-wrapper crm-custom-accordion collapsed hidden">
<div class="crm-accordion-header">F??ze 3: Rozhodnut?? d??rce</div>
<table class="form-layout-compressed ostatni-faze">
  <!--mena-->
  <!--Rozhodnut?? o grantu-->
  <tr class="crm-grant-form-block-decision_date">
     <td class="label">{$form.decision_date.label}</td>
     <td>
       {$form.decision_date.html}<br />
       <span class="description">{ts}Date on which the grant decision was finalized.{/ts}</span>
     </td>
  </tr>
  <!--P??id??len?? ????stka-->
  <tr class="crm-grant-form-block-amount_granted">
     <td class="label">{$form.amount_granted.label}</td>
     <td>{$form.amount_granted.html}</td>
  </tr>
</table>
</div>

<div class="custom-group faze-4 crm-accordion-wrapper crm-custom-accordion collapsed hidden">
<div class="crm-accordion-header">F??ze 4: Darovac?? smlouva a p??esun pen??z</div>
<table class="form-layout-compressed ostatni-faze">
  <tr id="faze4" class="field-row"></tr>
  <!--Datum darovaci smlouvy-->
  <!--Pen??ze p??esunuty-->
  <tr class="field-row crm-grant-form-block-money_transfer_date">
    <td class="label">{$form.money_transfer_date.label}</td>
    <td>
      {$form.money_transfer_date.html}<br />
      <span class="description">{ts}Date on which the grant money was transferred.{/ts}</span>
    </td>
  </tr>
  <!--Term??n reportu-->
  <tr class="field-row crm-grant-form-block-grant_due_date">
    <td class="label"><label>Term??n reportu</label></td>
    <td>{$form.grant_due_date.html}</td>
  </tr>
</table>
</div>

<div class="custom-group faze-5 crm-accordion-wrapper crm-custom-accordion collapsed hidden">
<div class="crm-accordion-header">F??ze 5: Reportov??no a vy????tov??no</div>
<table class="form-layout-compressed ostatni-faze">


  <tr id="faze6" class="field-row"></tr>
  <!--Zpr??va o vyu??it?? grantu-->
  <!--Zpr??va o vyu??it?? grantu link-->
  <!--????stka vyu??it???-->
</table>
</div>


  


{include file="CRM/Grant/Form/customDataBlock.tpl"}

<div class="crm-grant-form-block-attachment">
  {include file="CRM/Form/attachment.tpl"}
</div>

{literal}
<script type="text/javascript">  
  CRM.$("#grant_type_id").val(8);
</script>
{/literal}

{else}
  
  <div class="crm-submit-buttons">{include file="CRM/common/formButtons.tpl" location="top"}</div>
  <div class="popis help">Zde m????ete zadat grantovou ????dost, to jest ????dost o podporu na projekty/programy, obvykle ve v????i od 50 tis??c K??. 
    ????dost d??le bude intern?? projedn??na veden??m KAM. Pot?? bude ve spolupr??ci s v??mi odesl??na d??rci. V p????pad?? pot??eby kontaktujte M????u T.</div>
    <table class="faze-0 form-layout-compressed">
      <!--stav, musi byt 1-->
    <tr class="field-row crm-grant-form-block-status_id">
       <td class="label">{$form.status_id.label}</td>
       <td>{$form.status_id.html}</td>
    </tr>
    <!--nazev zadosti-->
    <!--zadatel-->
    <tr class="field-row crm-grant-form-block-contact_id">
      <td class="label">{$form.contact_id.label}</td>
      <td>{$form.contact_id.html}
      <br><span class="description">inici??tor ??? pracovn??k KAM, kter?? ????dost o grant vypl??uje</span>
      </td>
    </tr>
    </table>
  <div class="custom-group faze-1 crm-accordion-wrapper crm-custom-accordion collapsed">
    <div class="crm-accordion-header">F??ze 1: N??vrh</div>
   <table class="form-layout-compressed faze-1-table">
     <!--typ-->
     <tr class="field-row crm-grant-form-block-grant_type_id hidden">
        <td class="label"><label>Typ grantu</label></td>
        <td>{$form.grant_type_id.html}</td>
     </tr>
     <tr id="faze1"></tr>
     
   <!--kam dpt-->
   <!--darce-->
   <!--darce fund-->
   <!--popis-->
   <!--castka V CZK-->
   <tr class="field-row crm-grant-form-block-amount_total">
      <td class="label"><label>Po??adovan?? ????stka</label></td>
      <td>{$form.amount_total.html}</td>
   </tr>
 </table>
</div>

 <div class="custom-group faze-2 crm-accordion-wrapper crm-custom-accordion collapsed">
   <div class="crm-accordion-header">F??ze 2: KAM intern?? schv??len?? a Odesl??n?? ????dosti</div>
   <table class="form-layout-compressed faze-2-table">
     <tr id="faze2"></tr>
    <!--datum-->
    <!--pozn??mka-->
    <!--Po??adovan?? ????stka po int. schv??len??-->
    <!--castka original-->
    <tr class="crm-grant-form-block-amount_requested">
       <td class="label"><label>Po??adovan?? ????stka v ciz?? m??n??</label></td>
       <td>{$form.amount_requested.html}<br /><span class="description">{ts}Amount requested for grant in original currency (if different).{/ts}</span></td>
    </tr>
  </table>
</div>

<div class="custom-group faze-3 crm-accordion-wrapper crm-custom-accordion collapsed">
  <div class="crm-accordion-header">F??ze 3: Rozhodnut?? d??rce</div>
  <table class="form-layout-compressed faze-3-table">
    <!--mena-->
    <!--Rozhodnut?? o grantu-->
    <tr class="crm-grant-form-block-decision_date">
       <td class="label">{$form.decision_date.label}</td>
       <td>
         {$form.decision_date.html}<br />
         <span class="description">{ts}Date on which the grant decision was finalized.{/ts}</span>
       </td>
    </tr>
    <!--P??id??len?? ????stka-->
    <tr class="crm-grant-form-block-amount_granted">
       <td class="label">{$form.amount_granted.label}</td>
       <td>{$form.amount_granted.html}</td>
    </tr>
  </table>
</div>

<div class="custom-group faze-4 crm-accordion-wrapper crm-custom-accordion collapsed">
  <div class="crm-accordion-header">F??ze 4: Darovac?? smlouva a p??esun pen??z</div>
  <table class="form-layout-compressed faze-4-table">
    <tr id="faze4" class="field-row"></tr>
    <!--Datum darovaci smlouvy-->
    <!--Pen??ze p??esunuty-->
    <tr class="field-row crm-grant-form-block-money_transfer_date">
      <td class="label">{$form.money_transfer_date.label}</td>
      <td>
        {$form.money_transfer_date.html}<br />
        <span class="description">{ts}Date on which the grant money was transferred.{/ts}</span>
      </td>
    </tr>
    <!--Term??n reportu-->
    <tr class="field-row crm-grant-form-block-grant_due_date">
      <td class="label"><label>Term??n reportu</label></td>
      <td>{$form.grant_due_date.html}</td>
    </tr>
  </table>
</div>

<div class="custom-group faze-5 crm-accordion-wrapper crm-custom-accordion collapsed">
  <div class="crm-accordion-header">F??ze 5: Reportov??no a vy????tov??no</div>
  <table class="form-layout-compressed faze-5-table">
  

    <tr id="faze6" class="field-row"></tr>
    <!--Zpr??va o vyu??it?? grantu-->
    <!--Zpr??va o vyu??it?? grantu link-->
    <!--????stka vyu??it???-->
  </table>
</div>



  {include file="CRM/Grant/Form/customDataBlock.tpl"}

  <div class="crm-grant-form-block-attachment">
    {include file="CRM/Form/attachment.tpl"}
  </div>

{/if}
   
   
   
 <div class="crm-submit-buttons">{include file="CRM/common/formButtons.tpl" location="bottom"}</div>
</div>
