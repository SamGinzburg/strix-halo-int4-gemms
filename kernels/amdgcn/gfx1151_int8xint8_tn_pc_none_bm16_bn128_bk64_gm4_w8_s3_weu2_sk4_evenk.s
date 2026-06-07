	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[16:17], s[0:1], 0x30
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v18, 7, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v3, 2, v0
	v_lshrrev_b32_e32 v5, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v17, 2, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v30, 4, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v2, 4, v18
	v_or_b32_e32 v29, 0x3f0, v0
	s_mov_b32 s22, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v4, 12, v17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v27, 0, v30
	s_load_b32 s26, s[0:1], 0x38
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s16, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[6:7], null, s17, v5, v[2:3]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v7, s17, 5, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s14, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s14
	s_sub_i32 s13, 0, s14
	v_rcp_iflag_f32_e32 v1, s8
	s_load_b128 s[8:11], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s12, v1
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v1, s16, v3
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s12, s12, 0x4f7ffffe
	s_cvt_u32_f32 s12, s12
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s13, s12
	s_mul_hi_u32 s4, s12, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s4, s12, s4
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[10:11]
	s_mul_hi_u32 s4, s5, s4
	s_xor_b32 s10, s2, s7
	s_mul_i32 s11, s4, s14
	s_ashr_i32 s20, s10, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s14
	s_cmp_ge_u32 s5, s14
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s14
	s_mov_b32 s11, 0x31027000
	s_cselect_b32 s4, s10, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_addk_i32 s26, 0xff
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s21, s4, s20
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s25, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s21, s20
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s19, s4, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s5, s16, s25
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s14, s10
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s18, s2, 4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s17, s25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s26, 0xff
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v1, v1, v4, s18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s19, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s26, 0x1ff
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v8, s5, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s24, s17, 8
	v_add_nc_u32_e32 v9, s4, v6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s23, s16, 8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s4, v7
	s_add_i32 s4, s4, s24
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v1, s5, s23, v1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v6, s4, v6
	v_add_nc_u32_e32 v7, s4, v7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_cndmask_b32_e64 v11, 0x80000000, v10, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s15, s11
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v16, 0x80000000, v7, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v15, v8, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[7:10], v9, s[12:15], 0 offen
	buffer_load_b128 v[11:14], v11, s[12:15], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v1, v1, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[19:22], v6, s[12:15], 0 offen
	buffer_load_b128 v[23:26], v16, s[12:15], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v16, 0, v17
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s26, 0x2ff
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(5)
	ds_store_b32 v16, v15 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v27, v[7:10]
	s_waitcnt vmcnt(3)
	ds_store_b128 v27, v[11:14] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v16, v1 offset:17408
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v27, v[19:22] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v27, v[23:26] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v1, 0x3f0, v0
	s_mov_b32 s14, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow61
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	v_and_b32_e32 v28, 15, v0
	v_and_b32_e32 v27, 0x70, v6
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v1, s25, v5
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_add3_u32 v3, s25, v3, 0x200
	s_lshl_b32 s15, s21, 7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s14, s26, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v5, 0x220, v1
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v1, 0x200, v1
	v_mul_lo_u32 v7, s16, v3
	s_lshl_b32 s26, s20, 7
	v_mul_lo_u32 v5, s17, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v6, s17, v1
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v25, 0
	v_add3_u32 v31, v7, s18, v4
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v22, 0
	v_add3_u32 v5, v5, s15, v2
	v_add3_u32 v6, v6, s15, v2
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v7, v1
	v_subrev_nc_u32_e32 v32, s26, v5
	v_subrev_nc_u32_e32 v33, s26, v6
	v_mov_b32_e32 v5, v1
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v21, 0
	s_add_i32 s25, 0, 0x4000
	s_add_i32 s21, 0, 0x4400
	s_add_i32 s20, 0, 0x2000
	s_add_i32 s16, s14, -2
	s_mov_b32 s26, 1
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v34, v31, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v33, s[12:15], 0 offen
	buffer_load_b128 v[13:16], v32, s[12:15], 0 offen
	s_mov_b32 s27, s25
	s_mov_b32 s25, s21
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v35, s27, v28
	s_mov_b32 s21, s22
	v_add_nc_u32_e32 v36, s27, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v37, s21, v27, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v35 offset:208
	ds_load_u8 v39, v35 offset:240
	ds_load_u8 v40, v35 offset:224
	ds_load_u8 v41, v35 offset:192
	ds_load_u8 v42, v35 offset:144
	ds_load_u8 v43, v35 offset:176
	ds_load_u8 v44, v35 offset:160
	ds_load_u8 v45, v35 offset:128
	ds_load_u8 v46, v35 offset:80
	ds_load_u8 v47, v35 offset:112
	ds_load_u8 v48, v35 offset:96
	ds_load_u8 v49, v35 offset:64
	ds_load_u8 v50, v35
	ds_load_u8 v51, v35 offset:16
	ds_load_u8 v52, v35 offset:32
	ds_load_u8 v53, v35 offset:48
	ds_load_u8 v54, v37 offset:1664
	ds_load_u8 v55, v37 offset:1920
	ds_load_u8 v56, v37 offset:1792
	ds_load_u8 v57, v37 offset:1536
	ds_load_u8 v58, v37 offset:1152
	ds_load_u8 v59, v37 offset:1408
	ds_load_u8 v60, v37 offset:1280
	ds_load_u8 v61, v37 offset:1024
	ds_load_u8 v62, v37 offset:640
	ds_load_u8 v63, v37 offset:896
	ds_load_u8 v64, v37 offset:768
	ds_load_u8 v65, v37 offset:512
	ds_load_u8 v66, v37 offset:128
	ds_load_u8 v67, v37 offset:384
	ds_load_u8 v68, v37 offset:256
	ds_load_u8 v69, v37
	ds_load_u8 v70, v35 offset:464
	ds_load_u8 v71, v35 offset:496
	ds_load_u8 v72, v35 offset:480
	ds_load_u8 v73, v35 offset:448
	ds_load_u8 v74, v35 offset:400
	ds_load_u8 v75, v35 offset:432
	ds_load_u8 v76, v35 offset:416
	ds_load_u8 v77, v35 offset:384
	ds_load_u8 v78, v35 offset:336
	ds_load_u8 v79, v35 offset:368
	ds_load_u8 v80, v35 offset:352
	ds_load_u8 v81, v35 offset:320
	ds_load_u8 v82, v35 offset:272
	ds_load_u8 v83, v35 offset:304
	ds_load_u8 v84, v35 offset:288
	ds_load_u8 v85, v35 offset:256
	ds_load_u8 v86, v37 offset:3712
	ds_load_u8 v87, v37 offset:3968
	ds_load_u8 v88, v37 offset:3840
	ds_load_u8 v89, v37 offset:3584
	ds_load_u8 v90, v37 offset:3200
	ds_load_u8 v91, v37 offset:3456
	ds_load_u8 v92, v37 offset:3328
	ds_load_u8 v93, v37 offset:3072
	ds_load_u8 v94, v37 offset:2688
	ds_load_u8 v95, v37 offset:2944
	ds_load_u8 v96, v37 offset:2816
	ds_load_u8 v97, v37 offset:2560
	ds_load_u8 v98, v37 offset:2176
	ds_load_u8 v99, v37 offset:2432
	ds_load_u8 v100, v37 offset:2304
	ds_load_u8 v101, v37 offset:2048
	ds_load_u8 v102, v35 offset:720
	ds_load_u8 v103, v35 offset:752
	ds_load_u8 v104, v35 offset:736
	ds_load_u8 v105, v35 offset:704
	ds_load_u8 v106, v35 offset:656
	ds_load_u8 v107, v35 offset:688
	ds_load_u8 v108, v35 offset:672
	ds_load_u8 v109, v35 offset:640
	ds_load_u8 v110, v35 offset:592
	ds_load_u8 v111, v35 offset:624
	ds_load_u8 v112, v35 offset:608
	ds_load_u8 v113, v35 offset:576
	ds_load_u8 v114, v35 offset:528
	ds_load_u8 v115, v35 offset:560
	ds_load_u8 v116, v35 offset:544
	ds_load_u8 v117, v35 offset:512
	ds_load_u8 v118, v37 offset:5760
	ds_load_u8 v119, v37 offset:6016
	ds_load_u8 v120, v37 offset:5888
	ds_load_u8 v121, v37 offset:5632
	ds_load_u8 v122, v37 offset:5248
	ds_load_u8 v123, v37 offset:5504
	ds_load_u8 v124, v37 offset:5376
	ds_load_u8 v125, v37 offset:5120
	ds_load_u8 v126, v37 offset:4736
	ds_load_u8 v127, v37 offset:4992
	ds_load_u8 v128, v37 offset:4864
	ds_load_u8 v129, v37 offset:4608
	ds_load_u8 v130, v37 offset:4224
	ds_load_u8 v131, v37 offset:4480
	ds_load_u8 v132, v37 offset:4352
	ds_load_u8 v133, v37 offset:4096
	ds_load_u8 v134, v35 offset:976
	ds_load_u8 v36, v36
	ds_load_u8 v135, v35 offset:992
	ds_load_u8 v136, v35 offset:960
	ds_load_u8 v137, v35 offset:912
	ds_load_u8 v138, v35 offset:944
	ds_load_u8 v139, v35 offset:928
	ds_load_u8 v140, v35 offset:896
	ds_load_u8 v141, v35 offset:848
	ds_load_u8 v142, v35 offset:880
	ds_load_u8 v143, v35 offset:864
	ds_load_u8 v144, v35 offset:832
	ds_load_u8 v145, v35 offset:784
	ds_load_u8 v146, v35 offset:816
	ds_load_u8 v147, v35 offset:800
	ds_load_u8 v35, v35 offset:768
	ds_load_u8 v148, v37 offset:7808
	ds_load_u8 v149, v37 offset:8064
	ds_load_u8 v150, v37 offset:7936
	ds_load_u8 v151, v37 offset:7680
	ds_load_u8 v152, v37 offset:7296
	ds_load_u8 v153, v37 offset:7552
	ds_load_u8 v154, v37 offset:7424
	ds_load_u8 v155, v37 offset:7168
	ds_load_u8 v156, v37 offset:6784
	ds_load_u8 v157, v37 offset:7040
	ds_load_u8 v158, v37 offset:6912
	ds_load_u8 v159, v37 offset:6656
	ds_load_u8 v160, v37 offset:6272
	ds_load_u8 v161, v37 offset:6528
	ds_load_u8 v162, v37 offset:6400
	ds_load_u8 v37, v37 offset:6144
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v38, v41, v38, 0xc0c0004
	v_perm_b32 v39, v40, v39, 0xc0c0004
	v_perm_b32 v40, v45, v42, 0xc0c0004
	v_perm_b32 v41, v44, v43, 0xc0c0004
	v_perm_b32 v42, v49, v46, 0xc0c0004
	v_perm_b32 v43, v48, v47, 0xc0c0004
	v_perm_b32 v47, v50, v51, 0xc0c0004
	v_perm_b32 v48, v52, v53, 0xc0c0004
	v_perm_b32 v49, v57, v54, 0xc0c0004
	v_perm_b32 v50, v56, v55, 0xc0c0004
	v_perm_b32 v51, v61, v58, 0xc0c0004
	v_perm_b32 v52, v60, v59, 0xc0c0004
	v_perm_b32 v53, v65, v62, 0xc0c0004
	v_perm_b32 v54, v64, v63, 0xc0c0004
	v_perm_b32 v55, v69, v66, 0xc0c0004
	v_perm_b32 v56, v68, v67, 0xc0c0004
	v_perm_b32 v57, v73, v70, 0xc0c0004
	v_perm_b32 v58, v72, v71, 0xc0c0004
	v_perm_b32 v59, v77, v74, 0xc0c0004
	v_perm_b32 v60, v76, v75, 0xc0c0004
	v_perm_b32 v61, v81, v78, 0xc0c0004
	v_perm_b32 v62, v80, v79, 0xc0c0004
	v_perm_b32 v63, v85, v82, 0xc0c0004
	v_perm_b32 v64, v84, v83, 0xc0c0004
	v_perm_b32 v65, v89, v86, 0xc0c0004
	v_perm_b32 v66, v88, v87, 0xc0c0004
	v_perm_b32 v67, v93, v90, 0xc0c0004
	v_perm_b32 v68, v92, v91, 0xc0c0004
	v_perm_b32 v69, v97, v94, 0xc0c0004
	v_perm_b32 v70, v96, v95, 0xc0c0004
	v_perm_b32 v71, v101, v98, 0xc0c0004
	v_perm_b32 v72, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v89, v136, v134, 0xc0c0004
	v_perm_b32 v36, v135, v36, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v35, v35, v145, 0xc0c0004
	v_perm_b32 v94, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v160, 0xc0c0004
	v_perm_b32 v101, v162, v161, 0xc0c0004
	v_lshl_or_b32 v46, v39, 16, v38
	v_lshl_or_b32 v45, v41, 16, v40
	v_lshl_or_b32 v44, v43, 16, v42
	v_lshl_or_b32 v43, v48, 16, v47
	v_lshl_or_b32 v50, v50, 16, v49
	v_lshl_or_b32 v49, v52, 16, v51
	v_lshl_or_b32 v48, v54, 16, v53
	v_lshl_or_b32 v47, v56, 16, v55
	v_perm_b32 v73, v105, v102, 0xc0c0004
	v_perm_b32 v74, v104, v103, 0xc0c0004
	v_perm_b32 v75, v109, v106, 0xc0c0004
	v_perm_b32 v76, v108, v107, 0xc0c0004
	v_perm_b32 v77, v113, v110, 0xc0c0004
	v_perm_b32 v78, v112, v111, 0xc0c0004
	v_perm_b32 v79, v117, v114, 0xc0c0004
	v_perm_b32 v80, v116, v115, 0xc0c0004
	v_perm_b32 v81, v121, v118, 0xc0c0004
	v_perm_b32 v82, v120, v119, 0xc0c0004
	v_perm_b32 v83, v125, v122, 0xc0c0004
	v_perm_b32 v84, v124, v123, 0xc0c0004
	v_perm_b32 v85, v129, v126, 0xc0c0004
	v_perm_b32 v86, v128, v127, 0xc0c0004
	v_perm_b32 v87, v133, v130, 0xc0c0004
	v_perm_b32 v88, v132, v131, 0xc0c0004
	v_lshl_or_b32 v54, v58, 16, v57
	v_lshl_or_b32 v53, v60, 16, v59
	v_lshl_or_b32 v52, v62, 16, v61
	v_lshl_or_b32 v51, v64, 16, v63
	v_lshl_or_b32 v58, v66, 16, v65
	v_lshl_or_b32 v57, v68, 16, v67
	v_lshl_or_b32 v56, v70, 16, v69
	v_lshl_or_b32 v55, v72, 16, v71
	v_lshl_or_b32 v70, v36, 16, v89
	v_lshl_or_b32 v67, v94, 16, v35
	v_lshl_or_b32 v71, v101, 16, v37
	v_wmma_i32_16x16x16_iu8 v[35:42], v[47:50], v[43:46], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v90, v140, v137, 0xc0c0004
	v_perm_b32 v91, v139, v138, 0xc0c0004
	v_perm_b32 v92, v144, v141, 0xc0c0004
	v_perm_b32 v93, v143, v142, 0xc0c0004
	v_perm_b32 v95, v151, v148, 0xc0c0004
	v_perm_b32 v96, v150, v149, 0xc0c0004
	v_perm_b32 v97, v155, v152, 0xc0c0004
	v_perm_b32 v98, v154, v153, 0xc0c0004
	v_perm_b32 v99, v159, v156, 0xc0c0004
	v_perm_b32 v100, v158, v157, 0xc0c0004
	v_lshl_or_b32 v62, v74, 16, v73
	v_lshl_or_b32 v61, v76, 16, v75
	v_lshl_or_b32 v60, v78, 16, v77
	v_lshl_or_b32 v59, v80, 16, v79
	v_lshl_or_b32 v66, v82, 16, v81
	v_lshl_or_b32 v65, v84, 16, v83
	v_lshl_or_b32 v64, v86, 16, v85
	v_lshl_or_b32 v63, v88, 16, v87
	v_wmma_i32_16x16x16_iu8 v[35:42], v[55:58], v[51:54], v[35:42] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v91, 16, v90
	v_lshl_or_b32 v68, v93, 16, v92
	v_lshl_or_b32 v74, v96, 16, v95
	v_lshl_or_b32 v73, v98, 16, v97
	v_lshl_or_b32 v72, v100, 16, v99
	v_wmma_i32_16x16x16_iu8 v[35:42], v[63:66], v[59:62], v[35:42] neg_lo:[1,1,0]
	s_mov_b32 s22, s20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s20, s26, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s20, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[35:42], v[71:74], v[67:70], v[35:42] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s26, s20, 0
	s_add_i32 s16, s16, -1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s20, s26, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s21, s26, 13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s27, s20, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s20, s21, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v25, v25, v37 :: v_dual_add_nc_u32 v32, s24, v32
	v_dual_add_f32 v20, v20, v35 :: v_dual_add_nc_u32 v33, s24, v33
	v_dual_add_f32 v26, v26, v36 :: v_dual_add_nc_u32 v31, s23, v31
	v_dual_add_f32 v22, v22, v40 :: v_dual_add_nc_u32 v163, s27, v17
	v_dual_add_f32 v21, v21, v41 :: v_dual_add_nc_u32 v164, s20, v30
	v_dual_add_f32 v24, v24, v38 :: v_dual_add_f32 v23, v23, v39
	v_add_f32_e32 v19, v19, v42
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s21, s27, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s16, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v163, v34 offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v164, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v164, v[13:16] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v29
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v20, 0
	s_add_i32 s25, 0, 0x4000
	s_add_i32 s21, 0, 0x4400
	s_add_i32 s20, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v2, v27, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v15, s25, v28
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s22, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v15 offset:208
	ds_load_u8 v4, v15 offset:224
	ds_load_u8 v5, v15 offset:192
	ds_load_u8 v7, v15 offset:240
	ds_load_u8 v8, v15 offset:144
	ds_load_u8 v9, v15 offset:176
	ds_load_u8 v10, v15 offset:160
	ds_load_u8 v11, v15 offset:128
	ds_load_u8 v12, v15 offset:112
	ds_load_u8 v13, v15 offset:80
	ds_load_u8 v14, v15 offset:96
	ds_load_u8 v29, v15 offset:64
	ds_load_u8 v30, v15
	ds_load_u8 v31, v15 offset:16
	ds_load_u8 v32, v15 offset:32
	ds_load_u8 v33, v15 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v4, v4, v7, 0xc0c0004
	v_perm_b32 v3, v5, v3, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v11, v8, 0xc0c0004
	v_perm_b32 v8, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v10, v14, v12, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v29, v13, 0xc0c0004
	v_lshl_or_b32 v14, v4, 16, v3
	v_mov_b32_e32 v3, 0
	ds_load_u8 v5, v16 offset:1664
	ds_load_u8 v34, v16 offset:1920
	ds_load_u8 v35, v16 offset:1792
	ds_load_u8 v36, v16 offset:1536
	ds_load_u8 v37, v16 offset:1152
	ds_load_u8 v38, v16 offset:1408
	ds_load_u8 v39, v16 offset:1280
	ds_load_u8 v40, v16 offset:1024
	ds_load_u8 v41, v16 offset:640
	ds_load_u8 v42, v16 offset:896
	ds_load_u8 v43, v16 offset:768
	ds_load_u8 v44, v16 offset:512
	ds_load_u8 v45, v16 offset:128
	ds_load_u8 v46, v16 offset:384
	ds_load_u8 v47, v16 offset:256
	ds_load_u8 v48, v16
	ds_load_u8 v49, v15 offset:288
	ds_load_u8 v50, v15 offset:256
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v6, s25, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v11, v32, v33, 0xc0c0004
	v_lshl_or_b32 v13, v8, 16, v7
	v_lshl_or_b32 v12, v10, 16, v9
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v36, v5, 0xc0c0004
	v_perm_b32 v5, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v7, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v32, v5, 16, v4
	v_mov_b32_e32 v5, v3
	ds_load_u8 v51, v6
	v_perm_b32 v6, v30, v31, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v8, v44, v41, 0xc0c0004
	v_perm_b32 v9, v43, v42, 0xc0c0004
	v_mov_b32_e32 v4, v3
	ds_load_u8 v33, v15 offset:464
	ds_load_u8 v34, v15 offset:480
	ds_load_u8 v35, v15 offset:448
	v_lshl_or_b32 v11, v11, 16, v6
	v_perm_b32 v6, v40, v37, 0xc0c0004
	ds_load_u8 v36, v15 offset:496
	ds_load_u8 v37, v15 offset:400
	ds_load_u8 v38, v15 offset:432
	ds_load_u8 v39, v15 offset:416
	ds_load_u8 v40, v15 offset:384
	ds_load_u8 v41, v15 offset:336
	ds_load_u8 v42, v15 offset:352
	ds_load_u8 v43, v15 offset:320
	ds_load_u8 v44, v15 offset:368
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v10, v48, v45, 0xc0c0004
	v_perm_b32 v29, v47, v46, 0xc0c0004
	ds_load_u8 v45, v15 offset:272
	ds_load_u8 v46, v15 offset:304
	v_lshl_or_b32 v31, v7, 16, v6
	v_lshl_or_b32 v30, v9, 16, v8
	v_mov_b32_e32 v6, v3
	v_lshl_or_b32 v29, v29, 16, v10
	v_mov_b32_e32 v7, v3
	v_mov_b32_e32 v8, v3
	v_mov_b32_e32 v9, v3
	v_mov_b32_e32 v10, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[29:32], v[11:14], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v12, v34, v36, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v40, v37, 0xc0c0004
	v_perm_b32 v29, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v30, v43, v41, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v31, v42, v44, 0xc0c0004
	ds_load_u8 v32, v16 offset:3712
	ds_load_u8 v34, v16 offset:3968
	ds_load_u8 v36, v16 offset:3840
	ds_load_u8 v37, v16 offset:3584
	ds_load_u8 v38, v16 offset:3200
	ds_load_u8 v39, v16 offset:3456
	ds_load_u8 v40, v16 offset:3328
	ds_load_u8 v41, v16 offset:3072
	ds_load_u8 v42, v16 offset:2688
	ds_load_u8 v43, v16 offset:2944
	ds_load_u8 v44, v16 offset:2816
	ds_load_u8 v55, v16 offset:2560
	ds_load_u8 v56, v16 offset:2176
	ds_load_u8 v57, v16 offset:2432
	ds_load_u8 v58, v16 offset:2304
	ds_load_u8 v59, v16 offset:2048
	v_perm_b32 v11, v35, v33, 0xc0c0004
	v_lshl_or_b32 v13, v29, 16, v13
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v29, v49, v46, 0xc0c0004
	ds_load_u8 v33, v15 offset:592
	ds_load_u8 v35, v15 offset:608
	ds_load_u8 v47, v15 offset:576
	ds_load_u8 v48, v15 offset:528
	ds_load_u8 v52, v15 offset:560
	ds_load_u8 v53, v15 offset:544
	ds_load_u8 v54, v15 offset:512
	v_lshl_or_b32 v14, v12, 16, v11
	v_perm_b32 v11, v50, v45, 0xc0c0004
	ds_load_u8 v45, v15 offset:720
	ds_load_u8 v50, v15 offset:736
	ds_load_u8 v60, v15 offset:704
	ds_load_u8 v61, v15 offset:752
	ds_load_u8 v62, v15 offset:656
	ds_load_u8 v63, v15 offset:688
	ds_load_u8 v64, v15 offset:672
	ds_load_u8 v65, v15 offset:640
	v_lshl_or_b32 v12, v31, 16, v30
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v31, v36, v34, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v36, v40, v39, 0xc0c0004
	v_perm_b32 v30, v37, v32, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v34, v41, v38, 0xc0c0004
	v_lshl_or_b32 v11, v29, 16, v11
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v38, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v37, v55, v42, 0xc0c0004
	v_lshl_or_b32 v32, v31, 16, v30
	v_lshl_or_b32 v31, v36, 16, v34
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v40, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v39, v59, v56, 0xc0c0004
	v_lshl_or_b32 v30, v38, 16, v37
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v33, v47, v33, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v34, v60, v45, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v50, v61, 0xc0c0004
	v_lshl_or_b32 v29, v40, 16, v39
	ds_load_u8 v39, v15 offset:624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v40, v65, v62, 0xc0c0004
	ds_load_u8 v42, v16 offset:5760
	ds_load_u8 v43, v16 offset:6016
	ds_load_u8 v44, v16 offset:5888
	ds_load_u8 v45, v16 offset:5632
	ds_load_u8 v46, v16 offset:5248
	ds_load_u8 v49, v16 offset:5504
	ds_load_u8 v50, v16 offset:5376
	ds_load_u8 v55, v16 offset:5120
	ds_load_u8 v56, v16 offset:4736
	ds_load_u8 v57, v16 offset:4992
	ds_load_u8 v58, v16 offset:4864
	ds_load_u8 v59, v16 offset:4608
	ds_load_u8 v60, v16 offset:4224
	ds_load_u8 v61, v16 offset:4480
	ds_load_u8 v62, v16 offset:4352
	ds_load_u8 v63, v16 offset:4096
	v_wmma_i32_16x16x16_iu8 v[3:10], v[29:32], v[11:14], v[3:10] neg_lo:[1,1,0]
	v_lshl_or_b32 v14, v38, 16, v34
	v_perm_b32 v11, v54, v48, 0xc0c0004
	v_lshl_or_b32 v13, v41, 16, v40
	v_perm_b32 v29, v53, v52, 0xc0c0004
	ds_load_u8 v36, v15 offset:800
	ds_load_u8 v37, v15 offset:768
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v31, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v30, v45, v42, 0xc0c0004
	v_lshl_or_b32 v11, v29, 16, v11
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v34, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v32, v31, 16, v30
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v38, v58, v57, 0xc0c0004
	v_perm_b32 v35, v35, v39, 0xc0c0004
	ds_load_u8 v39, v15 offset:784
	ds_load_u8 v47, v15 offset:848
	ds_load_u8 v64, v15 offset:864
	ds_load_u8 v65, v15 offset:832
	ds_load_u8 v66, v15 offset:816
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v41, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v40, v63, v60, 0xc0c0004
	v_lshl_or_b32 v12, v35, 16, v33
	v_perm_b32 v33, v55, v46, 0xc0c0004
	v_perm_b32 v35, v59, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v29, v41, 16, v40
	v_lshl_or_b32 v31, v34, 16, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v30, v38, 16, v35
	ds_load_u8 v33, v15 offset:976
	ds_load_u8 v34, v15 offset:992
	ds_load_u8 v35, v15 offset:960
	ds_load_u8 v38, v15 offset:912
	ds_load_u8 v40, v15 offset:944
	ds_load_u8 v41, v15 offset:928
	ds_load_u8 v42, v15 offset:896
	ds_load_u8 v15, v15 offset:880
	ds_load_u8 v43, v16 offset:7808
	ds_load_u8 v44, v16 offset:8064
	ds_load_u8 v45, v16 offset:7936
	ds_load_u8 v46, v16 offset:7680
	ds_load_u8 v48, v16 offset:7296
	ds_load_u8 v49, v16 offset:7552
	ds_load_u8 v50, v16 offset:7424
	ds_load_u8 v52, v16 offset:7168
	ds_load_u8 v53, v16 offset:6784
	ds_load_u8 v54, v16 offset:7040
	ds_load_u8 v55, v16 offset:6912
	ds_load_u8 v56, v16 offset:6656
	ds_load_u8 v57, v16 offset:6272
	ds_load_u8 v58, v16 offset:6528
	ds_load_u8 v59, v16 offset:6400
	ds_load_u8 v16, v16 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	v_perm_b32 v34, v34, v51, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v35, v42, v38, 0xc0c0004
	v_perm_b32 v38, v41, v40, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[3:10], v[29:32], v[11:14], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v15, v64, v15, 0xc0c0004
	v_perm_b32 v40, v65, v47, 0xc0c0004
	v_lshl_or_b32 v14, v34, 16, v33
	v_lshl_or_b32 v13, v38, 16, v35
	v_perm_b32 v11, v37, v39, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v29, v46, v43, 0xc0c0004
	v_lshl_or_b32 v12, v15, 16, v40
	v_perm_b32 v15, v36, v66, 0xc0c0004
	v_perm_b32 v30, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v31, v52, v48, 0xc0c0004
	v_perm_b32 v33, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v34, v56, v53, 0xc0c0004
	v_perm_b32 v35, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v57, 0xc0c0004
	v_lshl_or_b32 v11, v15, 16, v11
	v_lshl_or_b32 v32, v30, 16, v29
	v_lshl_or_b32 v31, v33, 16, v31
	v_lshl_or_b32 v30, v35, 16, v34
	v_lshl_or_b32 v29, v36, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[29:32], v[11:14], v[3:10] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v26, v26, v4 :: v_dual_add_f32 v25, v25, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_f32_e32 v24, v24, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v7
	v_cvt_f32_i32_e32 v5, v8
	v_cvt_f32_i32_e32 v6, v9
	v_cvt_f32_i32_e32 v7, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v20, v20, v3 :: v_dual_add_f32 v23, v23, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v22, v22, v5 :: v_dual_add_f32 v21, v21, v6
	v_add_f32_e32 v19, v19, v7
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v29, s21, v28
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v30, s20, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v29 offset:208
	ds_load_u8 v4, v29 offset:224
	ds_load_u8 v5, v29 offset:192
	ds_load_u8 v2, v29 offset:240
	ds_load_u8 v6, v29 offset:144
	ds_load_u8 v7, v29 offset:176
	ds_load_u8 v8, v29 offset:160
	ds_load_u8 v9, v29 offset:128
	ds_load_u8 v10, v29 offset:112
	ds_load_u8 v11, v29 offset:80
	ds_load_u8 v12, v29 offset:96
	ds_load_u8 v13, v29 offset:64
	ds_load_u8 v14, v29
	ds_load_u8 v15, v29 offset:16
	ds_load_u8 v16, v29 offset:32
	ds_load_u8 v31, v29 offset:48
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v12, v10, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v13, v11, 0xc0c0004
	v_perm_b32 v2, v4, v2, 0xc0c0004
	v_perm_b32 v3, v5, v3, 0xc0c0004
	ds_load_u8 v5, v30 offset:1664
	ds_load_u8 v32, v30 offset:1920
	ds_load_u8 v33, v30 offset:1792
	ds_load_u8 v34, v30 offset:1536
	ds_load_u8 v35, v30 offset:1152
	ds_load_u8 v36, v30 offset:1408
	ds_load_u8 v37, v30 offset:1280
	ds_load_u8 v38, v30 offset:1024
	ds_load_u8 v39, v30 offset:640
	ds_load_u8 v40, v30 offset:896
	ds_load_u8 v41, v30 offset:768
	ds_load_u8 v42, v30 offset:512
	ds_load_u8 v43, v30 offset:128
	ds_load_u8 v44, v30 offset:384
	ds_load_u8 v45, v30 offset:256
	ds_load_u8 v46, v30
	ds_load_u8 v47, v29 offset:288
	ds_load_u8 v48, v29 offset:256
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v10, v16, v31, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v3
	v_lshl_or_b32 v3, v7, 16, v6
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v34, v5, 0xc0c0004
	v_mov_b32_e32 v5, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s21, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v7, v33, v32, 0xc0c0004
	v_lshl_or_b32 v2, v9, 16, v8
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v38, v35, 0xc0c0004
	v_perm_b32 v9, v37, v36, 0xc0c0004
	ds_load_u8 v49, v1
	v_perm_b32 v1, v14, v15, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v41, v40, 0xc0c0004
	v_lshl_or_b32 v16, v7, 16, v6
	v_mov_b32_e32 v6, v5
	ds_load_u8 v31, v29 offset:464
	ds_load_u8 v32, v29 offset:480
	ds_load_u8 v33, v29 offset:448
	v_lshl_or_b32 v1, v10, 16, v1
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v42, v39, 0xc0c0004
	ds_load_u8 v34, v29 offset:496
	ds_load_u8 v35, v29 offset:400
	ds_load_u8 v36, v29 offset:432
	ds_load_u8 v37, v29 offset:416
	ds_load_u8 v38, v29 offset:384
	ds_load_u8 v39, v29 offset:336
	ds_load_u8 v40, v29 offset:352
	ds_load_u8 v41, v29 offset:320
	ds_load_u8 v42, v29 offset:368
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v12, v46, v43, 0xc0c0004
	v_perm_b32 v13, v45, v44, 0xc0c0004
	ds_load_u8 v43, v29 offset:272
	ds_load_u8 v44, v29 offset:304
	v_lshl_or_b32 v15, v9, 16, v8
	v_lshl_or_b32 v14, v11, 16, v10
	v_mov_b32_e32 v7, v5
	v_lshl_or_b32 v13, v13, 16, v12
	v_mov_b32_e32 v8, v5
	v_mov_b32_e32 v9, v5
	v_mov_b32_e32 v10, v5
	v_mov_b32_e32 v11, v5
	v_mov_b32_e32 v12, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[5:12], v[13:16], v[1:4], v[5:12] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v32, v34, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v38, v35, 0xc0c0004
	v_perm_b32 v13, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v14, v41, v39, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v40, v42, 0xc0c0004
	ds_load_u8 v16, v30 offset:3712
	ds_load_u8 v32, v30 offset:3968
	ds_load_u8 v34, v30 offset:3840
	ds_load_u8 v35, v30 offset:3584
	ds_load_u8 v36, v30 offset:3200
	ds_load_u8 v37, v30 offset:3456
	ds_load_u8 v38, v30 offset:3328
	ds_load_u8 v39, v30 offset:3072
	ds_load_u8 v40, v30 offset:2688
	ds_load_u8 v41, v30 offset:2944
	ds_load_u8 v42, v30 offset:2816
	ds_load_u8 v53, v30 offset:2560
	ds_load_u8 v54, v30 offset:2176
	ds_load_u8 v55, v30 offset:2432
	ds_load_u8 v56, v30 offset:2304
	ds_load_u8 v57, v30 offset:2048
	v_perm_b32 v1, v33, v31, 0xc0c0004
	v_lshl_or_b32 v3, v13, 16, v3
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v13, v47, v44, 0xc0c0004
	ds_load_u8 v31, v29 offset:592
	ds_load_u8 v33, v29 offset:608
	ds_load_u8 v45, v29 offset:576
	ds_load_u8 v46, v29 offset:528
	ds_load_u8 v50, v29 offset:560
	ds_load_u8 v51, v29 offset:544
	ds_load_u8 v52, v29 offset:512
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v48, v43, 0xc0c0004
	ds_load_u8 v43, v29 offset:720
	ds_load_u8 v48, v29 offset:736
	ds_load_u8 v58, v29 offset:704
	ds_load_u8 v59, v29 offset:752
	ds_load_u8 v60, v29 offset:656
	ds_load_u8 v61, v29 offset:688
	ds_load_u8 v62, v29 offset:672
	ds_load_u8 v63, v29 offset:640
	v_lshl_or_b32 v2, v15, 16, v14
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v15, v34, v32, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v34, v38, v37, 0xc0c0004
	v_perm_b32 v14, v35, v16, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v32, v39, v36, 0xc0c0004
	v_lshl_or_b32 v1, v13, 16, v1
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v36, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v35, v53, v40, 0xc0c0004
	v_lshl_or_b32 v16, v15, 16, v14
	v_lshl_or_b32 v15, v34, 16, v32
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v38, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v37, v57, v54, 0xc0c0004
	v_lshl_or_b32 v14, v36, 16, v35
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v31, v45, v31, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v32, v58, v43, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v48, v59, 0xc0c0004
	v_lshl_or_b32 v13, v38, 16, v37
	ds_load_u8 v37, v29 offset:624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v39, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v38, v63, v60, 0xc0c0004
	ds_load_u8 v40, v30 offset:5760
	ds_load_u8 v41, v30 offset:6016
	ds_load_u8 v42, v30 offset:5888
	ds_load_u8 v43, v30 offset:5632
	ds_load_u8 v44, v30 offset:5248
	ds_load_u8 v47, v30 offset:5504
	ds_load_u8 v48, v30 offset:5376
	ds_load_u8 v53, v30 offset:5120
	ds_load_u8 v54, v30 offset:4736
	ds_load_u8 v55, v30 offset:4992
	ds_load_u8 v56, v30 offset:4864
	ds_load_u8 v57, v30 offset:4608
	ds_load_u8 v58, v30 offset:4224
	ds_load_u8 v59, v30 offset:4480
	ds_load_u8 v60, v30 offset:4352
	ds_load_u8 v61, v30 offset:4096
	v_wmma_i32_16x16x16_iu8 v[5:12], v[13:16], v[1:4], v[5:12] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v36, 16, v32
	v_perm_b32 v1, v52, v46, 0xc0c0004
	v_lshl_or_b32 v3, v39, 16, v38
	v_perm_b32 v13, v51, v50, 0xc0c0004
	ds_load_u8 v34, v29 offset:800
	ds_load_u8 v35, v29 offset:768
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v15, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v43, v40, 0xc0c0004
	v_lshl_or_b32 v1, v13, 16, v1
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v32, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v16, v15, 16, v14
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v36, v56, v55, 0xc0c0004
	v_perm_b32 v33, v33, v37, 0xc0c0004
	ds_load_u8 v37, v29 offset:784
	ds_load_u8 v45, v29 offset:848
	ds_load_u8 v62, v29 offset:864
	ds_load_u8 v63, v29 offset:832
	ds_load_u8 v64, v29 offset:816
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v38, v61, v58, 0xc0c0004
	v_lshl_or_b32 v2, v33, 16, v31
	v_perm_b32 v31, v53, v44, 0xc0c0004
	v_perm_b32 v33, v57, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v13, v39, 16, v38
	v_lshl_or_b32 v15, v32, 16, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v14, v36, 16, v33
	ds_load_u8 v31, v29 offset:976
	ds_load_u8 v32, v29 offset:992
	ds_load_u8 v33, v29 offset:960
	ds_load_u8 v36, v29 offset:912
	ds_load_u8 v38, v29 offset:944
	ds_load_u8 v39, v29 offset:928
	ds_load_u8 v40, v29 offset:896
	ds_load_u8 v29, v29 offset:880
	ds_load_u8 v41, v30 offset:7808
	ds_load_u8 v42, v30 offset:8064
	ds_load_u8 v43, v30 offset:7936
	ds_load_u8 v44, v30 offset:7680
	ds_load_u8 v46, v30 offset:7296
	ds_load_u8 v47, v30 offset:7552
	ds_load_u8 v48, v30 offset:7424
	ds_load_u8 v50, v30 offset:7168
	ds_load_u8 v51, v30 offset:6784
	ds_load_u8 v52, v30 offset:7040
	ds_load_u8 v53, v30 offset:6912
	ds_load_u8 v54, v30 offset:6656
	ds_load_u8 v55, v30 offset:6272
	ds_load_u8 v56, v30 offset:6528
	ds_load_u8 v57, v30 offset:6400
	ds_load_u8 v30, v30 offset:6144
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v31, v33, v31, 0xc0c0004
	v_perm_b32 v32, v32, v49, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v33, v40, v36, 0xc0c0004
	v_perm_b32 v36, v39, v38, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[5:12], v[13:16], v[1:4], v[5:12] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v29, v62, v29, 0xc0c0004
	v_perm_b32 v38, v63, v45, 0xc0c0004
	v_lshl_or_b32 v4, v32, 16, v31
	v_lshl_or_b32 v3, v36, 16, v33
	v_perm_b32 v1, v35, v37, 0xc0c0004
	v_perm_b32 v13, v34, v64, 0xc0c0004
	v_lshl_or_b32 v2, v29, 16, v38
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v44, v41, 0xc0c0004
	v_perm_b32 v15, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v29, v50, v46, 0xc0c0004
	v_perm_b32 v31, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v32, v54, v51, 0xc0c0004
	v_perm_b32 v33, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v30, v55, 0xc0c0004
	v_lshl_or_b32 v1, v13, 16, v1
	v_lshl_or_b32 v16, v15, 16, v14
	v_lshl_or_b32 v15, v31, 16, v29
	v_lshl_or_b32 v14, v33, 16, v32
	v_lshl_or_b32 v13, v34, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[5:12], v[13:16], v[1:4], v[5:12] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v3, v11
	v_cvt_f32_i32_e32 v4, v12
