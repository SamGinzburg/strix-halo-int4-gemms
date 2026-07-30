	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x30
	s_load_b32 s23, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v17, 15, v0
	v_lshrrev_b32_e32 v24, 4, v0
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v21, 0, v0
	v_lshrrev_b32_e32 v20, 1, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v15, v16 :: v_dual_lshlrev_b32 v18, 4, v17
	v_mov_b32_e32 v11, v16
	v_mov_b32_e32 v9, v16
	v_mov_b32_e32 v8, v16
	v_mov_b32_e32 v7, v16
	v_mov_b32_e32 v6, v16
	v_mov_b32_e32 v5, v16
	v_mov_b32_e32 v4, v16
	v_mov_b32_e32 v12, v16
	v_mov_b32_e32 v14, v16
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s16, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 89 24 is_stmt 1               ; generate_amdgcn.py:89:24
	s_lshl_b32 s14, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_abs_i32 s4, s14
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s14
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s15, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s18, s15, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s15, s15, s14
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s4, s7, s18
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s15
	.loc	1 92 20                         ; generate_amdgcn.py:92:20
	s_min_i32 s22, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s19, s22
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s12, s19
	s_load_b64 s[0:1], s[0:1], 0x20
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s12
	v_readfirstlane_b32 s12, v1
	.loc	1 125 30                        ; generate_amdgcn.py:125:30
	v_mad_u64_u32 v[1:2], null, s16, v24, v[17:18]
	.loc	1 131 30                        ; generate_amdgcn.py:131:30
	v_mad_u64_u32 v[2:3], null, s17, v24, v[18:19]
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s20, s12, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_sub_i32 s7, 0, s19
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	v_lshlrev_b32_e32 v19, 4, v0
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_u32_f32 s6, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	v_dual_mov_b32 v13, v16 :: v_dual_add_nc_u32 v22, 0, v19
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s15, s14, s6
	s_xor_b32 s6, s2, s22
	s_mul_i32 s21, s15, s19
	s_ashr_i32 s20, s6, 31
	s_sub_i32 s14, s14, s21
	s_add_i32 s21, s15, 1
	s_sub_i32 s24, s14, s19
	s_cmp_ge_u32 s14, s19
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s15, s21, s15
	s_cselect_b32 s14, s24, s14
	s_add_i32 s21, s15, 1
	s_cmp_ge_u32 s14, s19
	s_cselect_b32 s14, s21, s15
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s15, s23, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s21, s14, s20
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	s_lshl_b32 s19, s3, 4
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s3, s23, s15
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s15, s21, s20
	.loc	1 108 18                        ; generate_amdgcn.py:108:18
	v_or_b32_e32 v3, s19, v24
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s25, s15, s22
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s22, s3, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s25
	.loc	1 125 30                        ; generate_amdgcn.py:125:30
	s_mul_i32 s14, s16, s19
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s18
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s3, s15, 8
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v3
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s2, s2, 4
	.loc	1 131 30                        ; generate_amdgcn.py:131:30
	s_mul_i32 s24, s17, s19
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmp_gt_i32 s23, 1
	.loc	1 125 30                        ; generate_amdgcn.py:125:30
	v_add3_u32 v1, s14, s2, v1
	.loc	1 131 30                        ; generate_amdgcn.py:131:30
	v_add3_u32 v2, s24, s3, v2
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cselect_b32 s18, -1, 0
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_and_b32 vcc_lo, s18, vcc_lo
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_mov_b32 s14, s6
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_mov_b32 s15, s7
	s_and_b32 s13, s13, 0xffff
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	buffer_load_u8 v23, v1, s[4:7], 0 offen
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	buffer_load_b128 v[25:28], v2, s[12:15], 0 offen
	v_dual_mov_b32 v10, v16 :: v_dual_add_nc_u32 v19, 0, v17
	v_mov_b32_e32 v3, v16
	v_mov_b32_e32 v2, v16
	v_mov_b32_e32 v1, v16
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmpk_lt_i32 s23, 0x102
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v21, v23 offset:4096
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v22, v[25:28]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_addk_i32 s19, 0x80
	v_sub_nc_u32_e32 v23, s22, v24
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v2, s19, v24
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:106:32 ]
	s_addk_i32 s22, 0x7f
