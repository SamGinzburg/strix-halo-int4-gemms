	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x30
	s_load_b32 s18, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v45, 3, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_bfe_i32 v10, v0, 6, 1
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_or_b32_e32 v40, 0x300, v0
	v_or_b32_e32 v41, 0x700, v0
	v_or_b32_e32 v42, 0xb00, v0
	v_or_b32_e32 v43, 0xf00, v0
	v_bfe_i32 v36, v0, 3, 1
	v_lshrrev_b32_e32 v37, 1, v0
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v9, 1, v0
	v_add_nc_u32_e32 v39, 0, v0
	v_add_nc_u32_e32 v40, 0, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v24, v8 :: v_dual_add_nc_u32 v41, 0, v41
	v_mov_b32_e32 v6, v8
	v_dual_mov_b32 v7, v8 :: v_dual_and_b32 v44, 0x17e, v9
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s16, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s12, s4, 2
	v_mov_b32_e32 v5, v8
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s12
	v_mov_b32_e32 v4, v8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_dual_mov_b32 v22, v8 :: v_dual_add_nc_u32 v43, 0, v43
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	s_cvt_u32_f32 s5, s5
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v9, v8
	s_mul_hi_u32 s8, s5, s8
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v42, 0, v42
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v35, 15, v0
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v51, 0x88, v10
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v10, v8
	s_cselect_b32 s4, s9, s5
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v44, v51, v44
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_xor_b32 s4, s4, s8
	v_mov_b32_e32 v23, v8
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s14, s13, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s13, s13, s12
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s14
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s13
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s15, s4, 4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s13, s2
	s_abs_i32 s19, s15
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v44, 0, v44
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s4, s19
	s_sub_i32 s20, 0, s19
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s16, s4
	s_clause 0x1
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b64 s[0:1], s[0:1], 0x20
	s_mul_i32 s20, s20, s16
	s_mul_hi_u32 s12, s16, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s16, s16, s12
	s_mul_hi_u32 s12, s13, s16
	s_xor_b32 s16, s2, s15
	s_mul_i32 s20, s12, s19
	s_ashr_i32 s16, s16, 31
	s_sub_i32 s13, s13, s20
	s_add_i32 s20, s12, 1
	s_sub_i32 s21, s13, s19
	s_cmp_ge_u32 s13, s19
	s_cselect_b32 s12, s20, s12
	s_cselect_b32 s13, s21, s13
	s_add_i32 s20, s12, 1
	s_cmp_ge_u32 s13, s19
	s_cselect_b32 s12, s20, s12
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s13, s18, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s20, s12, s16
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s12, s18, s13
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s13, s20, s16
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s19, s12, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s12, s13, s15
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	v_lshl_or_b32 v34, s13, 8, v0
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 120 13 is_stmt 0              ; generate_amdgcn.py:120:13
	s_add_i32 s12, s2, s14
	.loc	1 135 23 is_stmt 1              ; generate_amdgcn.py:135:23
	s_lshl_b32 s2, s3, 4
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s3, s12, 5
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s18, 1
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s14, s3, s19
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_and_b32_e32 v38, 7, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s15, s7
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v33, 1, v38
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_lt_i32 s18, 0x102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mad_u64_u32 v[1:2], null, s19, v45, v[33:34]
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_mad_u64_u32 v[2:3], null, v34, s19, s[2:3]
	v_mov_b32_e32 v3, v8
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v1, s2, s14, v1
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s14, s6
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_lshlrev_b32_e32 v38, 4, v38
	buffer_load_b128 v[46:49], v2, s[12:15], 0 offen
	v_mov_b32_e32 v2, v8
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_u16 v50, v1, s[4:7], 0 offen
	v_mov_b32_e32 v1, v8
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v51, 8, v46
	v_lshrrev_b32_e32 v52, 24, v46
	v_lshrrev_b32_e32 v53, 8, v47
	v_lshrrev_b32_e32 v54, 24, v47
	v_lshrrev_b32_e32 v55, 8, v48
	v_lshrrev_b32_e32 v56, 24, v48
	v_lshrrev_b32_e32 v57, 8, v49
	v_lshrrev_b32_e32 v58, 24, v49
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(0)
	ds_store_b16 v44, v50 offset:4096
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_store_b8 v39, v46
	ds_store_b8 v39, v51 offset:256
	ds_store_b8_d16_hi v39, v46 offset:512
	ds_store_b8 v39, v47 offset:1024
	ds_store_b8 v39, v53 offset:1280
	ds_store_b8_d16_hi v39, v47 offset:1536
	ds_store_b8 v39, v48 offset:2048
	ds_store_b8 v39, v55 offset:2304
	ds_store_b8_d16_hi v39, v48 offset:2560
	ds_store_b8 v39, v49 offset:3072
	ds_store_b8 v39, v57 offset:3328
	ds_store_b8 v40, v52
	ds_store_b8 v41, v54
	ds_store_b8 v42, v56
	ds_store_b8_d16_hi v39, v49 offset:3584
	ds_store_b8 v43, v58
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_lshl_or_b32 v1, s20, 8, v0
	s_lshl_b32 s15, s16, 8
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v2, s3, v45
	v_and_or_b32 v4, 0x88, v36, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v1, s15, v1
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s14, s19, 0x7f
	v_dual_mov_b32 v10, v9 :: v_dual_add_nc_u32 v3, 0, v35
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s14, s14, 7
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp13:
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	v_mul_lo_u32 v6, s19, v1
	v_mad_u64_u32 v[1:2], null, s19, v2, s[2:3]
	v_xor_b32_e32 v2, 8, v4
	v_sub_nc_u32_e64 v5, s14, 2 clamp
	v_dual_mov_b32 v12, v9 :: v_dual_and_b32 v7, 0x70, v37
	v_dual_mov_b32 v11, v9 :: v_dual_add_nc_u32 v4, 0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v13, v9 :: v_dual_add_nc_u32 v2, 0, v2
	v_readfirstlane_b32 s14, v5
	v_add3_u32 v45, v6, s2, 0x80
	v_add3_u32 v33, v1, v33, 0x80
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v46, v3, v7
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v47, 0x1000, v4
	v_dual_mov_b32 v25, v9 :: v_dual_add_nc_u32 v48, 0x1000, v2
	v_mov_b32_e32 v16, v9
	v_mov_b32_e32 v26, v9
	v_mov_b32_e32 v27, v9
	v_mov_b32_e32 v28, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v32, v9
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v19, v9
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	s_add_i32 s2, s14, 1
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_u16 v69, v33, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	buffer_load_b128 v[49:52], v45, s[12:15], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[53:56], v47 offset1:32
	ds_load_2addr_b64 v[57:60], v48 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v61, v46 offset:2304
	ds_load_u8 v62, v46 offset:2048
	ds_load_u8 v63, v46 offset:2816
	ds_load_u8 v64, v46 offset:2560
	ds_load_u8 v65, v46 offset:1280
	ds_load_u8 v66, v46 offset:1024
	ds_load_u8 v67, v46 offset:1792
	ds_load_u8 v68, v46 offset:1536
	ds_load_u8 v70, v46 offset:1920
	ds_load_u8 v71, v46 offset:1664
	ds_load_u8 v72, v46 offset:1408
	ds_load_u8 v73, v46 offset:1152
	ds_load_u8 v74, v46 offset:256
	ds_load_u8 v75, v46
	ds_load_u8 v76, v46 offset:768
	ds_load_u8 v77, v46 offset:512
	ds_load_u8 v78, v46 offset:896
	ds_load_u8 v79, v46 offset:640
	ds_load_u8 v80, v46 offset:384
	ds_load_u8 v81, v46 offset:128
	ds_load_u8 v82, v46 offset:3328
	ds_load_u8 v83, v46 offset:3072
	ds_load_u8 v84, v46 offset:3840
	ds_load_u8 v85, v46 offset:3584
	ds_load_u8 v86, v46 offset:3968
	ds_load_u8 v87, v46 offset:3712
	ds_load_u8 v88, v46 offset:3456
	ds_load_u8 v89, v46 offset:3200
	ds_load_u8 v90, v46 offset:2944
	ds_load_u8 v91, v46 offset:2688
	ds_load_u8 v92, v46 offset:2432
	ds_load_u8 v93, v46 offset:2176
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v66, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v67, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v68, v77, v76, 0xc0c0004
	v_perm_b32 v72, v73, v72, 0xc0c0004
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v73, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v71, v81, v80, 0xc0c0004
	v_perm_b32 v76, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v74, v83, v82, 0xc0c0004
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v75, v85, v84, 0xc0c0004
	v_lshl_or_b32 v62, v66, 16, v65
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v78, v87, v86, 0xc0c0004
	v_lshl_or_b32 v61, v68, 16, v67
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v77, v89, v88, 0xc0c0004
	v_lshl_or_b32 v66, v70, 16, v72
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v80, v91, v90, 0xc0c0004
	v_lshl_or_b32 v65, v73, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v93, v92, 0xc0c0004
	v_lshl_or_b32 v64, v75, 16, v74
	v_lshl_or_b32 v63, v63, 16, v76
	v_lshl_or_b32 v68, v78, 16, v77
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[53:54], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v67, v80, 16, v79
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[53:54], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[55:56], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[55:56], v[1:8] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v45, 0x80, v45
	v_add_nc_u32_e32 v33, 0x80, v33
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[57:58], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[59:60], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[59:60], v[1:8] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_add_i32 s2, s2, -1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lg_u32 s2, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_barrier
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v53, 8, v49
	v_lshrrev_b32_e32 v54, 24, v49
	v_lshrrev_b32_e32 v55, 8, v50
	v_lshrrev_b32_e32 v56, 24, v50
	v_lshrrev_b32_e32 v57, 8, v51
	v_lshrrev_b32_e32 v58, 24, v51
	v_lshrrev_b32_e32 v59, 8, v52
	v_lshrrev_b32_e32 v60, 24, v52
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_store_b16 v44, v69 offset:4096
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_store_b8 v39, v49
	ds_store_b8 v39, v53 offset:256
	ds_store_b8_d16_hi v39, v49 offset:512
	ds_store_b8 v39, v50 offset:1024
	ds_store_b8 v39, v55 offset:1280
	ds_store_b8_d16_hi v39, v50 offset:1536
	ds_store_b8 v39, v51 offset:2048
	ds_store_b8 v39, v57 offset:2304
	ds_store_b8_d16_hi v39, v51 offset:2560
	ds_store_b8 v39, v52 offset:3072
	ds_store_b8 v39, v59 offset:3328
	ds_store_b8 v40, v54
	ds_store_b8 v41, v56
	ds_store_b8 v42, v58
	ds_store_b8_d16_hi v39, v52 offset:3584
	ds_store_b8 v43, v60
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_and_b32_e32 v33, 0x70, v37
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_or_b32 v36, 0x88, v36, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add3_u32 v33, 0, v33, v35
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v37, v36, 8, 0
	v_add_nc_u32_e32 v36, 0, v36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v40, v33 offset:1280
	ds_load_u8 v41, v33 offset:1024
	ds_load_u8 v42, v33 offset:1792
	ds_load_u8 v43, v33 offset:1536
	ds_load_u8 v44, v33 offset:256
	ds_load_u8 v45, v33
	ds_load_u8 v46, v33 offset:768
	ds_load_u8 v47, v33 offset:512
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v48, 0x1000, v37
	v_add_nc_u32_e32 v36, 0x1000, v36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v49, v33 offset:3328
	ds_load_u8 v50, v33 offset:3072
	ds_load_u8 v51, v33 offset:1920
	ds_load_u8 v52, v33 offset:1664
	ds_load_u8 v53, v33 offset:1408
	ds_load_u8 v54, v33 offset:1152
	ds_load_u8 v55, v33 offset:896
	ds_load_u8 v56, v33 offset:640
	ds_load_u8 v57, v33 offset:384
	ds_load_u8 v58, v33 offset:128
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[36:39], v36 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v41, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v42, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v43, v47, v46, 0xc0c0004
	ds_load_u8 v46, v33 offset:2304
	ds_load_u8 v47, v33 offset:2048
	ds_load_u8 v59, v33 offset:2816
	ds_load_u8 v60, v33 offset:2560
	ds_load_u8 v61, v33 offset:3840
	ds_load_u8 v62, v33 offset:3584
	ds_load_u8 v63, v33 offset:3968
	ds_load_u8 v64, v33 offset:3712
	ds_load_u8 v65, v33 offset:3456
	ds_load_u8 v66, v33 offset:3200
	ds_load_u8 v67, v33 offset:2944
	ds_load_u8 v68, v33 offset:2688
	ds_load_u8 v69, v33 offset:2432
	ds_load_u8 v33, v33 offset:2176
	v_lshl_or_b32 v45, v41, 16, v40
	v_lshl_or_b32 v44, v43, 16, v42
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[40:43], v48 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v48, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v49, v54, v53, 0xc0c0004
	v_perm_b32 v50, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v51, v58, v57, 0xc0c0004
	v_perm_b32 v52, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v54, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v53, v62, v61, 0xc0c0004
	v_perm_b32 v55, v60, v59, 0xc0c0004
	v_lshl_or_b32 v47, v50, 16, v49
	v_lshl_or_b32 v46, v52, 16, v51
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v50, v66, v65, 0xc0c0004
	v_perm_b32 v51, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v52, v68, v67, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v33, v69, 0xc0c0004
	v_lshl_or_b32 v49, v53, 16, v48
	v_lshl_or_b32 v48, v55, 16, v54
	v_wmma_i32_16x16x16_iu4 v[25:32], v[46:47], v[36:37], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v37, v51, 16, v50
	v_lshl_or_b32 v36, v52, 16, v33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[44:45], v[38:39], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[46:47], v[38:39], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[40:41], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[36:37], v[40:41], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[48:49], v[42:43], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[42:43], v[1:8] neg_lo:[1,1,0]