.LBB0_12:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v1, v0, 4, 1
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v2, s18, v28
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s9, s5, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or3_b32 v1, v1, v27, s19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v20, v5 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s8, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v7, v25, v7 :: v_dual_add_f32 v8, v24, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v6, v26, v6 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v11, v2, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s9, s7, 0xffff
	s_mov_b32 s8, s6
	v_or_b32_e32 v2, 4, v1
	v_or_b32_e32 v12, 8, v1
	v_or_b32_e32 v13, 12, v1
	v_or_b32_e32 v14, 16, v1
	v_or_b32_e32 v15, 20, v1
	v_or_b32_e32 v16, 24, v1
	v_or_b32_e32 v27, 28, v1
	s_clause 0x7
	buffer_load_u16 v28, v1, s[8:11], 0 offen
	buffer_load_u16 v29, v2, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 7, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v9, v23, v9 :: v_dual_lshlrev_b32 v30, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v26, v6, s2
	v_cndmask_b32_e64 v8, v24, v8, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v2, s17, v2
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_bfe_i32 v31, v0, 3, 1
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v20, v5, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v10, v22, v10 :: v_dual_and_b32 v1, 0x7f, v0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s3, s18, s17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v23, v9, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s3, s3, s19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v21, v3 :: v_dual_add_f32 v4, v19, v4
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v1, s3, v1, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v25, v7, s2
	v_cndmask_b32_e64 v10, v22, v10, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v21, v21, v3, s2
	v_cndmask_b32_e64 v4, v19, v4, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	v_add_co_u32 v2, vcc_lo, s0, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	v_lshlrev_b32_e32 v12, 16, v12
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v29, v11, v29 :: v_dual_and_b32 v32, 0x1e0, v30
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v6, v6, v29
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v14, v11, v14 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	v_and_b32_e32 v20, 0x1040, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v31, v18, 2, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v13, v11, v13 :: v_dual_lshlrev_b32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v9, v9, v14
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v20, v31, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v16, v11, v16
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v12, v11, v12
	v_mul_f32_e32 v15, v11, v15
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v18, v18, 9, v20
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v8, v8, v13
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v28, v11, v28
	v_mul_f32_e32 v11, v11, v27
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v7, v7, v12 :: v_dual_mul_f32 v10, v10, v15
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v19, 0, v18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v5, v5, v28
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v20, v18, 4, 0
	v_xad_u32 v22, v18, 8, 0
	v_xad_u32 v23, v18, 12, 0
	v_xad_u32 v24, v18, 16, 0
	v_xad_u32 v25, v18, 20, 0
	v_xad_u32 v26, v18, 24, 0
	v_xad_u32 v18, v18, 28, 0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v12, v21, v16
	v_mul_f32_e32 v4, v4, v11
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_b32 v19, v5
	ds_store_b32 v20, v6
	ds_store_b32 v22, v7
	ds_store_b32 v23, v8
	ds_store_b32 v24, v9
	ds_store_b32 v25, v10
	ds_store_b32 v26, v12
	ds_store_b32 v18, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v5, v[2:3], off
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_bfe_i32 v4, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v6, 28, v30
	v_lshlrev_b32_e32 v0, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v4, 0x204, v4
	v_and_or_b32 v6, 0x1c0, v17, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v4, v6, v4
	v_and_or_b32 v0, v0, 32, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v4, 0, v0
	v_xad_u32 v6, 0x408, v0, 0
	v_xad_u32 v7, 0x810, v0, 0
	v_xad_u32 v8, 0xc18, v0, 0
	v_xad_u32 v13, 0x1040, v0, 0
	v_xad_u32 v14, 0x1448, v0, 0
	v_xad_u32 v15, 0x1850, v0, 0
	v_xad_u32 v16, 0x1c58, v0, 0
	ds_load_b32 v12, v4
	ds_load_b32 v11, v6
	ds_load_b32 v10, v7
	ds_load_b32 v9, v8
	ds_load_b32 v8, v13
	ds_load_b32 v7, v14
	ds_load_b32 v0, v15
	ds_load_b32 v6, v16
.LBB0_13:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v4, v5, v12
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end37
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s17, 1, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s0, v2
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_15:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s17, 2, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s0, v2
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_17:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v4, v5, v10
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s17, 6, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s0, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_19:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v4, v5, v9
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v2, s17, 3, v1
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, vcc_lo, s0, v2
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_21:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v4, v5, v8
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s17, 10, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s0, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_23:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[2:3], null, s17, 12, v[1:2]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v3, 31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32 v2, vcc_lo, s0, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s1, v3, vcc_lo
	global_load_b32 v5, v[2:3], off
.LBB0_25:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v4, v5, v0
	global_atomic_cmpswap_b32 v4, v[2:3], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v5
	v_mov_b32_e32 v5, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s17, 14, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v3, v[0:1], off
.LBB0_27:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v6
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_next_free_sgpr 28
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
		.amdhsa_inst_pref_size 63
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 165
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 28
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9940
; TotalNumSgprs: 30
; NumVgprs: 165
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 30
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     30
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     165
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