.Ltmp13:
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_lshl_b32 s14, s21, 8
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:106:32 ]
	s_lshr_b32 s15, s22, 7
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp15:
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	v_mul_lo_u32 v4, s17, v2
	v_mul_lo_u32 v6, s16, v2
	v_sub_nc_u32_e64 v5, s15, 2 clamp
	v_dual_mov_b32 v2, v1 :: v_dual_and_b32 v3, 0x70, v20
	s_lshl_b32 s15, s20, 8
	v_mov_b32_e32 v7, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_readfirstlane_b32 s21, v5
	v_add3_u32 v4, v4, s14, v18
	v_add_nc_u32_e32 v24, v19, v3
	v_mov_b32_e32 v3, v1
	v_add3_u32 v18, v6, s2, v17
	v_mov_b32_e32 v5, v1
	v_subrev_nc_u32_e32 v25, s15, v4
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	s_lshl_b32 s20, s17, 7
	s_add_i32 s21, s21, 1
	s_lshl_b32 s16, s16, 7
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s19, v23
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_add_i32 s21, s21, -1
	s_addk_i32 s19, 0x80
	s_cmp_lg_u32 s21, 0
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	v_dual_cndmask_b32 v26, 0x80000000, v18 :: v_dual_cndmask_b32 v27, 0x80000000, v25
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	v_add_nc_u32_e32 v18, s16, v18
	v_add_nc_u32_e32 v25, s20, v25
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	buffer_load_u8 v42, v26, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	buffer_load_b128 v[26:29], v27, s[12:15], 0 offen
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	ds_load_u8 v30, v19 offset:4176
	ds_load_u8 v31, v19 offset:4208
	ds_load_u8 v32, v19 offset:4192
	ds_load_u8 v33, v19 offset:4160
	ds_load_u8 v34, v19 offset:4096
	ds_load_u8 v35, v19 offset:4112
	ds_load_u8 v36, v19 offset:4128
	ds_load_u8 v37, v19 offset:4144
	ds_load_u8 v38, v19 offset:4304
	ds_load_u8 v39, v19 offset:4336
	ds_load_u8 v40, v19 offset:4320
	ds_load_u8 v41, v19 offset:4288
	ds_load_u8 v43, v19 offset:4240
	ds_load_u8 v44, v19 offset:4272
	ds_load_u8 v45, v19 offset:4256
	ds_load_u8 v46, v19 offset:4224
	ds_load_u8 v47, v24 offset:1280
	ds_load_u8 v48, v24 offset:1024
	ds_load_u8 v49, v24 offset:1792
	ds_load_u8 v50, v24 offset:1536
	ds_load_u8 v51, v24 offset:1920
	ds_load_u8 v52, v24 offset:1664
	ds_load_u8 v53, v24 offset:1408
	ds_load_u8 v54, v24 offset:1152
	ds_load_u8 v55, v24 offset:256
	ds_load_u8 v56, v24
	ds_load_u8 v57, v24 offset:768
	ds_load_u8 v58, v24 offset:512
	ds_load_u8 v59, v24 offset:896
	ds_load_u8 v60, v24 offset:640
	ds_load_u8 v61, v24 offset:384
	ds_load_u8 v62, v24 offset:128
	ds_load_u8 v63, v24 offset:3328
	ds_load_u8 v64, v24 offset:3072
	ds_load_u8 v65, v24 offset:3840
	ds_load_u8 v66, v24 offset:3584
	ds_load_u8 v67, v24 offset:3968
	ds_load_u8 v68, v24 offset:3712
	ds_load_u8 v69, v24 offset:3456
	ds_load_u8 v70, v24 offset:3200
	ds_load_u8 v71, v24 offset:2304
	ds_load_u8 v72, v24 offset:2048
	ds_load_u8 v73, v24 offset:2816
	ds_load_u8 v74, v24 offset:2560
	ds_load_u8 v75, v24 offset:2944
	ds_load_u8 v76, v24 offset:2688
	ds_load_u8 v77, v24 offset:2432
	ds_load_u8 v78, v24 offset:2176
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v30, v33, v30, 0xc0c0004
	v_perm_b32 v31, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v32, v34, v35, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v33, v36, v37, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v34, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v35, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v36, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v37, v58, v57, 0xc0c0004
	v_perm_b32 v38, v41, v38, 0xc0c0004
	v_perm_b32 v39, v40, v39, 0xc0c0004
	v_perm_b32 v47, v54, v53, 0xc0c0004
	v_perm_b32 v48, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v49, v62, v61, 0xc0c0004
	v_perm_b32 v50, v60, v59, 0xc0c0004
	v_perm_b32 v40, v46, v43, 0xc0c0004
	v_perm_b32 v41, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v43, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v44, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v46, v74, v73, 0xc0c0004
	v_perm_b32 v51, v70, v69, 0xc0c0004
	v_perm_b32 v52, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v78, v77, 0xc0c0004
	v_perm_b32 v54, v76, v75, 0xc0c0004
	v_lshl_or_b32 v31, v31, 16, v30
	v_lshl_or_b32 v30, v33, 16, v32
	v_lshl_or_b32 v33, v35, 16, v34
	v_lshl_or_b32 v32, v37, 16, v36
	v_lshl_or_b32 v35, v39, 16, v38
	v_lshl_or_b32 v39, v48, 16, v47
	v_lshl_or_b32 v38, v50, 16, v49
	v_lshl_or_b32 v34, v41, 16, v40
	v_lshl_or_b32 v37, v44, 16, v43
	v_lshl_or_b32 v36, v46, 16, v45
	v_lshl_or_b32 v41, v52, 16, v51
	v_lshl_or_b32 v40, v54, 16, v53
	v_wmma_i32_16x16x16_iu4 v[1:8], v[32:33], v[30:31], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[38:39], v[30:31], v[9:16] neg_lo:[1,1,0]
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v21, v42 offset:4096
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v22, v[26:29]
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[34:35], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[40:41], v[34:35], v[9:16] neg_lo:[1,1,0]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow103
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_and_b32_e32 v18, 0xf0, v0
	.loc	1 132 23 is_stmt 1              ; generate_amdgcn.py:132:23
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 125 22                        ; generate_amdgcn.py:125:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	v_and_b32_e32 v20, 0x70, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v24, v19, v20
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	ds_load_u8 v20, v19 offset:4176
	ds_load_u8 v21, v19 offset:4208
	ds_load_u8 v22, v19 offset:4192
	ds_load_u8 v23, v19 offset:4160
	ds_load_u8 v25, v19 offset:4096
	ds_load_u8 v26, v19 offset:4112
	ds_load_u8 v27, v19 offset:4128
	ds_load_u8 v28, v19 offset:4144
	ds_load_u8 v29, v24 offset:1280
	ds_load_u8 v30, v24 offset:1024
	ds_load_u8 v31, v24 offset:1792
	ds_load_u8 v32, v24 offset:1536
	ds_load_u8 v33, v19 offset:4304
	ds_load_u8 v34, v19 offset:4336
	ds_load_u8 v35, v19 offset:4320
	ds_load_u8 v36, v19 offset:4288
	ds_load_u8 v37, v24 offset:256
	ds_load_u8 v38, v24
	ds_load_u8 v39, v24 offset:768
	ds_load_u8 v40, v24 offset:512
	ds_load_u8 v41, v24 offset:1920
	ds_load_u8 v42, v24 offset:1664
	ds_load_u8 v43, v24 offset:1408
	ds_load_u8 v44, v24 offset:1152
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v20, v23, v20, 0xc0c0004
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v22, v25, v26, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v23, v27, v28, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v25, v30, v29, 0xc0c0004
	v_lshl_or_b32 v21, v21, 16, v20
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v26, v32, v31, 0xc0c0004
	ds_load_u8 v30, v19 offset:4240
	ds_load_u8 v31, v19 offset:4272
	ds_load_u8 v32, v19 offset:4256
	ds_load_u8 v19, v19 offset:4224
	v_lshl_or_b32 v20, v23, 16, v22
	v_lshl_or_b32 v23, v26, 16, v25
	ds_load_u8 v25, v24 offset:896
	ds_load_u8 v26, v24 offset:640
	ds_load_u8 v27, v24 offset:384
	ds_load_u8 v28, v24 offset:128
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v22, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v29, v40, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v29, 16, v22
	v_perm_b32 v29, v36, v33, 0xc0c0004
	v_perm_b32 v33, v35, v34, 0xc0c0004
	ds_load_u8 v34, v24 offset:3328
	ds_load_u8 v35, v24 offset:3072
	ds_load_u8 v36, v24 offset:2304
	ds_load_u8 v37, v24 offset:2048
	ds_load_u8 v38, v24 offset:2816
	ds_load_u8 v39, v24 offset:2560
	ds_load_u8 v40, v24 offset:3840
	ds_load_u8 v45, v24 offset:3584
	ds_load_u8 v46, v24 offset:3968
	ds_load_u8 v47, v24 offset:3712
	ds_load_u8 v48, v24 offset:3456
	ds_load_u8 v49, v24 offset:3200
	ds_load_u8 v50, v24 offset:2944
	ds_load_u8 v51, v24 offset:2688
	ds_load_u8 v52, v24 offset:2432
	ds_load_u8 v53, v24 offset:2176
	v_wmma_i32_16x16x16_iu4 v[1:8], v[22:23], v[20:21], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v24, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v19, v19, v30, 0xc0c0004
	v_lshl_or_b32 v23, v33, 16, v29
	v_perm_b32 v29, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v26, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v30, v37, v36, 0xc0c0004
	v_lshl_or_b32 v22, v24, 16, v19
	v_perm_b32 v24, v44, v43, 0xc0c0004
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_perm_b32 v19, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v28, v45, v40, 0xc0c0004
	v_perm_b32 v31, v39, v38, 0xc0c0004
	v_lshl_or_b32 v25, v29, 16, v24
	v_lshl_or_b32 v24, v26, 16, v27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v49, v48, 0xc0c0004
	v_perm_b32 v32, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v53, v52, 0xc0c0004
	v_perm_b32 v34, v51, v50, 0xc0c0004
	v_lshl_or_b32 v27, v28, 16, v19
	v_lshl_or_b32 v26, v31, 16, v30
	v_wmma_i32_16x16x16_iu4 v[9:16], v[24:25], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v20, v32, 16, v29
	v_lshl_or_b32 v19, v34, 16, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[26:27], v[22:23], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[22:23], v[9:16] neg_lo:[1,1,0]