.LBB0_5:                                ; %._crit_edge._crit_edge
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or_b32_e32 v33, s3, v35
	.loc	1 169 14 is_stmt 0              ; generate_amdgcn.py:169:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v33, 1, v33
	.loc	1 168 15 is_stmt 1              ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v45, v20
	v_cvt_f32_i32_e32 v48, v1
	v_cvt_f32_i32_e32 v49, v2
	v_cvt_f32_i32_e32 v50, v3
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_or_b32_e32 v35, 32, v33
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v51, v4
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_and_b32_e32 v1, 0xf0, v0
	v_and_b32_e32 v2, 14, v0
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_clause 0x1
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_and_b32_e32 v3, 1, v0
	v_bfe_i32 v4, v0, 0, 1
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v0, 2, v0
	.loc	1 168 15 is_stmt 1              ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v52, v5
	v_cvt_f32_i32_e32 v53, v6
	v_cvt_f32_i32_e32 v44, v18
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_and_b32_e32 v4, 0x840, v4
	v_and_b32_e32 v0, 0x3f8, v0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v54, v7
	v_cvt_f32_i32_e32 v55, v8
	v_cvt_f32_i32_e32 v40, v12
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshl_add_u32 v12, v1, 1, 0
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_xor_b32_e32 v0, v4, v0
	.loc	1 168 15 is_stmt 1              ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v37, v9
	v_cvt_f32_i32_e32 v38, v10
	v_cvt_f32_i32_e32 v39, v11
	v_cvt_f32_i32_e32 v41, v13
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_lshl_or_b32 v18, v2, 11, v0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v42, v14
	v_cvt_f32_i32_e32 v43, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_xad_u32 v99, v18, 8, 0
	v_xad_u32 v100, v18, 16, 0
	v_xad_u32 v101, v18, 24, 0
	v_xad_u32 v102, v18, 32, 0
	v_xad_u32 v103, v18, 40, 0
	v_xad_u32 v104, v18, 48, 0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v46, v22
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v47, v24
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s2, s17, 3
	s_mul_i32 s8, s17, 7
	s_mul_i32 s9, s17, 9
	s_mul_i32 s10, s17, 10
	s_mul_i32 s11, s17, 11
	s_mul_i32 s12, s17, 12
	s_mul_i32 s13, s17, 13
	s_mul_i32 s14, s17, 14
	s_mul_i32 s15, s17, 15
	s_mul_i32 s16, s17, 17
	s_mul_i32 s18, s17, 18
	s_mul_i32 s19, s17, 19
	s_mul_i32 s20, s17, 20
	s_mul_i32 s21, s17, 21
	s_mul_i32 s22, s17, 22
	s_mul_i32 s23, s17, 23
	s_mul_i32 s24, s17, 24
	s_mul_i32 s25, s17, 25
	s_mul_i32 s26, s17, 26
	s_mul_i32 s27, s17, 27
	s_mul_i32 s28, s17, 28
	s_mul_i32 s29, s17, 29
	s_mul_i32 s30, s17, 30
	s_mul_i32 s31, s17, 31
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 169 14 is_stmt 1              ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v33
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v36, 1, v34
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshlrev_b32_e32 v5, 2, v1
	v_lshlrev_b32_e32 v6, 5, v3
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v7, 3, v1
	v_lshlrev_b32_e32 v8, 2, v2
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v3, 6, v3
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_add3_u32 v5, 0, v5, v6
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_add_nc_u32_e32 v98, 0, v18
	v_xad_u32 v33, v18, 56, 0
	.loc	1 169 14 is_stmt 1              ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v35
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_or3_b32 v8, v7, v3, v8
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_lshl_add_u32 v1, v2, 1, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 247 23 is_stmt 1              ; generate_amdgcn.py:247:23
	s_mul_i32 s5, s3, s17
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_xad_u32 v84, 0x840, v8, 0
	v_xad_u32 v85, 0x1008, v8, 0
	v_xad_u32 v86, 0x1848, v8, 0
	v_xad_u32 v87, 0x2010, v8, 0
	v_xad_u32 v88, 0x2850, v8, 0
	v_xad_u32 v89, 0x3018, v8, 0
	v_xad_u32 v90, 0x3858, v8, 0
	v_xad_u32 v91, 0x4020, v8, 0
	v_xad_u32 v92, 0x4860, v8, 0
	v_xad_u32 v93, 0x5868, v8, 0
	v_xad_u32 v94, 0x6030, v8, 0
	v_xad_u32 v95, 0x6870, v8, 0
	v_xad_u32 v96, 0x7038, v8, 0
	v_xad_u32 v97, 0x7878, v8, 0
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_add_i32 s33, s5, s17
	s_lshl1_add_u32 s34, s17, s5
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v56, s5, v34, 2
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s3, s17, 5
	s_mul_i32 s4, s17, 6
	s_add_i32 s35, s5, s2
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v57, s33, v34, 2
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_lshl2_add_u32 s36, s17, s5
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v58, s34, v34, 2
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_add_i32 s37, s5, s3
	s_add_i32 s38, s5, s4
	s_add_i32 s8, s5, s8
	s_lshl3_add_u32 s39, s17, s5
	s_add_i32 s9, s5, s9
	s_add_i32 s10, s5, s10
	s_add_i32 s11, s5, s11
	s_add_i32 s12, s5, s12
	s_add_i32 s13, s5, s13
	s_add_i32 s14, s5, s14
	s_add_i32 s15, s5, s15
	s_lshl4_add_u32 s17, s17, s5
	s_add_i32 s16, s5, s16
	s_add_i32 s18, s5, s18
	s_add_i32 s19, s5, s19
	s_add_i32 s20, s5, s20
	s_add_i32 s21, s5, s21
	s_add_i32 s22, s5, s22
	s_add_i32 s23, s5, s23
	s_add_i32 s24, s5, s24
	s_add_i32 s25, s5, s25
	s_add_i32 s26, s5, s26
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	s_mov_b32 s2, s6
	s_mov_b32 s3, s7
	v_add_lshl_u32 v59, s35, v34, 2
	v_add_lshl_u32 v60, s36, v34, 2
	v_add_lshl_u32 v61, s37, v34, 2
	v_add_lshl_u32 v62, s38, v34, 2
	v_add_lshl_u32 v63, s8, v34, 2
	v_add_lshl_u32 v64, s39, v34, 2
	v_add_lshl_u32 v65, s9, v34, 2
	v_add_lshl_u32 v66, s10, v34, 2
	v_add_lshl_u32 v67, s11, v34, 2
	v_add_lshl_u32 v68, s12, v34, 2
	v_add_lshl_u32 v69, s13, v34, 2
	v_add_lshl_u32 v70, s14, v34, 2
	v_add_lshl_u32 v71, s15, v34, 2
	v_add_lshl_u32 v72, s17, v34, 2
	v_add_lshl_u32 v73, s16, v34, 2
	v_add_lshl_u32 v74, s18, v34, 2
	v_add_lshl_u32 v75, s19, v34, 2
	v_add_lshl_u32 v76, s20, v34, 2
	v_add_lshl_u32 v77, s21, v34, 2
	v_add_lshl_u32 v78, s22, v34, 2
	v_add_lshl_u32 v79, s23, v34, 2
	v_add_lshl_u32 v80, s24, v34, 2
	v_add_lshl_u32 v81, s25, v34, 2
	v_add_lshl_u32 v82, s26, v34, 2
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_add_i32 s27, s5, s27
	s_add_i32 s28, s5, s28
	s_add_i32 s29, s5, s29
	s_add_i32 s30, s5, s30
	s_add_i32 s4, s5, s31
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v36
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_xad_u32 v36, 0x5028, v8, 0
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	ds_store_b32 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_add_nc_u32_e32 v83, 0, v8
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	ds_load_b128 v[8:11], v12 offset:512
	ds_load_b128 v[12:15], v12 offset:528
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v129, v11, v18 :: v_dual_mul_f32 v22, v0, v20
	v_mul_f32_e32 v35, v2, v20
	v_mul_f32_e32 v109, v7, v20
	v_mul_f32_e32 v111, v9, v20
	v_dual_mul_f32 v110, v8, v20 :: v_dual_mul_f32 v131, v13, v18
	v_dual_mul_f32 v115, v13, v20 :: v_dual_mul_f32 v126, v8, v18
	v_mul_f32_e32 v118, v0, v18
	v_dual_mul_f32 v121, v3, v18 :: v_dual_mul_f32 v24, v1, v20
	v_dual_mul_f32 v108, v6, v20 :: v_dual_mul_f32 v119, v1, v18
	v_mul_f32_e32 v120, v2, v18
	v_dual_mul_f32 v127, v9, v18 :: v_dual_mul_f32 v112, v10, v20
	v_mul_f32_e32 v133, v15, v18
	v_dual_mul_f32 v117, v15, v20 :: v_dual_mul_f32 v128, v10, v18
	v_dual_mul_f32 v122, v4, v18 :: v_dual_mul_f32 v105, v3, v20
	v_mul_f32_e32 v107, v5, v20
	v_dual_mul_f32 v113, v11, v20 :: v_dual_mul_f32 v124, v6, v18
	v_mul_f32_e32 v106, v4, v20
	v_dual_mul_f32 v114, v12, v20 :: v_dual_mul_f32 v1, v118, v17
	v_dual_mul_f32 v116, v14, v20 :: v_dual_mul_f32 v123, v5, v18
	v_mul_f32_e32 v125, v7, v18
	v_dual_mul_f32 v130, v12, v18 :: v_dual_mul_f32 v3, v119, v44
	v_dual_mul_f32 v132, v14, v18 :: v_dual_mul_f32 v7, v121, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v0, v22, v37 :: v_dual_mul_f32 v11, v123, v46
	v_dual_mul_f32 v4, v35, v39 :: v_dual_mul_f32 v17, v126, v48
	v_mul_f32_e32 v14, v109, v16
	v_mul_f32_e32 v16, v110, v25
	v_dual_mul_f32 v2, v24, v38 :: v_dual_mul_f32 v9, v122, v21
	v_mul_f32_e32 v12, v108, v43
	v_dual_mul_f32 v18, v111, v26 :: v_dual_mul_f32 v25, v130, v52
	v_mul_f32_e32 v5, v120, v19
	v_dual_mul_f32 v19, v127, v49 :: v_dual_mul_f32 v20, v112, v27
	v_mul_f32_e32 v27, v131, v53
	v_dual_mul_f32 v21, v128, v50 :: v_dual_mul_f32 v6, v105, v40
	v_dual_mul_f32 v13, v124, v23 :: v_dual_mul_f32 v10, v107, v42
	v_mul_f32_e32 v23, v129, v51
	v_mul_f32_e32 v22, v113, v28
	v_dual_mul_f32 v8, v106, v41 :: v_dual_mul_f32 v15, v125, v47
	v_mul_f32_e32 v24, v114, v29
	v_mul_f32_e32 v26, v115, v30
	v_mul_f32_e32 v28, v116, v31
	v_dual_mul_f32 v30, v117, v32 :: v_dual_mul_f32 v29, v132, v54
	v_mul_f32_e32 v31, v133, v55
	ds_store_2addr_stride64_b64 v98, v[0:1], v[16:17] offset1:2
	ds_store_2addr_stride64_b64 v99, v[2:3], v[18:19] offset1:2
	ds_store_2addr_stride64_b64 v100, v[4:5], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v101, v[6:7], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v102, v[8:9], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v103, v[10:11], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v104, v[12:13], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v33, v[14:15], v[30:31] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v83
	ds_load_b64 v[2:3], v84
	ds_load_b64 v[4:5], v85
	ds_load_b64 v[6:7], v86
	ds_load_b64 v[8:9], v87
	ds_load_b64 v[10:11], v88
	ds_load_b64 v[12:13], v89
	ds_load_b64 v[14:15], v90
	ds_load_b64 v[16:17], v91
	ds_load_b64 v[18:19], v92
	ds_load_b64 v[20:21], v36
	ds_load_b64 v[22:23], v93
	ds_load_b64 v[24:25], v94
	ds_load_b64 v[26:27], v95
	ds_load_b64 v[28:29], v96
	ds_load_b64 v[30:31], v97
	.loc	1 247 9 is_stmt 1               ; generate_amdgcn.py:247:9
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v56, s[0:3], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v2, v57, s[0:3], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v4, v58, s[0:3], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v6, v59, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v8, v60, s[0:3], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v10, v61, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v12, v62, s[0:3], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v14, v63, s[0:3], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v16, v64, s[0:3], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v18, v65, s[0:3], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v20, v66, s[0:3], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v22, v67, s[0:3], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v24, v68, s[0:3], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v26, v69, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v28, v70, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v30, v71, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v72, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v73, s[0:3], 0 offen
	buffer_atomic_add_f32 v5, v74, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v75, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v76, s[0:3], 0 offen
	buffer_atomic_add_f32 v11, v77, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v78, s[0:3], 0 offen
	buffer_atomic_add_f32 v15, v79, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v80, s[0:3], 0 offen
	buffer_atomic_add_f32 v19, v81, s[0:3], 0 offen
	buffer_atomic_add_f32 v21, v82, s[0:3], 0 offen
	v_add_lshl_u32 v32, s27, v34, 2
	v_add_lshl_u32 v33, s28, v34, 2
	v_add_lshl_u32 v35, s29, v34, 2
	v_add_lshl_u32 v36, s30, v34, 2
	v_add_lshl_u32 v0, s4, v34, 2
	s_clause 0x4
	buffer_atomic_add_f32 v23, v32, s[0:3], 0 offen
	buffer_atomic_add_f32 v25, v33, s[0:3], 0 offen
	buffer_atomic_add_f32 v27, v35, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v36, s[0:3], 0 offen
	buffer_atomic_add_f32 v31, v0, s[0:3], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp14:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk
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
		.amdhsa_next_free_sgpr 40
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
		.amdhsa_inst_pref_size 38
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.num_vgpr, 134
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4788
; TotalNumSgprs: 42
; NumVgprs: 134
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 42
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
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     134
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
