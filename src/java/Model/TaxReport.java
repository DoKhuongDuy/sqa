/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class TaxReport {
    private int id;
//    private int taxpayerId;
    private TaxPayer taxPayer;
//    private int  taxdetailId;
    private TaxDetail taxDetail;
    private String taxType;
    private float income;
    private Date date;
    private String status;
    private ArrayList<Reduce> listReduce;
}