.LBB0_5:                                ; %._crit_edge._crit_edge
	.loc	1 142 22                        ; generate_amdgcn.py:142:22
	v_or_b32_e32 v19, s2, v17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v21, v1
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	v_lshlrev_b32_e32 v19, 1, v19
	s_mov_b32 s4, s8
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_or_b32_e32 v17, s3, v0
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v29, v9
	v_cvt_f32_i32_e32 v22, v2
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v23, v3
	v_cvt_f32_i32_e32 v24, v4
	v_cvt_f32_i32_e32 v25, v5
	v_cvt_f32_i32_e32 v26, v6
	v_cvt_f32_i32_e32 v36, v16
	v_cvt_f32_i32_e32 v32, v12
	v_cvt_f32_i32_e32 v28, v8
	v_cvt_f32_i32_e32 v30, v10
	v_cvt_f32_i32_e32 v31, v11
	v_cvt_f32_i32_e32 v27, v7
	v_cvt_f32_i32_e32 v33, v13
	v_cvt_f32_i32_e32 v34, v14
	v_cvt_f32_i32_e32 v35, v15
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s8, s17, 6
	s_mul_i32 s9, s17, 7
	s_mul_i32 s10, s17, 9
	s_mul_i32 s11, s17, 10
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s3, s7
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s12, s17, 11
	s_mul_i32 s13, s17, 12
	s_mul_i32 s14, s17, 13
	s_mul_i32 s15, s17, 14
	s_mul_i32 s16, s17, 15
	.loc	1 142 14 is_stmt 1              ; generate_amdgcn.py:142:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	v_lshlrev_b32_e32 v20, 1, v17
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_lshlrev_b32_e32 v2, 1, v0
	v_lshlrev_b32_e32 v3, 5, v0
	v_lshlrev_b32_e32 v4, 1, v18
	.loc	1 144 9 is_stmt 0               ; generate_amdgcn.py:144:9
	v_and_b32_e32 v5, 7, v0
	.loc	1 143 14 is_stmt 1              ; generate_amdgcn.py:143:14
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_bfe_i32 v0, v0, 3, 1
	.loc	1 144 16 is_stmt 0              ; generate_amdgcn.py:144:16
	v_lshlrev_b32_e32 v1, 2, v18
	v_and_b32_e32 v2, 28, v2
	v_and_b32_e32 v3, 32, v3
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshl_or_b32 v6, v5, 2, v4
	v_and_b32_e32 v0, 0x2040, v0
	.loc	1 218 23 is_stmt 1              ; generate_amdgcn.py:218:23
	v_mad_u64_u32 v[16:17], null, s2, s17, v[17:18]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_or3_b32 v17, v1, v3, v2
	v_add_nc_u32_e32 v12, 0, v4
	.loc	1 144 9 is_stmt 0               ; generate_amdgcn.py:144:9
	v_xor_b32_e32 v0, v6, v0
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v48, 0, v17
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_xad_u32 v50, 0x404, v17, 0
	v_lshl_or_b32 v49, v5, 10, v0
	v_xad_u32 v51, 0x808, v17, 0
	v_xad_u32 v52, 0xc0c, v17, 0
	v_xad_u32 v53, 0x1010, v17, 0
	v_xad_u32 v54, 0x1414, v17, 0
	v_xad_u32 v64, v49, 4, 0
	v_xad_u32 v65, v49, 8, 0
	v_xad_u32 v66, v49, 12, 0
	v_xad_u32 v67, v49, 16, 0
	v_xad_u32 v55, 0x1c1c, v17, 0
	v_xad_u32 v56, 0x2040, v17, 0
	v_xad_u32 v57, 0x2444, v17, 0
	v_xad_u32 v58, 0x2848, v17, 0
	v_xad_u32 v68, v49, 20, 0
	v_xad_u32 v69, v49, 24, 0
	v_xad_u32 v59, 0x2c4c, v17, 0
	v_xad_u32 v60, 0x3050, v17, 0
	v_xad_u32 v61, 0x3454, v17, 0
	v_xad_u32 v62, 0x3858, v17, 0
	.loc	1 218 23 is_stmt 1              ; generate_amdgcn.py:218:23
	s_mul_i32 s4, s17, 3
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	v_add_lshl_u32 v37, v16, s17, 2
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s5, s17, 5
	.loc	1 218 9                         ; generate_amdgcn.py:218:9
	s_mov_b32 s2, s6
	v_add_lshl_u32 v38, v16, s4, 2
	v_add_lshl_u32 v39, v16, s5, 2
	v_add_lshl_u32 v40, v16, s8, 2
	v_add_lshl_u32 v41, v16, s9, 2
	v_add_lshl_u32 v42, v16, s10, 2
	v_add_lshl_u32 v43, v16, s11, 2
	v_add_lshl_u32 v44, v16, s12, 2
	v_add_lshl_u32 v45, v16, s13, 2
	v_add_lshl_u32 v46, v16, s14, 2
	v_add_lshl_u32 v47, v16, s15, 2
	.loc	1 143 14 is_stmt 1              ; generate_amdgcn.py:143:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v20
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_xad_u32 v20, 0x1818, v17, 0
	.loc	1 144 16 is_stmt 0              ; generate_amdgcn.py:144:16
	ds_store_b32 v48, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v12 offset:512
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v8, v8, v19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_dual_mul_f32 v8, v8, v29 :: v_dual_mul_f32 v11, v11, v19
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	ds_load_b128 v[12:15], v12 offset:528
	v_mul_f32_e32 v9, v9, v19
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_add_nc_u32_e32 v63, 0, v49
	.loc	1 218 9 is_stmt 1               ; generate_amdgcn.py:218:9
	v_lshlrev_b32_e32 v18, 2, v16
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_xad_u32 v49, v49, 28, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v9, v9, v30
	v_dual_mul_f32 v11, v11, v32 :: v_dual_mul_f32 v0, v0, v19
	.loc	1 144 16 is_stmt 0              ; generate_amdgcn.py:144:16
	v_mul_f32_e32 v1, v1, v19
	v_mul_f32_e32 v2, v2, v19
	v_mul_f32_e32 v5, v5, v19
	v_mul_f32_e32 v10, v10, v19
	v_mul_f32_e32 v3, v3, v19
	v_mul_f32_e32 v4, v4, v19
	v_mul_f32_e32 v6, v6, v19
	v_mul_f32_e32 v7, v7, v19
	v_mul_f32_e32 v12, v12, v19
	v_mul_f32_e32 v13, v13, v19
	v_mul_f32_e32 v14, v14, v19
	v_dual_mul_f32 v15, v15, v19 :: v_dual_mul_f32 v0, v0, v21
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_dual_mul_f32 v1, v1, v22 :: v_dual_mul_f32 v2, v2, v23
	v_dual_mul_f32 v5, v5, v26 :: v_dual_mul_f32 v10, v10, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v15, v15, v36
	v_dual_mul_f32 v3, v3, v24 :: v_dual_mul_f32 v4, v4, v25
	v_dual_mul_f32 v6, v6, v27 :: v_dual_mul_f32 v13, v13, v34
	v_dual_mul_f32 v7, v7, v28 :: v_dual_mul_f32 v12, v12, v33
	v_mul_f32_e32 v14, v14, v35
	ds_store_2addr_stride64_b32 v63, v0, v8 offset1:2
	ds_store_2addr_stride64_b32 v64, v1, v9 offset1:2
	ds_store_2addr_stride64_b32 v65, v2, v10 offset1:2
	ds_store_2addr_stride64_b32 v66, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v67, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v68, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v69, v6, v14 offset1:2
	ds_store_2addr_stride64_b32 v49, v7, v15 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v48
	ds_load_b32 v1, v50
	ds_load_b32 v2, v51
	ds_load_b32 v3, v52
	ds_load_b32 v4, v53
	ds_load_b32 v5, v54
	ds_load_b32 v6, v20
	ds_load_b32 v7, v55
	ds_load_b32 v8, v56
	ds_load_b32 v9, v57
	ds_load_b32 v10, v58
	v_xad_u32 v11, 0x3c5c, v17, 0
	ds_load_b32 v12, v59
	ds_load_b32 v13, v60
	ds_load_b32 v14, v61
	ds_load_b32 v15, v62
	ds_load_b32 v11, v11
	.loc	1 218 9 is_stmt 1               ; generate_amdgcn.py:218:9
	v_lshl_add_u32 v17, s17, 3, v18
	v_lshl_add_u32 v19, s17, 4, v18
	v_lshl_add_u32 v20, s17, 5, v18
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v18, s[0:3], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v1, v37, s[0:3], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v2, v17, s[0:3], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v3, v38, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v4, v19, s[0:3], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v5, v39, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v6, v40, s[0:3], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v7, v41, s[0:3], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v8, v20, s[0:3], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v9, v42, s[0:3], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v10, v43, s[0:3], 0 offen
	v_add_lshl_u32 v0, v16, s16, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v12, v44, s[0:3], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v13, v45, s[0:3], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v14, v46, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v15, v47, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v11, v0, s[0:3], 0 offen
	.loc	1 80 1                          ; generate_amdgcn.py:80:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
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
		.amdhsa_next_free_sgpr 26
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
		.amdhsa_inst_pref_size 32
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_vgpr, 79
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.numbered_sgpr, 26
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3972
; TotalNumSgprs: 28
; NumVgprs: 79
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 28
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	106                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     79
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
