<?php if (count($currencies) > 1) { ?>
<div class="pull-left">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-currency">
  <div class="btn-group">
    <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
    <span><?php echo $text_currency; ?>: </span>
    
    <span>
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] == $code) { ?>
      <?php echo $currency['title']; ?>
    <?php } ?>
    <?php } ?>
    </span>
    <i class="fa fa-caret-down"></i></button>
    <ul class="dropdown-menu">
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li><button class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></button></li>
      <?php } else { ?>
      <li><button class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></button></li>
      <?php } ?>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>
