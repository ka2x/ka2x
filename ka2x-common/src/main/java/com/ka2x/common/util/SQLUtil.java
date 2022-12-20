package com.ka2x.common.util;

import javax.xml.stream.events.Characters;
import java.util.Arrays;

/**
 * <p>
 * detail: 生成SQL或SQL转
 * </p>
 *
 * @author 吴泽欣
 * @since 2022/9/5 9:19
 **/
public class SQLUtil {
//    public static String oracleToMySQL(String oracle){
//
//    }

    public static void main(String[] args) {
//        String path = "C:\\Users\\dsl\\IdeaProjects\\ka2x\\ka2x-common\\src\\main\\resources\\" + "sql" + PathUtil.PATH_SPLIT + "oracleTable.sql";
//        String text = FileUtil.readTextFile(path);
        String str = "RSADTLID, RSAID, PLACEPOINTID, COUNTERID, CLERKERID, GOODSID, TAXRATE, PRICEID, UNITPRICE, TOTAL_LINE, USEPRICE, REALMONEY, RESAPRICE, GOODSQTY, GOODSUNIT, PRESCRIBEFLAG, PRESCRIPTIONDTLID, COMBINESOURCEID, PRESENTFLAG, BREAKSALES, ORRSADTLID, USESTATUS, STORAGEID, GOODSDTLID, BATCHID, POSID, LOTID, GOODSSTATUSID, MANUALRATE, MANUALMONEY, MANUALPREMONEY, MARKETRATE, MARKETMONEY, MARKETPREMONEY, MAINMANUALMONEY, MAINMANUALPREMONEY, MAINMARKETMONEY, MAINMARKETPREMONEY, PARENTRSADTLID, SHOPPEFLAG, COMBINEGOODSQTY, REDUCEDPRICE, REDUCEDMONEY, COMBPREMONEY, COMBPRICE, RECIPEFLAG, RECIPENO, RECIPTDATE, RECIPEHOSPITAL, RECIPEDOCTOR, SKCERTID, MEMO, ZXCOLUMN1, ZXCOLUMN2, ZXCOLUMN3, ZXCOLUMN4, ZXCOLUMN5, COSTINGPRICE, COSTINGMONEY, NOPROMFLAG, GROUPREQDTLID, MAININTEGPREMONEY, MAINVOUCHPREMONEY, INSPOINTSFLAG, INSDISCFLAG, NOUSEVOUFLAG, ISLIMIT, DTLINTEGRAL, EXAMPRICE, ACCFLAG, ECODES, PEIFANGMANID, SHENFANGMANID, IGNOREMONEY, GOODSNO, LOTNO, ALLOCATIONMON, SINGLEFLAG, SERIESFLAG, ENTIREFLAG, SINGLE, SERIES, ENTIRE, PROMSALESID, LARGESHOPPINGFLAG, NOSINGLEPROMFLAG, CHUFANGDTLID, CLEARANCEFLAG, SETMARKETMONEY, SETMARKETPREMONEY, ZX_REALMONEY, VARIETYID, XQTSDAYS, PUSH_CLASS, IS_SALE_PRICE, RECEIPTPRIALONE, ZX_SJEXPORTXMLFLAG, YBCODE, ACTIVITYMONEY, ACTIVITYFLAG, ZX_PROVINCECOLLFLAG, IS_MI, MI_CLASS, REDUCEDPRICEMEMO, CNAME, IDCODE, TELEPHONE, OTHERID, RECIPMEMO, AGE, SEX, ZXPRICE, ZXMONEY, COSTPRICE, DHID, DHINTEGRAL, DHMOENY, RULECODE, VOUCHERCODE, VOUCHERMONEY, VOUCHERSUBTYPE, SERIESMONEY, GROUPMONEY, ALLMONEY, NOMONEY, LEVELMONEY, NOLEVELMONEY, SETNO, DHQTY, JT_AMT, SZYBTRANSFLAG, BREAKDTLID, SURPLUS_NUMBER, SALE_NUMBER, PRICE07, EXEC_PRICE, PROM_FLAG, ZZ_PRICE, RSAFLAG, LOW_PRICE, UNIT_PRICE, ROYALTY_RATE, ZZHY_ZK, PROMORDERDTLID, USEPRICE2, REALMONEY2, ZX_YLZD, SID, SPLITORIRSADTLID, ISZPHG, ZPHGSID, RULEID, RULEDTLID, RULETYPE, BELONGGOODSNO, GIFTGROUPIDS, GOODSTOPRESENTFLAG, PROMORDERID, UNITPRICE_BAK, USEPRICE_BAK, ZY_ADDPRICE_RATE, SUPPER_VIP_EXCLUSIVE, SUPPER_VIP_COUPON, PROMOTERNO, KH04_AKC515, KH04_AKC516, KH02_AKA072, KH02_CKC402, MEMBERSHIPMONEY, MEMBERSHIPMONEY2, VIPPRICE, EPHEDRINE, PRE_REALMONEY, PRE_SHAREPRICE, XQPRICE, SYS_MODIFYDATE, ORDERDTLID, ISPRE, PREDATE, THEMEID, REDUCED_TYPE, ZX_TOGBYBDATE";
        String[] split = str.split(",");
        for (int i = 0; i < split.length; i++) {
            char[] array = split[i].trim().toLowerCase().toCharArray();
            for (int j = 0; j < array.length; j++) {
                if (array[j] == '_') {
                    array[j + 1] = Character.toUpperCase(array[j + 1]);
                }
            }
            StringBuilder result = new StringBuilder();
            for (char c : array) {
                if(c != '_'){
                    result.append(c);
                }
            }
            System.out.print("#{item." + result.toString() + "},");
            if (i % 5 == 4) {
                System.out.println();
            }
        }
    }
}
