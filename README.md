# module-made-simple-null

### How to use

```
git clone https://github.com/ion-training/module-made-simple-null.git
```

```
cd module-made-simple-null
```

Initialize the directory so that terraform core will download necessary modules.
```
terraform init
```

For brevity -auto-approve option was used. Consider using plan then apply process.
```
terraform apply -auto-approve
```

### About modules
Working relative paths from the current directory are (do not use `..`):

```
dir1
dir1/file11
dir1/dir2
dir1/dir2/file21
dir1/dir3
dir1/dir3/file31
```

To have code that consumes modules there are multiple options:

- Put code and modules in the current directory
- Use private module registry
- Use the module directly from Git


### Sample output

```
$ terraform apply -auto-approve

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.module_from_null.null_resource.null_resource will be created
  + resource "null_resource" "null_resource" {
      + id = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.
module.module_from_null.null_resource.null_resource: Creating...
module.module_from_null.null_resource.null_resource: Provisioning with 'local-exec'...
module.module_from_null.null_resource.null_resource (local-exec): Executing: ["/bin/sh" "-c" "echo hello from null module resource"]
module.module_from_null.null_resource.null_resource (local-exec): hello from null module resource
module.module_from_null.null_resource.null_resource: Creation complete after 0s [id=5514580946310702305]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
$ 
```