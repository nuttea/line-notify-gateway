package org.horiga.linenotifygateway.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ServiceEntity {
    private String service;
    private String type;
    private String messageTemplateGroupId;
    private String description;
}
