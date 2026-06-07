	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[20:21], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s20, 15
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s21, 0xff
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 28
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_lshr_b32 s7, s7, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s24, s4, 4
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s16, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s25, s16, s24
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s25
	s_cbranch_scc1 .LBB0_39
; %bb.1:                                ; %.lr.ph5
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b64 s[22:23], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 208 24 is_stmt 1              ; generate_amdgcn.py:208:24
	s_lshl_b32 s26, s16, 2
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_and_b32_e32 v1, 0xf0, v0
	v_and_b32_e32 v7, 7, v0
	v_bfe_i32 v8, v0, 3, 1
	v_lshrrev_b32_e32 v2, 4, v0
	v_lshlrev_b32_e32 v5, 1, v0
	v_lshlrev_b32_e32 v21, 1, v1
	v_lshlrev_b32_e32 v6, 5, v0
	v_and_b32_e32 v8, 0x2040, v8
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_lshl_or_b32 v2, s3, 4, v2
	v_lshlrev_b32_e32 v1, 2, v1
	v_lshl_or_b32 v9, v7, 2, v21
	v_and_b32_e32 v5, 28, v5
	v_and_b32_e32 v6, 32, v6
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_and_b32_e32 v17, 15, v0
	v_lshrrev_b32_e32 v4, 1, v0
	v_xor_b32_e32 v8, v9, v8
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s13, 31
	v_or3_b32 v23, v1, v6, v5
	s_add_i32 s0, s13, s0
	v_lshlrev_b32_e32 v3, 4, v0
	s_ashr_i32 s0, s0, 1
	v_lshl_or_b32 v22, v7, 10, v8
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s0, s0, 31
	v_add_nc_u32_e32 v20, 0, v17
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s1, s0, 31
	s_mov_b32 s12, s4
	s_lshr_b32 s1, s1, 27
	s_mov_b32 s4, s6
	s_add_i32 s0, s0, s1
	v_and_b32_e32 v4, 0x70, v4
	s_ashr_i32 s0, s0, 5
	s_cmp_gt_i32 s13, 1
	v_xor_b32_e32 v1, 4, v22
	s_cselect_b32 s27, -1, 0
	s_abs_i32 s28, s26
	v_xor_b32_e32 v5, 8, v22
	s_cvt_f32_u32 s1, s28
	v_xor_b32_e32 v6, 12, v22
	v_xor_b32_e32 v7, 16, v22
	v_xor_b32_e32 v8, 20, v22
	v_rcp_iflag_f32_e32 v18, s1
	v_xor_b32_e32 v9, 24, v22
	v_xor_b32_e32 v10, 28, v22
	v_xor_b32_e32 v11, 0x404, v23
	v_xor_b32_e32 v12, 0x808, v23
	v_xor_b32_e32 v13, 0xc0c, v23
	v_xor_b32_e32 v14, 0x1010, v23
	v_xor_b32_e32 v15, 0x1414, v23
	v_xor_b32_e32 v16, 0x1818, v23
	v_xor_b32_e32 v40, 0x1c1c, v23
	v_readfirstlane_b32 s1, v18
