provider "mongodbatlas" {
  public_key = "${var.MONGODB_ATLAS_PUBLIC_KEY}"
  private_key  = "${var.MONGODB_ATLAS_PRIVATE_KEY}
}

resource "mongodbatlas_project_ip_whitelist" "test" {
    project_id = "5e0f2eabc56c98607861b421"
    whitelist {
      cidr_block = "1.2.3.4/32"
      comment    = "cidr block for tf acc testing"
    }
    whitelist {
      ip_address = "2.3.4.5"
      comment    = "ip address for tf acc testing"
    }
    whitelist {
      cidr_block = "3.4.5.6/32"
      comment    = "cidr block for tf acc testing"
    }
    whitelist {
      ip_address = "4.5.6.7"
      comment    = "ip address for tf acc testing"
    }
}
