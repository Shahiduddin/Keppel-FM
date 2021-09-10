<?php $__env->startSection('panel'); ?>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <form action="<?php echo e(route('admin.email.template.setting')); ?>" method="POST">
                    <?php echo csrf_field(); ?>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label class="mb-4"><?php echo app('translator')->get('Email Send Method'); ?></label>
                                <select name="email_method" class="form-control" >
                                    <option value="php" <?php if($general_setting->mail_config->name == 'php'): ?> selected <?php endif; ?>><?php echo app('translator')->get('PHP Mail'); ?></option>
                                    <option value="smtp" <?php if($general_setting->mail_config->name == 'smtp'): ?> selected <?php endif; ?>><?php echo app('translator')->get('SMTP'); ?></option>
                                    <option value="sendgrid" <?php if($general_setting->mail_config->name == 'sendgrid'): ?> selected <?php endif; ?>><?php echo app('translator')->get('SendGrid API'); ?></option>
                                    <option value="mailjet" <?php if($general_setting->mail_config->name == 'mailjet'): ?> selected <?php endif; ?>><?php echo app('translator')->get('Mailjet API'); ?></option>
                                </select>
                            </div>
                            <div class="form-group col-md-6 text-right">
                                <h6 class="mb-4">&nbsp;</h6>
                                <button type="button" data-target="#testMailModal" data-toggle="modal" class="btn btn--info"><?php echo app('translator')->get('Send Test Mail'); ?></button>
                            </div>
                        </div>
                        <div class="form-row mt-4 d-none configForm" id="smtp">
                            <div class="col-md-12">
                                <h6 class="mb-2"><?php echo app('translator')->get('SMTP Configuration'); ?></h6>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="font-weight-bold"><?php echo app('translator')->get('Host'); ?> <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="e.g. <?php echo app('translator')->get('smtp.googlemail.com'); ?>" name="host" value="<?php echo e($general_setting->mail_config->host ?? ''); ?>"/>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="font-weight-bold"><?php echo app('translator')->get('Port'); ?> <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="<?php echo app('translator')->get('Available port'); ?>" name="port" value="<?php echo e($general_setting->mail_config->port ?? ''); ?>"/>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="font-weight-bold"><?php echo app('translator')->get('Encryption'); ?></label>
                                <select class="form-control" name="enc">
                                    <option value="ssl"><?php echo app('translator')->get('SSL'); ?></option>
                                    <option value="tls"><?php echo app('translator')->get('TLS'); ?></option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold"><?php echo app('translator')->get('Username'); ?> <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="<?php echo app('translator')->get('Normally your email'); ?> address" name="username" value="<?php echo e($general_setting->mail_config->username ?? ''); ?>"/>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold"><?php echo app('translator')->get('Password'); ?> <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="<?php echo app('translator')->get('Normally your email password'); ?>" name="password" value="<?php echo e($general_setting->mail_config->password ?? ''); ?>"/>
                            </div>
                        </div>
                        <div class="form-row mt-4 d-none configForm" id="sendgrid">
                            <div class="col-md-12">
                                <h6 class="mb-2"><?php echo app('translator')->get('SendGrid API Configuration'); ?></h6>
                            </div>
                            <div class="form-group col-md-12">
                                <label><?php echo app('translator')->get('APP KEY'); ?> <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="<?php echo app('translator')->get('SendGrid app key'); ?>" name="appkey" value="<?php echo e($general_setting->mail_config->appkey ?? ''); ?>"/>
                            </div>
                        </div>
                        <div class="form-row mt-4 d-none configForm" id="mailjet">
                            <div class="col-md-12">
                                <h6 class="mb-2"><?php echo app('translator')->get('Mailjet API Configuration'); ?></h6>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold"><?php echo app('translator')->get('API PUBLIC KEY'); ?> <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="<?php echo app('translator')->get('Mailjet API PUBLIC KEY'); ?>" name="public_key" value="<?php echo e($general_setting->mail_config->public_key ?? ''); ?>"/>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold"><?php echo app('translator')->get('API SECRET KEY'); ?> <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="<?php echo app('translator')->get('Mailjet API SECRET KEY'); ?>" name="secret_key" value="<?php echo e($general_setting->mail_config->secret_key ?? ''); ?>"/>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <button type="submit" class="btn btn-block btn--primary mr-2"><?php echo app('translator')->get('Update'); ?></button>
                    </div>
                </form>
            </div><!-- card end -->
        </div>


    </div>


    
    <div id="testMailModal" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><?php echo app('translator')->get('Test Mail Setup'); ?></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="<?php echo e(route('admin.email.template.sendTestMail')); ?>" method="POST">
                    <?php echo csrf_field(); ?>
                    <input type="hidden" name="id">
                    <div class="modal-body">
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label><?php echo app('translator')->get('Sent to'); ?> <span class="text-danger">*</span></label>
                                <input type="text" name="email" class="form-control" placeholder="<?php echo app('translator')->get('Email Address'); ?>">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn--dark" data-dismiss="modal"><?php echo app('translator')->get('Close'); ?></button>
                        <button type="submit" class="btn btn--success"><?php echo app('translator')->get('Send'); ?></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>


<?php $__env->startPush('script'); ?>
    <script>
        $(function () {
            "use strict";
            $('select[name=email_method]').on('change', function() {
                var method = $(this).val();
                $('.configForm').addClass('d-none');
                if(method != 'php') {
                    $(`#${method}`).removeClass('d-none');
                }
            }).change();

        });

    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Xampp\htdocs\keppelfm\core\resources\views/admin/email_template/email_setting.blade.php ENDPATH**/ ?>