.Ltmp12:
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	v_mul_lo_u32 v18, s21, v2
	v_xor_b32_e32 v41, 0x2040, v23
	v_xor_b32_e32 v42, 0x2444, v23
	v_xor_b32_e32 v43, 0x2848, v23
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_xor_b32_e32 v44, 0x2c4c, v23
	v_xor_b32_e32 v45, 0x3050, v23
	v_xor_b32_e32 v46, 0x3454, v23
	v_xor_b32_e32 v47, 0x3858, v23
	v_xor_b32_e32 v48, 0x3c5c, v23
	s_cvt_u32_f32 s6, s1
	s_max_i32 s43, s0, 1
	s_sub_i32 s0, 0, s28
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_lshl_add_u32 v24, v17, 4, v18
	v_mad_u64_u32 v[18:19], null, s20, v2, v[17:18]
	s_mul_i32 s0, s0, s6
	v_add_nc_u32_e32 v19, 0, v0
	v_add_nc_u32_e32 v25, 0, v3
	v_add_nc_u32_e32 v26, v20, v4
	v_add_nc_u32_e32 v27, 0, v1
	v_add_nc_u32_e32 v28, 0, v5
	v_add_nc_u32_e32 v29, 0, v6
	v_add_nc_u32_e32 v30, 0, v7
	v_add_nc_u32_e32 v31, 0, v8
	v_add_nc_u32_e32 v32, 0, v9
	v_add_nc_u32_e32 v33, 0, v10
	v_add_nc_u32_e32 v34, 0, v11
	v_add_nc_u32_e32 v35, 0, v12
	v_add_nc_u32_e32 v36, 0, v13
	v_add_nc_u32_e32 v37, 0, v14
	v_add_nc_u32_e32 v38, 0, v15
	v_add_nc_u32_e32 v39, 0, v16
	v_add_nc_u32_e32 v40, 0, v40
	v_add_nc_u32_e32 v41, 0, v41
	v_add_nc_u32_e32 v42, 0, v42
	v_add_nc_u32_e32 v43, 0, v43
	v_add_nc_u32_e32 v44, 0, v44
	v_add_nc_u32_e32 v45, 0, v45
	v_add_nc_u32_e32 v46, 0, v46
	v_add_nc_u32_e32 v47, 0, v47
	v_add_nc_u32_e32 v48, 0, v48
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s13, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mul_hi_u32 s7, s6, s0
	s_ashr_i32 s1, s21, 31
	s_mov_b32 s0, s21
	s_lshl_b32 s29, s21, 1
	s_mul_i32 s30, s21, 3
	s_lshl_b32 s31, s21, 2
	s_mul_i32 s33, s21, 5
	s_mul_i32 s34, s21, 6
	s_mul_i32 s35, s21, 7
	s_lshl_b32 s36, s21, 3
	s_mul_i32 s37, s21, 9
	s_mul_i32 s38, s21, 10
	s_mul_i32 s39, s21, 11
	s_mul_i32 s40, s21, 12
	s_mul_i32 s41, s21, 13
	s_mul_i32 s42, s21, 14
	s_mul_i32 s3, s21, 15
	s_bfe_i32 s44, s16, 0x1001d
	s_add_i32 s45, s6, s7
	s_lshl_b64 s[0:1], s[0:1], 2
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s46, s21, 5
	s_lshl_b32 s20, s20, 5
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s14
	s_mov_b32 s11, s15
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_7 Depth 2
                                        ;     Child Loop BB0_9 Depth 2
                                        ;     Child Loop BB0_11 Depth 2
                                        ;     Child Loop BB0_13 Depth 2
                                        ;     Child Loop BB0_15 Depth 2
                                        ;     Child Loop BB0_17 Depth 2
                                        ;     Child Loop BB0_19 Depth 2
                                        ;     Child Loop BB0_21 Depth 2
                                        ;     Child Loop BB0_23 Depth 2
                                        ;     Child Loop BB0_25 Depth 2
                                        ;     Child Loop BB0_27 Depth 2
                                        ;     Child Loop BB0_29 Depth 2
                                        ;     Child Loop BB0_31 Depth 2
                                        ;     Child Loop BB0_33 Depth 2
                                        ;     Child Loop BB0_35 Depth 2
                                        ;     Child Loop BB0_37 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s6, s2
	s_ashr_i32 s47, s2, 31
	s_mul_hi_u32 s7, s6, s45
	s_xor_b32 s47, s47, s44
	s_mul_i32 s48, s7, s28
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_sub_i32 s6, s6, s48
	s_add_i32 s48, s7, 1
	s_sub_i32 s49, s6, s28
	s_cmp_ge_u32 s6, s28
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	s_cselect_b32 s7, s48, s7
	s_cselect_b32 s6, s49, s6
	s_add_i32 s48, s7, 1
	s_cmp_ge_u32 s6, s28
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	s_cselect_b32 s6, s48, s7
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v49, 0
	s_xor_b32 s6, s6, s47
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	s_sub_i32 s6, s6, s47
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s47, s6, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s6, s6, s26
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s7, s24, s47
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s51, s2, s6
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s49, s7, 4
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s49
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	s_cvt_f32_u32 s48, s7
	s_sub_i32 s50, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s48
	v_readfirstlane_b32 s48, v1
	s_mul_f32 s48, s48, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s48, s48
	s_mul_i32 s50, s50, s48
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s48, s50
	s_abs_i32 s50, s51
	s_add_i32 s48, s48, s6
	s_xor_b32 s6, s51, s49
	s_mul_hi_u32 s48, s50, s48
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s52, s48, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s50, s50, s52
	s_add_i32 s52, s48, 1
	s_sub_i32 s53, s50, s7
	s_cmp_ge_u32 s50, s7
	s_cselect_b32 s48, s52, s48
	s_cselect_b32 s50, s53, s50
	s_add_i32 s52, s48, 1
	s_cmp_ge_u32 s50, s7
	s_cselect_b32 s7, s52, s48
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_and_not1_b32 vcc_lo, exec_lo, s27
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s48, s7, s6
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s49, s48, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s49, s51, s49
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s49, s49, s47
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s47, s49, 4
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	v_lshl_add_u32 v2, s7, 8, v24
	v_mov_b32_e32 v1, 0
	s_lshl_b32 s6, s6, 8
	v_add_nc_u32_e32 v49, s47, v18
	s_mov_b32 s49, s43
	v_subrev_nc_u32_e32 v50, s6, v2
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	buffer_load_u8 v55, v49, s[12:15], 0 offen
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v49, s20, v49
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	buffer_load_b128 v[51:54], v50, s[4:7], 0 offen
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v50, s46, v50
	s_add_i32 s49, s49, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s49, 0
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v19, v55
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	ds_load_u8 v55, v20
	ds_load_u8 v56, v20 offset:16
	ds_load_u8 v57, v20 offset:32
	ds_load_u8 v58, v20 offset:48
	ds_load_u8 v59, v20 offset:112
	ds_load_u8 v60, v20 offset:96
	ds_load_u8 v61, v20 offset:80
	ds_load_u8 v62, v20 offset:64
	ds_load_u8 v63, v20 offset:176
	ds_load_u8 v64, v20 offset:240
	ds_load_u8 v65, v20 offset:224
	ds_load_u8 v66, v20 offset:208
	ds_load_u8 v67, v20 offset:192
	ds_load_u8 v68, v20 offset:160
	ds_load_u8 v69, v20 offset:144
	ds_load_u8 v70, v20 offset:128
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v25, v[51:54]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	ds_load_u8 v51, v26 offset:1280
	ds_load_u8 v52, v26 offset:1024
	ds_load_u8 v53, v26 offset:1792
	ds_load_u8 v54, v26 offset:1536
	ds_load_u8 v71, v26 offset:1920
	ds_load_u8 v72, v26 offset:1664
	ds_load_u8 v73, v26 offset:1408
	ds_load_u8 v74, v26 offset:1152
	ds_load_u8 v75, v26 offset:256
	ds_load_u8 v76, v26
	ds_load_u8 v77, v26 offset:768
	ds_load_u8 v78, v26 offset:512
	ds_load_u8 v79, v26 offset:896
	ds_load_u8 v80, v26 offset:640
	ds_load_u8 v81, v26 offset:384
	ds_load_u8 v82, v26 offset:128
	ds_load_u8 v83, v26 offset:3328
	ds_load_u8 v84, v26 offset:3072
	ds_load_u8 v85, v26 offset:3840
	ds_load_u8 v86, v26 offset:3584
	ds_load_u8 v87, v26 offset:3968
	ds_load_u8 v88, v26 offset:3712
	ds_load_u8 v89, v26 offset:3456
	ds_load_u8 v90, v26 offset:3200
	ds_load_u8 v91, v26 offset:2304
	ds_load_u8 v92, v26 offset:2048
	ds_load_u8 v93, v26 offset:2816
	ds_load_u8 v94, v26 offset:2560
	ds_load_u8 v95, v26 offset:2944
	ds_load_u8 v96, v26 offset:2688
	ds_load_u8 v97, v26 offset:2432
	ds_load_u8 v98, v26 offset:2176
	v_perm_b32 v55, v55, v56, 0xc0c0004
	v_perm_b32 v56, v57, v58, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v72, v82, v81, 0xc0c0004
	v_perm_b32 v74, v80, v79, 0xc0c0004
	v_perm_b32 v58, v65, v64, 0xc0c0004
	v_perm_b32 v64, v54, v53, 0xc0c0004
	v_perm_b32 v57, v67, v66, 0xc0c0004
	v_perm_b32 v62, v68, v63, 0xc0c0004
	v_perm_b32 v63, v52, v51, 0xc0c0004
	v_perm_b32 v60, v70, v69, 0xc0c0004
	v_perm_b32 v65, v76, v75, 0xc0c0004
	v_perm_b32 v66, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v67, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v68, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v69, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v94, v93, 0xc0c0004
	v_perm_b32 v75, v90, v89, 0xc0c0004
	v_perm_b32 v76, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v98, v97, 0xc0c0004
	v_perm_b32 v78, v96, v95, 0xc0c0004
	v_lshl_or_b32 v52, v59, 16, v61
	v_lshl_or_b32 v51, v56, 16, v55
	v_lshl_or_b32 v53, v62, 16, v60
	v_lshl_or_b32 v56, v64, 16, v63
	v_lshl_or_b32 v55, v66, 16, v65
	v_lshl_or_b32 v60, v71, 16, v73
	v_lshl_or_b32 v59, v74, 16, v72
	v_lshl_or_b32 v54, v58, 16, v57
	v_lshl_or_b32 v58, v68, 16, v67
	v_lshl_or_b32 v57, v70, 16, v69
	v_lshl_or_b32 v62, v76, 16, v75
	v_lshl_or_b32 v61, v78, 16, v77
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[51:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[59:60], v[51:52], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[53:54], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[53:54], v[9:16] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 241 19 is_stmt 1              ; generate_amdgcn.py:241:19
	v_cvt_f32_i32_e32 v57, v1
	v_cvt_f32_i32_e32 v56, v2
	v_cvt_f32_i32_e32 v55, v3
	v_cvt_f32_i32_e32 v54, v4
	v_cvt_f32_i32_e32 v53, v5
	v_cvt_f32_i32_e32 v52, v6
	v_cvt_f32_i32_e32 v51, v7
	v_cvt_f32_i32_e32 v50, v8
	v_cvt_f32_i32_e32 v49, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v9, v11
	v_cvt_f32_i32_e32 v8, v12
	v_cvt_f32_i32_e32 v7, v13
	v_cvt_f32_i32_e32 v6, v14
	v_cvt_f32_i32_e32 v4, v15
	v_cvt_f32_i32_e32 v3, v16
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_or_b32_e32 v2, s47, v17
	.loc	1 222 18 is_stmt 1              ; generate_amdgcn.py:222:18
	v_lshl_or_b32 v5, s48, 8, v0
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_add_nc_u32_e32 v16, 0, v23
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s6, s47, s21
	s_mov_b32 s7, 0
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v2, 1, v2
	buffer_load_u16 v15, v2, s[16:19], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v1, 1, v5
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_add_nc_u32_e32 v66, 0, v21
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v1
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	ds_store_b32 v16, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v66 offset:16
	ds_load_b128 v[62:65], v66 offset:512
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v59, v59, v15
	ds_load_b128 v[11:14], v66
	ds_load_b128 v[66:69], v66 offset:528
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v52, v59, v52
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v12, v12, v56 :: v_dual_add_nc_u32 v1, s6, v5
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v14, v14, v15
	v_mul_f32_e32 v62, v62, v15
	v_mul_f32_e32 v64, v64, v15
	v_mul_f32_e32 v11, v11, v15
	.loc	1 279 13 is_stmt 1              ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v63, v63, v15 :: v_dual_mul_f32 v14, v14, v54
	v_dual_mul_f32 v61, v61, v15 :: v_dual_add_nc_u32 v70, 0, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v13, v13, v15
	v_mul_f32_e32 v65, v65, v15
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v49, v62, v49
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v58, v58, v15 :: v_dual_mul_f32 v9, v64, v9
	.loc	1 279 13 is_stmt 1              ; generate_amdgcn.py:279:13
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v60, v60, v15 :: v_dual_mul_f32 v53, v58, v53
	v_mul_f32_e32 v66, v66, v15
	v_mul_f32_e32 v68, v68, v15
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v67, v67, v15 :: v_dual_mul_f32 v50, v61, v50
	v_dual_mul_f32 v15, v69, v15 :: v_dual_mul_f32 v10, v63, v10
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v11, v11, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v13, v13, v55 :: v_dual_mul_f32 v6, v67, v6
	v_dual_mul_f32 v51, v60, v51 :: v_dual_mul_f32 v8, v65, v8
	v_dual_mul_f32 v7, v66, v7 :: v_dual_mul_f32 v4, v68, v4
	v_mul_f32_e32 v3, v15, v3
	ds_store_2addr_stride64_b32 v70, v11, v49 offset1:2
	ds_store_2addr_stride64_b32 v27, v12, v10 offset1:2
	ds_store_2addr_stride64_b32 v28, v13, v9 offset1:2
	ds_store_2addr_stride64_b32 v29, v14, v8 offset1:2
	ds_store_2addr_stride64_b32 v30, v53, v7 offset1:2
	ds_store_2addr_stride64_b32 v31, v52, v6 offset1:2
	ds_store_2addr_stride64_b32 v32, v51, v4 offset1:2
	ds_store_2addr_stride64_b32 v33, v50, v3 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 279 13 is_stmt 1              ; generate_amdgcn.py:279:13
	global_load_b32 v4, v[1:2], off
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	ds_load_b32 v53, v16
	ds_load_b32 v52, v34
	ds_load_b32 v51, v35
	ds_load_b32 v50, v36
	ds_load_b32 v49, v37
	ds_load_b32 v16, v38
	ds_load_b32 v15, v39
	ds_load_b32 v14, v40
	ds_load_b32 v13, v41
	ds_load_b32 v12, v42
	ds_load_b32 v11, v43
	ds_load_b32 v10, v44
	ds_load_b32 v9, v45
	ds_load_b32 v8, v46
	ds_load_b32 v7, v47
	ds_load_b32 v6, v48
.LBB0_7:                                ; %atomicrmw.start86
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v3, v4, v53
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_7
; %bb.8:                                ; %atomicrmw.end85
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_add_co_u32 v1, vcc_lo, v1, s0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	s_mov_b32 s7, 0
	global_load_b32 v4, v[1:2], off
.LBB0_9:                                ; %atomicrmw.start80
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v3, v4, v52
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end79
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s29, v5
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_11:                               ; %atomicrmw.start74
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v3, v4, v51
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end73
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s30, v5
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_13:                               ; %atomicrmw.start68
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(12)
	v_add_f32_e32 v3, v4, v50
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end67
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s31, v5
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_15:                               ; %atomicrmw.start62
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v3, v4, v49
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end61
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s33, v5
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_17:                               ; %atomicrmw.start56
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(10)
	v_add_f32_e32 v3, v4, v16
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end55
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s34, v5
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_19:                               ; %atomicrmw.start50
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v3, v4, v15
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end49
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s35, v5
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_21:                               ; %atomicrmw.start44
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(8)
	v_add_f32_e32 v3, v4, v14
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end43
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s36, v5
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_23:                               ; %atomicrmw.start38
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v3, v4, v13
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end37
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s37, v5
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_25:                               ; %atomicrmw.start32
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v3, v4, v12
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end31
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s38, v5
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_27:                               ; %atomicrmw.start26
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v3, v4, v11
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end25
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s39, v5
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_29:                               ; %atomicrmw.start20
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v3, v4, v10
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end19
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s40, v5
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_31:                               ; %atomicrmw.start14
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v3, v4, v9
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s41, v5
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_33:                               ; %atomicrmw.start8
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v3, v4, v8
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s42, v5
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_35:                               ; %atomicrmw.start2
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v3, v4, v7
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s3, v5
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_37:                               ; %atomicrmw.start
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v3, v4, v6
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s25
	s_cbranch_scc1 .LBB0_2
.LBB0_39:                               ; %._crit_edge6
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp13:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 54
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 34
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.num_vgpr, 99
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4284
; TotalNumSgprs: 56
; NumVgprs: 99
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 56
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x64 DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x3e DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	205                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	206                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	226                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     99
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
