	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	v_mov_b32_e32 v226, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v254, 4, v226
	v_and_b32_e32 v3, 48, v254
	v_lshrrev_b32_e32 v2, 4, v226
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v228, 1, v226
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s24, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v2, s25, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[20:21], s[18:19]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s24, s25, 48
	s_mov_b32 s19, 0x31027000
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s23, s19
	s_mov_b32 s22, s18
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
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
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
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 2, v226
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s10, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s11
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s34, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s9
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s10, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s29, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s29, s10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v5, v1, v3, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v227, 15, v226
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s25, s34
	s_lshl_b32 s27, s25, 4
	s_lshl_b32 s26, s25, 5
	v_mov_b32_e32 v12, v5
	v_lshl_add_u32 v0, v227, 4, v2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s34, v5
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	s_add_i32 s4, s28, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s24, v0
	v_add_nc_u32_e32 v13, s27, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v14, s26, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s34, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s6, s25, 6
	v_add_nc_u32_e32 v2, s4, v0
	v_add_nc_u32_e32 v3, s4, v4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s34, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s4, s6
	v_add_nc_u32_e32 v8, s4, v13
	v_mov_b32_e32 v10, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v9, s4, v14
	v_add_nc_u32_e32 v17, s6, v0
	v_add_nc_u32_e32 v18, s6, v13
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v34, s6, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v16, 0x80000000, v3, s3
	v_mov_b32_e32 v11, v4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v35, s6, v4
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b128 v[3:6], v1, s[16:19], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v7, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v7, 0x80000000, v8, s3
	v_cndmask_b32_e64 v8, 0x80000000, v9, s3
	v_cndmask_b32_e64 v9, 0x80000000, v17, s2
	v_cndmask_b32_e64 v42, 0x80000000, v18, s2
	s_clause 0x3
	buffer_load_b128 v[17:20], v2, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v7, s[20:23], 0 offen
	buffer_load_b128 v[25:28], v8, s[20:23], 0 offen
	buffer_load_b128 v[30:33], v16, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v34, s2
	v_cndmask_b32_e64 v7, 0x80000000, v35, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[34:37], v1, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[38:41], v9, s[20:23], 0 offen
	buffer_load_b128 v[42:45], v42, s[20:23], 0 offen
	buffer_load_b128 v[46:49], v2, s[20:23], 0 offen
	buffer_load_b128 v[50:53], v7, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 48, v228
	v_lshlrev_b32_e32 v2, 3, v226
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v8, 0, v254
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v9, v254, v1
	v_lshrrev_b32_e32 v1, 1, v226
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v7, 0, v9
	s_waitcnt vmcnt(9)
	ds_store_b128 v7, v[3:6] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v8, v[17:20]
	s_waitcnt vmcnt(7)
	ds_store_b128 v8, v[21:24] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v8, v[25:28] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v8, v[30:33] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v7, v[34:37] offset:36864
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v8, v[38:41] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v8, v[42:45] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v8, v[46:49] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v8, v[50:53] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 48, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v0, 0x70, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v229, v227, 6, v3
	v_xor_b32_e32 v230, 16, v229
	v_xor_b32_e32 v231, 32, v229
	v_xor_b32_e32 v232, 48, v229
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v87, 0
	s_add_i32 s33, 0, 0x8000
	s_add_i32 s30, 0, 0x9000
	s_add_i32 s31, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr229
                                        ; implicit-def: $vgpr230
                                        ; implicit-def: $vgpr231
                                        ; implicit-def: $vgpr232
                                        ; implicit-def: $vgpr0
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v2, 48, v2
	s_mov_b32 s11, s4
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s35, s5, 6
	s_mov_b32 s5, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v229, v227, 6, v2
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_dual_mov_b32 v198, s11 :: v_dual_mov_b32 v195, s8
	v_dual_mov_b32 v3, v11 :: v_dual_mov_b32 v4, v12
	v_dual_mov_b32 v197, s10 :: v_dual_and_b32 v0, 0x70, v1
	v_xor_b32_e32 v230, 16, v229
	v_xor_b32_e32 v231, 32, v229
	v_xor_b32_e32 v232, 48, v229
	v_dual_mov_b32 v196, s9 :: v_dual_mov_b32 v193, s6
	v_dual_mov_b32 v194, s7 :: v_dual_mov_b32 v191, s4
	v_dual_mov_b32 v192, s5 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v30, 0
	s_add_i32 s34, s34, 64
	s_mov_b32 s36, 1
	s_add_i32 s33, 0, 0x8000
	s_add_i32 s30, 0, 0x9000
	s_add_i32 s31, 0, 0x4000
	s_add_i32 s35, s35, -3
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v228, off offset:36
	scratch_store_b32 off, v226, off offset:32
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s8, s5, 6
	s_mov_b32 s6, s33
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s8, s34, s8
	v_dual_mov_b32 v12, v227 :: v_dual_add_nc_u32 v17, s6, v229
	v_dual_mov_b32 v15, v232 :: v_dual_add_nc_u32 v22, s8, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v18, s6, v230
	v_add_nc_u32_e32 v19, s6, v231
	v_add_nc_u32_e32 v20, s6, v232
	buffer_load_b128 v[5:8], v22, s[16:19], 0 offen
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s6, s8, s25
	v_mov_b32_e32 v16, v230
	s_add_i32 s6, s6, s28
	s_mov_b32 s7, s4
	v_add_nc_u32_e32 v23, s6, v10
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_add3_u32 v21, s7, v0, v227
	v_dual_mov_b32 v11, v0 :: v_dual_add_nc_u32 v24, s6, v13
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v99, s6, v14
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_add_i32 s9, s36, 1
	s_mov_b32 s4, s31
	s_cmp_lt_i32 s9, 2
	s_mov_b32 s33, s30
	s_cselect_b32 s36, s9, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s8, s36, 14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s7, s36, 12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s31, s8, 0
	v_mov_b32_e32 v2, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s7, s7, 0
	s_add_i32 s30, s7, 0x8000
	s_waitcnt vmcnt(0)
	scratch_store_b128 off, v[5:8], off     ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[25:28], v23, s[20:23], 0 offen
	v_mov_b32_e32 v6, v13
	v_mov_b32_e32 v13, v229
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[107:110], v17
	ds_load_b128 v[123:126], v17 offset:1024
	ds_load_b128 v[139:142], v17 offset:2048
	ds_load_b128 v[155:158], v17 offset:3072
	ds_load_b128 v[159:162], v18
	ds_load_b128 v[163:166], v18 offset:1024
	ds_load_b128 v[167:170], v18 offset:2048
	ds_load_b128 v[171:174], v18 offset:3072
	ds_load_b128 v[175:178], v19
	ds_load_b128 v[179:182], v19 offset:1024
	ds_load_b128 v[183:186], v19 offset:2048
	ds_load_b128 v[187:190], v19 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v17, v21 offset:11520
	ds_load_u8 v18, v21 offset:11264
	ds_load_u8 v19, v21 offset:10496
	ds_load_u8 v22, v21 offset:10240
	ds_load_u8 v101, v21 offset:11008
	ds_load_u8 v102, v21 offset:10752
	ds_load_u8 v103, v21 offset:9472
	ds_load_u8 v104, v21 offset:9216
	ds_load_u8 v105, v21 offset:9984
	ds_load_u8 v106, v21 offset:9728
	ds_load_u8 v111, v21 offset:8448
	ds_load_u8 v112, v21 offset:8192
	ds_load_u8 v113, v21 offset:8960
	ds_load_u8 v114, v21 offset:8704
	ds_load_u8 v115, v21 offset:15616
	ds_load_u8 v116, v21 offset:15360
	ds_load_u8 v117, v21 offset:16128
	ds_load_u8 v118, v21 offset:15872
	ds_load_u8 v119, v21 offset:14592
	ds_load_u8 v120, v21 offset:14336
	ds_load_u8 v121, v21 offset:15104
	ds_load_u8 v122, v21 offset:14848
	ds_load_u8 v127, v21 offset:13568
	ds_load_u8 v128, v21 offset:13312
	ds_load_u8 v129, v21 offset:14080
	ds_load_u8 v130, v21 offset:13824
	ds_load_u8 v131, v21 offset:12544
	ds_load_u8 v132, v21 offset:12288
	ds_load_u8 v133, v21 offset:13056
	ds_load_u8 v134, v21 offset:12800
	ds_load_u8 v135, v21 offset:3328
	ds_load_u8 v136, v21 offset:3072
	ds_load_u8 v137, v21 offset:3840
	ds_load_u8 v138, v21 offset:3584
	ds_load_u8 v143, v21 offset:3968
	ds_load_u8 v144, v21 offset:3712
	ds_load_u8 v145, v21 offset:3456
	ds_load_u8 v146, v21 offset:3200
	ds_load_u8 v147, v21 offset:2304
	ds_load_u8 v148, v21 offset:2048
	ds_load_u8 v149, v21 offset:2816
	ds_load_u8 v150, v21 offset:2560
	ds_load_u8 v151, v21 offset:2944
	ds_load_u8 v152, v21 offset:2688
	ds_load_u8 v153, v21 offset:2432
	ds_load_u8 v154, v21 offset:2176
	ds_load_u8 v207, v21 offset:1280
	ds_load_u8 v208, v21 offset:1024
	ds_load_u8 v209, v21 offset:1792
	ds_load_u8 v210, v21 offset:1536
	ds_load_u8 v211, v21 offset:1920
	ds_load_u8 v212, v21 offset:1664
	ds_load_u8 v213, v21 offset:1408
	ds_load_u8 v214, v21 offset:1152
	ds_load_u8 v215, v21 offset:256
	ds_load_u8 v216, v21
	ds_load_u8 v217, v21 offset:768
	ds_load_u8 v218, v21 offset:512
	ds_load_u8 v219, v21 offset:896
	ds_load_u8 v220, v21 offset:640
	ds_load_u8 v221, v21 offset:384
	ds_load_u8 v222, v21 offset:128
	ds_load_u8 v223, v21 offset:7424
	ds_load_u8 v224, v21 offset:7168
	ds_load_u8 v225, v21 offset:7936
	ds_load_u8 v226, v21 offset:7680
	ds_load_u8 v232, v21 offset:6144
	ds_load_u8 v233, v21 offset:6912
	ds_load_u8 v234, v21 offset:6656
	ds_load_u8 v235, v21 offset:7040
	ds_load_u8 v236, v21 offset:6784
	ds_load_u8 v237, v21 offset:6528
	ds_load_u8 v238, v21 offset:6272
	ds_load_u8 v239, v21 offset:5376
	ds_load_u8 v240, v21 offset:5120
	ds_load_u8 v241, v21 offset:5888
	ds_load_u8 v242, v21 offset:5632
	ds_load_u8 v243, v21 offset:6016
	ds_load_u8 v244, v21 offset:5760
	ds_load_u8 v245, v21 offset:5504
	ds_load_u8 v246, v21 offset:5248
	ds_load_u8 v247, v21 offset:4352
	ds_load_u8 v248, v21 offset:4096
	ds_load_u8 v249, v21 offset:4864
	ds_load_u8 v250, v21 offset:4608
	ds_load_u8 v251, v21 offset:4992
	ds_load_u8 v252, v21 offset:4736
	ds_load_u8 v253, v21 offset:4480
	ds_load_u8 v1, v21 offset:4224
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v100, s6, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v229, v21 offset:7552
	v_dual_mov_b32 v7, v14 :: v_dual_mov_b32 v14, v231
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v233, v234, v233, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v239, v240, v239, 0xc0c0004
	ds_load_u8 v227, v21 offset:8064
	ds_load_u8 v228, v21 offset:7808
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v241, v242, v241, 0xc0c0004
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v21 offset:16000
	v_perm_b32 v19, v22, v19, 0xc0c0004
	ds_load_u8 v231, v21 offset:6400
	ds_load_u8 v234, v21 offset:9088
	ds_load_u8 v240, v21 offset:8832
	ds_load_u8 v242, v21 offset:8576
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v247, v248, v247, 0xc0c0004
	ds_load_u8 v248, v21 offset:8320
	ds_load_u8 v230, v21 offset:7296
	v_perm_b32 v225, v226, v225, 0xc0c0004
	ds_load_u8 v226, v21 offset:9600
	v_perm_b32 v223, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v249, v250, v249, 0xc0c0004
	ds_load_u8 v250, v21 offset:16256
	ds_load_u8 v22, v21 offset:15488
	ds_load_u8 v29, v21 offset:10624
	ds_load_u8 v10, v21 offset:10368
	ds_load_u8 v97, v21 offset:10112
	ds_load_u8 v224, v21 offset:9856
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v21 offset:15232
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v231, v232, v231, 0xc0c0004
	ds_load_u8 v232, v21 offset:9344
	ds_load_u8 v104, v21 offset:14976
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v21 offset:14720
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v21 offset:14464
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v21 offset:14208
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v21 offset:13952
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v21 offset:13696
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v21 offset:13440
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v21 offset:13184
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v21 offset:12928
	v_perm_b32 v129, v130, v129, 0xc0c0004
	v_perm_b32 v255, v208, v207, 0xc0c0004
	v_perm_b32 v94, v210, v209, 0xc0c0004
	v_perm_b32 v0, v216, v215, 0xc0c0004
	v_perm_b32 v96, v218, v217, 0xc0c0004
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_perm_b32 v132, v134, v133, 0xc0c0004
	v_perm_b32 v133, v146, v145, 0xc0c0004
	v_perm_b32 v134, v144, v143, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[207:210], v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v144, v152, v151, 0xc0c0004
	v_perm_b32 v145, v214, v213, 0xc0c0004
	v_perm_b32 v146, v212, v211, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[211:214], v20 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v151, v222, v221, 0xc0c0004
	v_perm_b32 v152, v220, v219, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[215:218], v20 offset:2048
	ds_load_b128 v[219:222], v20 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v245, v246, v245, 0xc0c0004
	v_perm_b32 v20, v244, v243, 0xc0c0004
	v_perm_b32 v143, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v153, v230, v229, 0xc0c0004
	v_perm_b32 v244, v252, v251, 0xc0c0004
	v_perm_b32 v251, v240, v234, 0xc0c0004
	v_lshl_or_b32 v229, v101, 16, v19
	v_lshl_or_b32 v240, v20, 16, v245
	v_perm_b32 v154, v228, v227, 0xc0c0004
	v_perm_b32 v98, v238, v237, 0xc0c0004
	v_perm_b32 v95, v236, v235, 0xc0c0004
	v_perm_b32 v243, v1, v253, 0xc0c0004
	v_perm_b32 v248, v248, v242, 0xc0c0004
	v_lshl_or_b32 v228, v105, 16, v103
	v_lshl_or_b32 v227, v113, 16, v111
	v_lshl_or_b32 v238, v134, 16, v133
	v_lshl_or_b32 v237, v144, 16, v143
	v_lshl_or_b32 v236, v146, 16, v145
	v_lshl_or_b32 v235, v152, 16, v151
	v_lshl_or_b32 v234, v117, 16, v115
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v8, s7, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v242, v154, 16, v153
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v253, s31, v254
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s6, s5, 1
	s_cmp_lg_u32 s5, s35
	s_mov_b32 s5, s6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v10, v10, v29, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v97, v224, v97, 0xc0c0004
	v_lshl_or_b32 v224, v241, 16, v239
	v_lshl_or_b32 v239, v244, 16, v243
	v_lshl_or_b32 v243, v251, 16, v248
	v_lshl_or_b32 v241, v95, 16, v98
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v102, v104, v102, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v104, v120, v118, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	scratch_store_b128 off, v[25:28], off offset:16 ; 16-byte Folded Spill
	s_clause 0x2
	buffer_load_b128 v[25:28], v24, s[20:23], 0 offen
	buffer_load_b128 v[199:202], v99, s[20:23], 0 offen
	buffer_load_b128 v[203:206], v100, s[20:23], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v23, v21 offset:12032
	ds_load_u8 v24, v21 offset:11776
	ds_load_u8 v99, v21 offset:12160
	v_perm_b32 v100, v136, v135, 0xc0c0004
	ds_load_u8 v135, v21 offset:11904
	v_perm_b32 v136, v138, v137, 0xc0c0004
	ds_load_u8 v137, v21 offset:11648
	v_perm_b32 v138, v148, v147, 0xc0c0004
	ds_load_u8 v147, v21 offset:11392
	v_perm_b32 v148, v150, v149, 0xc0c0004
	ds_load_u8 v149, v21 offset:11136
	ds_load_u8 v150, v21 offset:10880
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v21 offset:15744
	ds_load_u8 v130, v21 offset:12672
	ds_load_u8 v21, v21 offset:12416
	v_perm_b32 v18, v18, v250, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v99, v135, v99, 0xc0c0004
	v_perm_b32 v135, v232, v226, 0xc0c0004
	v_lshl_or_b32 v226, v225, 16, v223
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v137, v147, v137, 0xc0c0004
	v_lshl_or_b32 v147, v96, 16, v0
	v_lshl_or_b32 v225, v233, 16, v231
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v29, v150, v149, 0xc0c0004
	v_lshl_or_b32 v150, v136, 16, v100
	v_lshl_or_b32 v149, v148, 16, v138
	v_lshl_or_b32 v148, v94, 16, v255
	v_lshl_or_b32 v223, v249, 16, v247
	v_lshl_or_b32 v230, v23, 16, v17
	v_lshl_or_b32 v233, v121, 16, v119
	v_lshl_or_b32 v232, v129, 16, v127
	v_lshl_or_b32 v231, v132, 16, v131
	v_lshl_or_b32 v246, v99, 16, v137
	v_lshl_or_b32 v244, v97, 16, v135
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v22, v22, v24, 0xc0c0004
	v_perm_b32 v24, v112, v106, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v130, 0xc0c0004
	v_perm_b32 v112, v128, v122, 0xc0c0004
	v_perm_b32 v106, v116, v114, 0xc0c0004
	v_lshl_or_b32 v250, v18, 16, v22
	v_lshl_or_b32 v249, v102, 16, v24
	v_wmma_i32_16x16x16_iu8 v[115:122], v[235:238], v[123:126], v[191:198] neg_lo:[1,1,0]
	v_lshl_or_b32 v247, v112, 16, v21
	v_wmma_i32_16x16x16_iu8 v[17:24], v[147:150], v[107:110], v[191:198] neg_lo:[1,1,0]
	v_lshl_or_b32 v248, v106, 16, v104
	v_wmma_i32_16x16x16_iu8 v[99:106], v[235:238], v[107:110], v[191:198] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[223:226], v[159:162], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[147:150], v[123:126], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[147:150], v[139:142], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[235:238], v[139:142], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[147:150], v[155:158], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[227:230], v[175:178], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[223:226], v[163:166], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[223:226], v[167:170], v[123:130] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[223:226], v[171:174], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v245, v29, 16, v10
	v_wmma_i32_16x16x16_iu8 v[17:24], v[231:234], v[207:210], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[227:230], v[179:182], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[227:230], v[183:186], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[227:230], v[187:190], v[139:146] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v17
	v_cvt_f32_i32_e32 v10, v18
	v_cvt_f32_i32_e32 v17, v19
	v_cvt_f32_i32_e32 v18, v20
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	v_mov_b32_e32 v230, v16
	v_mov_b32_e32 v227, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[107:114], v[231:234], v[211:214], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[231:234], v[215:218], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[231:234], v[219:222], v[139:146] neg_lo:[1,1,0]
	v_mov_b32_e32 v232, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v92, v92, v17 :: v_dual_add_f32 v91, v91, v18
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	scratch_load_b128 v[15:18], off, off    ; 16-byte Folded Reload
	v_mov_b32_e32 v229, v13
	v_mov_b32_e32 v13, v6
	v_dual_mov_b32 v231, v14 :: v_dual_mov_b32 v14, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v93, v93, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[147:154], v[235:238], v[155:158], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[239:242], v[159:162], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[239:242], v[163:166], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[239:242], v[167:170], v[131:138] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[239:242], v[171:174], v[147:154] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v19, v21
	v_wmma_i32_16x16x16_iu8 v[99:106], v[243:246], v[175:178], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[243:246], v[179:182], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[243:246], v[183:186], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[243:246], v[187:190], v[147:154] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v20, v22
	v_wmma_i32_16x16x16_iu8 v[99:106], v[247:250], v[207:210], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[247:250], v[211:214], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[247:250], v[215:218], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[247:250], v[219:222], v[147:154] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v21, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v23, v99
	v_cvt_f32_i32_e32 v24, v100
	v_cvt_f32_i32_e32 v29, v101
	v_cvt_f32_i32_e32 v94, v102
	v_cvt_f32_i32_e32 v95, v103
	v_cvt_f32_i32_e32 v96, v104
	v_cvt_f32_i32_e32 v97, v105
	v_cvt_f32_i32_e32 v98, v106
	v_cvt_f32_i32_e32 v99, v107
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v101, v109
	v_cvt_f32_i32_e32 v102, v110
	v_cvt_f32_i32_e32 v103, v111
	v_cvt_f32_i32_e32 v104, v112
	v_cvt_f32_i32_e32 v105, v113
	v_cvt_f32_i32_e32 v106, v114
	v_cvt_f32_i32_e32 v107, v115
	v_cvt_f32_i32_e32 v108, v116
	v_cvt_f32_i32_e32 v109, v117
	v_cvt_f32_i32_e32 v110, v118
	v_cvt_f32_i32_e32 v111, v119
	v_cvt_f32_i32_e32 v112, v120
	v_cvt_f32_i32_e32 v113, v121
	v_cvt_f32_i32_e32 v114, v122
	v_cvt_f32_i32_e32 v115, v123
	v_cvt_f32_i32_e32 v116, v124
	v_cvt_f32_i32_e32 v117, v125
	v_cvt_f32_i32_e32 v118, v126
	v_cvt_f32_i32_e32 v119, v127
	v_cvt_f32_i32_e32 v120, v128
	v_cvt_f32_i32_e32 v121, v129
	v_cvt_f32_i32_e32 v122, v130
	v_cvt_f32_i32_e32 v123, v131
	v_cvt_f32_i32_e32 v124, v132
	v_cvt_f32_i32_e32 v125, v133
	v_cvt_f32_i32_e32 v126, v134
	v_cvt_f32_i32_e32 v127, v135
	v_cvt_f32_i32_e32 v128, v136
	v_cvt_f32_i32_e32 v129, v137
	v_cvt_f32_i32_e32 v130, v138
	v_cvt_f32_i32_e32 v131, v139
	v_cvt_f32_i32_e32 v132, v140
	v_cvt_f32_i32_e32 v133, v141
	v_cvt_f32_i32_e32 v134, v142
	v_cvt_f32_i32_e32 v135, v143
	v_cvt_f32_i32_e32 v136, v144
	v_cvt_f32_i32_e32 v137, v145
	v_cvt_f32_i32_e32 v138, v146
	v_cvt_f32_i32_e32 v139, v147
	v_cvt_f32_i32_e32 v140, v148
	v_cvt_f32_i32_e32 v141, v149
	v_cvt_f32_i32_e32 v142, v150
	v_cvt_f32_i32_e32 v143, v151
	v_cvt_f32_i32_e32 v144, v152
	v_cvt_f32_i32_e32 v145, v153
	v_cvt_f32_i32_e32 v146, v154
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v87, v87, v0 :: v_dual_mov_b32 v10, v2
	v_dual_mov_b32 v0, v11 :: v_dual_add_f32 v89, v89, v20
	v_dual_add_f32 v90, v90, v19 :: v_dual_add_f32 v83, v83, v29
	v_dual_add_f32 v88, v88, v21 :: v_dual_add_f32 v85, v85, v23
	v_dual_add_f32 v86, v86, v22 :: v_dual_add_f32 v81, v81, v95
	v_dual_add_f32 v84, v84, v24 :: v_dual_add_f32 v79, v79, v97
	v_dual_add_f32 v82, v82, v94 :: v_dual_add_f32 v77, v77, v99
	v_dual_add_f32 v80, v80, v96 :: v_dual_add_f32 v75, v75, v101
	v_dual_add_f32 v78, v78, v98 :: v_dual_add_f32 v73, v73, v103
	v_dual_add_f32 v76, v76, v100 :: v_dual_add_f32 v71, v71, v105
	v_dual_add_f32 v74, v74, v102 :: v_dual_add_f32 v69, v69, v107
	v_dual_add_f32 v72, v72, v104 :: v_dual_add_f32 v67, v67, v109
	v_dual_add_f32 v70, v70, v106 :: v_dual_add_f32 v65, v65, v111
	v_dual_add_f32 v68, v68, v108 :: v_dual_add_f32 v63, v63, v113
	v_dual_add_f32 v66, v66, v110 :: v_dual_add_f32 v61, v61, v115
	v_dual_add_f32 v64, v64, v112 :: v_dual_add_f32 v59, v59, v117
	v_dual_add_f32 v62, v62, v114 :: v_dual_add_f32 v57, v57, v119
	v_dual_add_f32 v60, v60, v116 :: v_dual_add_f32 v55, v55, v121
	v_dual_add_f32 v58, v58, v118 :: v_dual_add_f32 v53, v53, v123
	v_dual_add_f32 v56, v56, v120 :: v_dual_add_f32 v51, v51, v125
	v_dual_add_f32 v54, v54, v122 :: v_dual_add_f32 v49, v49, v127
	v_dual_add_f32 v52, v52, v124 :: v_dual_add_f32 v47, v47, v129
	v_dual_add_f32 v50, v50, v126 :: v_dual_add_f32 v45, v45, v131
	v_dual_add_f32 v48, v48, v128 :: v_dual_add_f32 v43, v43, v133
	v_dual_add_f32 v46, v46, v130 :: v_dual_add_f32 v41, v41, v135
	v_dual_add_f32 v44, v44, v132 :: v_dual_add_f32 v39, v39, v137
	v_dual_add_f32 v42, v42, v134 :: v_dual_add_f32 v37, v37, v139
	v_dual_add_f32 v40, v40, v136 :: v_dual_add_f32 v35, v35, v141
	v_dual_add_f32 v38, v38, v138 :: v_dual_add_f32 v33, v33, v143
	v_dual_add_f32 v36, v36, v140 :: v_dual_add_f32 v31, v31, v145
	v_add_f32_e32 v34, v34, v142
	v_add_f32_e32 v32, v32, v144
	v_add_f32_e32 v30, v30, v146
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v8, v[15:18] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b128 v[5:8], off, off offset:16 ; 16-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v253, v[5:8]
	ds_store_b128 v253, v[25:28] offset:4096
	ds_store_b128 v253, v[199:202] offset:8192
	ds_store_b128 v253, v[203:206] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v226, off, off offset:32
	scratch_load_b32 v228, off, off offset:36
.LBB0_7:                                ; %Flow72
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v99, 0xf0, v226
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v100, v0, v227
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s4, v100
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v101, s33, v232
	v_add_nc_u32_e32 v1, s33, v231
	v_add_nc_u32_e32 v29, s33, v230
	ds_load_b128 v[9:12], v101 offset:1024
	ds_load_b128 v[126:129], v101
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v0 offset:3328
	ds_load_u8 v3, v0 offset:3072
	ds_load_u8 v4, v0 offset:3840
	ds_load_u8 v5, v0 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[13:16], v1 offset:3072
	ds_load_b128 v[17:20], v1 offset:2048
	ds_load_b128 v[21:24], v1 offset:1024
	ds_load_b128 v[118:121], v1
	ds_load_b128 v[25:28], v29 offset:1024
	ds_load_b128 v[122:125], v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v0 offset:2304
	ds_load_u8 v6, v0 offset:2048
	ds_load_u8 v7, v0 offset:2816
	ds_load_u8 v8, v0 offset:2560
	ds_load_u8 v95, v0 offset:1280
	ds_load_u8 v96, v0 offset:1024
	ds_load_u8 v97, v0 offset:1792
	ds_load_u8 v98, v0 offset:1536
	ds_load_u8 v110, v0 offset:3968
	ds_load_u8 v111, v0 offset:3712
	ds_load_u8 v112, v0 offset:3456
	ds_load_u8 v113, v0 offset:3200
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v94, s33, v229
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v6, v1, 0xc0c0004
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	v_perm_b32 v3, v5, v4, 0xc0c0004
	ds_load_u8 v4, v0 offset:256
	ds_load_u8 v5, v0
	ds_load_u8 v102, v0 offset:768
	ds_load_u8 v103, v0 offset:512
	ds_load_u8 v114, v0 offset:2944
	ds_load_u8 v115, v0 offset:2688
	ds_load_u8 v116, v0 offset:2432
	ds_load_u8 v117, v0 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v98, v97, 0xc0c0004
	v_lshl_or_b32 v160, v6, 16, v1
	v_lshl_or_b32 v161, v3, 16, v2
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_lshl_or_b32 v159, v8, 16, v7
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v117, v116, 0xc0c0004
	v_lshl_or_b32 v158, v2, 16, v1
	v_mov_b32_e32 v1, s4
	ds_load_u8 v102, v0 offset:7424
	ds_load_u8 v103, v0 offset:7168
	ds_load_u8 v104, v0 offset:7936
	ds_load_u8 v105, v0 offset:7680
	ds_load_u8 v106, v0 offset:6400
	ds_load_u8 v107, v0 offset:6144
	ds_load_u8 v108, v0 offset:6912
	ds_load_u8 v109, v0 offset:6656
	ds_load_u8 v142, v0 offset:5376
	ds_load_u8 v143, v0 offset:5120
	ds_load_u8 v144, v0 offset:5888
	ds_load_u8 v145, v0 offset:5632
	ds_load_u8 v146, v0 offset:8064
	ds_load_u8 v147, v0 offset:7808
	ds_load_u8 v148, v0 offset:7552
	ds_load_u8 v149, v0 offset:7296
	ds_load_u8 v182, v0 offset:15616
	ds_load_u8 v183, v0 offset:15360
	v_mov_b32_e32 v3, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[134:137], v94 offset:1024
	ds_load_b128 v[130:133], v94
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v138, v0 offset:1920
	ds_load_u8 v139, v0 offset:1664
	ds_load_u8 v140, v0 offset:1408
	ds_load_u8 v141, v0 offset:1152
	ds_load_u8 v95, v0 offset:896
	ds_load_u8 v96, v0 offset:640
	ds_load_u8 v97, v0 offset:384
	ds_load_u8 v98, v0 offset:128
	ds_load_u8 v186, v0 offset:6016
	ds_load_u8 v187, v0 offset:5760
	ds_load_u8 v188, v0 offset:5504
	ds_load_u8 v189, v0 offset:5248
	v_mov_b32_e32 v6, s9
	ds_load_u8 v202, v0 offset:9088
	ds_load_u8 v203, v0 offset:8832
	ds_load_u8 v204, v0 offset:8576
	ds_load_u8 v205, v0 offset:8320
	ds_load_u8 v217, v0 offset:15232
	ds_load_u8 v218, v0 offset:14976
	ds_load_u8 v219, v0 offset:14720
	ds_load_u8 v220, v0 offset:14464
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v152, v107, v106, 0xc0c0004
	v_mov_b32_e32 v2, s5
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v153, v109, v108, 0xc0c0004
	v_mov_b32_e32 v4, s7
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	v_perm_b32 v150, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v143, v145, v144, 0xc0c0004
	v_perm_b32 v151, v105, v104, 0xc0c0004
	ds_load_u8 v144, v0 offset:11520
	ds_load_u8 v145, v0 offset:11264
	ds_load_u8 v166, v0 offset:12032
	ds_load_u8 v167, v0 offset:11776
	ds_load_u8 v190, v0 offset:4992
	ds_load_u8 v191, v0 offset:4736
	ds_load_u8 v192, v0 offset:4480
	ds_load_u8 v193, v0 offset:4224
	v_lshl_or_b32 v164, v153, 16, v152
	ds_load_u8 v152, v0 offset:9472
	ds_load_u8 v153, v0 offset:9216
	ds_load_u8 v174, v0 offset:9984
	ds_load_u8 v175, v0 offset:9728
	ds_load_u8 v178, v0 offset:8448
	ds_load_u8 v179, v0 offset:8192
	ds_load_u8 v180, v0 offset:8960
	ds_load_u8 v181, v0 offset:8704
	ds_load_u8 v198, v0 offset:11136
	ds_load_u8 v199, v0 offset:10880
	ds_load_u8 v200, v0 offset:10624
	ds_load_u8 v201, v0 offset:10368
	v_lshl_or_b32 v163, v143, 16, v142
	v_lshl_or_b32 v165, v151, 16, v150
	ds_load_u8 v142, v0 offset:10496
	ds_load_u8 v143, v0 offset:10240
	ds_load_u8 v150, v0 offset:11008
	ds_load_u8 v151, v0 offset:10752
	ds_load_u8 v194, v0 offset:12160
	ds_load_u8 v195, v0 offset:11904
	ds_load_u8 v196, v0 offset:11648
	ds_load_u8 v197, v0 offset:11392
	ds_load_u8 v102, v0 offset:4352
	ds_load_u8 v103, v0 offset:4096
	ds_load_u8 v104, v0 offset:4864
	ds_load_u8 v105, v0 offset:4608
	ds_load_u8 v154, v0 offset:7040
	ds_load_u8 v155, v0 offset:6784
	ds_load_u8 v156, v0 offset:6528
	ds_load_u8 v157, v0 offset:6272
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v216, v183, v182, 0xc0c0004
	ds_load_u8 v182, v0 offset:12544
	ds_load_u8 v183, v0 offset:12288
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v114, v141, v140, 0xc0c0004
	v_perm_b32 v115, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_perm_b32 v95, v96, v95, 0xc0c0004
	v_mov_b32_e32 v7, s10
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	v_perm_b32 v139, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v145, v167, v166, 0xc0c0004
	v_perm_b32 v140, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v162, v103, v102, 0xc0c0004
	v_perm_b32 v143, v151, v150, 0xc0c0004
	v_lshl_or_b32 v177, v145, 16, v144
	v_perm_b32 v145, v153, v152, 0xc0c0004
	v_perm_b32 v150, v175, v174, 0xc0c0004
	v_perm_b32 v151, v179, v178, 0xc0c0004
	v_perm_b32 v152, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v168, v105, v104, 0xc0c0004
	v_lshl_or_b32 v176, v143, 16, v142
	v_lshl_or_b32 v175, v150, 16, v145
	ds_load_u8 v145, v0 offset:16128
	ds_load_u8 v184, v0 offset:15872
	v_lshl_or_b32 v174, v152, 16, v151
	ds_load_u8 v185, v0 offset:14592
	ds_load_u8 v206, v0 offset:14336
	ds_load_u8 v207, v0 offset:15104
	ds_load_u8 v208, v0 offset:14848
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[178:181], v94 offset:3072
	ds_load_b128 v[150:153], v94 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v94, v0 offset:13568
	ds_load_u8 v209, v0 offset:13312
	ds_load_u8 v210, v0 offset:14080
	ds_load_u8 v211, v0 offset:13824
	ds_load_u8 v212, v0 offset:16256
	ds_load_u8 v213, v0 offset:16000
	ds_load_u8 v214, v0 offset:15744
	ds_load_u8 v215, v0 offset:15488
	v_lshl_or_b32 v162, v168, 16, v162
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[166:169], v29 offset:3072
	ds_load_b128 v[170:173], v29 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v29, v0 offset:10112
	ds_load_u8 v142, v0 offset:9856
	ds_load_u8 v143, v0 offset:9600
	ds_load_u8 v144, v0 offset:9344
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v225, v183, v182, 0xc0c0004
	v_lshl_or_b32 v183, v115, 16, v114
	v_lshl_or_b32 v182, v95, 16, v97
	v_perm_b32 v95, v149, v148, 0xc0c0004
	v_perm_b32 v97, v147, v146, 0xc0c0004
	v_perm_b32 v98, v157, v156, 0xc0c0004
	v_perm_b32 v138, v155, v154, 0xc0c0004
	v_perm_b32 v141, v193, v192, 0xc0c0004
	v_perm_b32 v146, v191, v190, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[102:109], v[158:161], v[130:133], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v206, v206, v185, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v94, v209, v94, 0xc0c0004
	v_perm_b32 v145, v184, v145, 0xc0c0004
	v_perm_b32 v207, v208, v207, 0xc0c0004
	ds_load_u8 v184, v0 offset:13056
	ds_load_u8 v185, v0 offset:12800
	ds_load_u8 v208, v0 offset:14208
	ds_load_u8 v221, v0 offset:13952
	ds_load_u8 v222, v0 offset:13696
	ds_load_u8 v223, v0 offset:13440
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v209, v211, v210, 0xc0c0004
	ds_load_u8 v210, v0 offset:13184
	ds_load_u8 v211, v0 offset:12928
	ds_load_u8 v224, v0 offset:12672
	ds_load_u8 v0, v0 offset:12416
	v_lshl_or_b32 v189, v97, 16, v95
	v_lshl_or_b32 v188, v138, 16, v98
	v_lshl_or_b32 v187, v140, 16, v139
	v_lshl_or_b32 v186, v146, 16, v141
	v_perm_b32 v95, v197, v196, 0xc0c0004
	v_perm_b32 v97, v195, v194, 0xc0c0004
	v_perm_b32 v98, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v29, v142, v29, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[102:109], v[162:165], v[122:125], v[102:109] neg_lo:[1,1,0]
	v_lshl_or_b32 v195, v209, 16, v94
	v_lshl_or_b32 v193, v97, 16, v95
	v_perm_b32 v94, v213, v212, 0xc0c0004
	v_perm_b32 v95, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v96, v185, v184, 0xc0c0004
	v_lshl_or_b32 v185, v110, 16, v112
	v_lshl_or_b32 v184, v113, 16, v111
	v_wmma_i32_16x16x16_iu8 v[102:109], v[174:177], v[118:121], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v97, v223, v222, 0xc0c0004
	v_lshl_or_b32 v194, v96, 16, v225
	v_perm_b32 v96, v218, v217, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[110:117], v[182:185], v[130:133], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v130, v199, v198, 0xc0c0004
	v_perm_b32 v131, v144, v143, 0xc0c0004
	v_perm_b32 v132, v205, v204, 0xc0c0004
	v_perm_b32 v133, v203, v202, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[110:117], v[186:189], v[122:125], v[110:117] neg_lo:[1,1,0]
	v_lshl_or_b32 v192, v130, 16, v98
	v_lshl_or_b32 v191, v29, 16, v131
	v_perm_b32 v29, v215, v214, 0xc0c0004
	v_lshl_or_b32 v190, v133, 16, v132
	v_perm_b32 v98, v221, v208, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v224, 0xc0c0004
	v_perm_b32 v130, v211, v210, 0xc0c0004
	v_lshl_or_b32 v197, v145, 16, v216
	v_lshl_or_b32 v196, v207, 16, v206
	v_wmma_i32_16x16x16_iu8 v[110:117], v[190:193], v[118:121], v[110:117] neg_lo:[1,1,0]
	v_lshl_or_b32 v201, v94, 16, v29
	v_lshl_or_b32 v200, v96, 16, v95
	v_lshl_or_b32 v199, v98, 16, v97
	v_lshl_or_b32 v198, v130, 16, v0
	v_wmma_i32_16x16x16_iu8 v[118:125], v[158:161], v[134:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[194:197], v[126:129], v[102:109] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[202:205], v101 offset:3072
	ds_load_b128 v[206:209], v101 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[110:117], v[198:201], v[126:129], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[182:185], v[134:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[162:165], v[25:28], v[118:125] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[186:189], v[25:28], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[174:177], v[21:24], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[190:193], v[21:24], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[194:197], v[9:12], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[198:201], v[9:12], v[126:133] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v104
	v_cvt_f32_i32_e32 v10, v105
	v_cvt_f32_i32_e32 v11, v106
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v93, v93, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v107
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v92, v92, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v91, v91, v10 :: v_dual_add_f32 v90, v90, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v109
	v_cvt_f32_i32_e32 v11, v110
	v_cvt_f32_i32_e32 v12, v111
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v89, v89, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v112
	v_wmma_i32_16x16x16_iu8 v[134:141], v[158:161], v[150:153], v[1:8] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v88, v88, v9
	v_dual_add_f32 v86, v86, v10 :: v_dual_add_f32 v85, v85, v11
	v_add_f32_e32 v84, v84, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v113
	v_cvt_f32_i32_e32 v10, v114
	v_cvt_f32_i32_e32 v11, v115
	v_cvt_f32_i32_e32 v12, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v83, v83, v0 :: v_dual_add_f32 v82, v82, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v117
	v_wmma_i32_16x16x16_iu8 v[142:149], v[182:185], v[150:153], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[162:165], v[170:173], v[134:141] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v81, v81, v10 :: v_dual_add_f32 v80, v80, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v118
	v_cvt_f32_i32_e32 v10, v119
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v79, v79, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v120
	v_cvt_f32_i32_e32 v12, v121
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v78, v78, v0 :: v_dual_add_f32 v77, v77, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v122
	v_wmma_i32_16x16x16_iu8 v[142:149], v[186:189], v[170:173], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[174:177], v[17:20], v[134:141] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v76, v76, v10 :: v_dual_add_f32 v75, v75, v11
	v_add_f32_e32 v74, v74, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v123
	v_cvt_f32_i32_e32 v10, v124
	v_cvt_f32_i32_e32 v11, v125
	v_cvt_f32_i32_e32 v12, v126
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v73, v73, v0 :: v_dual_add_f32 v72, v72, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v127
	v_wmma_i32_16x16x16_iu8 v[150:157], v[158:161], v[178:181], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[190:193], v[17:20], v[142:149] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[134:141], v[194:197], v[206:209], v[134:141] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v71, v71, v10 :: v_dual_add_f32 v70, v70, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v128
	v_cvt_f32_i32_e32 v10, v129
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v69, v69, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v130
	v_cvt_f32_i32_e32 v12, v131
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v68, v68, v0 :: v_dual_add_f32 v67, v67, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v132
	v_wmma_i32_16x16x16_iu8 v[150:157], v[162:165], v[166:169], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[182:185], v[178:181], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[198:201], v[206:209], v[142:149] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v66, v66, v10 :: v_dual_add_f32 v65, v65, v11
	v_add_f32_e32 v64, v64, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v133
	v_cvt_f32_i32_e32 v10, v134
	v_cvt_f32_i32_e32 v11, v135
	v_cvt_f32_i32_e32 v12, v136
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v63, v63, v0 :: v_dual_add_f32 v62, v62, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v137
	v_wmma_i32_16x16x16_iu8 v[150:157], v[174:177], v[13:16], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[186:189], v[166:169], v[1:8] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v61, v61, v10 :: v_dual_add_f32 v60, v60, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v138
	v_cvt_f32_i32_e32 v10, v139
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v59, v59, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v140
	v_cvt_f32_i32_e32 v12, v141
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v58, v58, v0 :: v_dual_add_f32 v57, v57, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v142
	v_wmma_i32_16x16x16_iu8 v[150:157], v[194:197], v[202:205], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[190:193], v[13:16], v[1:8] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v56, v56, v10 :: v_dual_add_f32 v55, v55, v11
	v_add_f32_e32 v54, v54, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v143
	v_cvt_f32_i32_e32 v10, v144
	v_cvt_f32_i32_e32 v11, v145
	v_cvt_f32_i32_e32 v12, v146
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v53, v53, v0 :: v_dual_add_f32 v52, v52, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v147
	v_wmma_i32_16x16x16_iu8 v[1:8], v[198:201], v[202:205], v[1:8] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v51, v51, v10 :: v_dual_add_f32 v50, v50, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v148
	v_cvt_f32_i32_e32 v10, v149
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v49, v49, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v150
	v_cvt_f32_i32_e32 v12, v151
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v48, v48, v0 :: v_dual_add_f32 v47, v47, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v45, v45, v11 :: v_dual_add_f32 v44, v44, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v153
	v_cvt_f32_i32_e32 v12, v156
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v43, v43, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v157
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v46, v46, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v154
	v_cvt_f32_i32_e32 v11, v155
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v39, v39, v12 :: v_dual_add_f32 v36, v36, v2
	v_dual_add_f32 v38, v38, v0 :: v_dual_add_f32 v37, v37, v1
	v_dual_add_f32 v35, v35, v3 :: v_dual_add_f32 v34, v34, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v5
	v_cvt_f32_i32_e32 v1, v6
	v_cvt_f32_i32_e32 v2, v7
	v_cvt_f32_i32_e32 v3, v8
	v_cvt_f32_i32_e32 v4, v102
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v42, v42, v9 :: v_dual_add_f32 v41, v41, v10
	v_dual_add_f32 v40, v40, v11 :: v_dual_add_f32 v33, v33, v0
	v_dual_add_f32 v32, v32, v1 :: v_dual_add_f32 v31, v31, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v30, v30, v3 :: v_dual_add_f32 v87, v87, v4
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v136, s11 :: v_dual_add_nc_u32 v21, s30, v232
	v_dual_mov_b32 v135, s10 :: v_dual_add_nc_u32 v0, s31, v100
	v_dual_mov_b32 v134, s9 :: v_dual_add_nc_u32 v17, s30, v231
	v_dual_mov_b32 v133, s8 :: v_dual_add_nc_u32 v26, s30, v230
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	ds_load_b128 v[1:4], v21 offset:1024
	ds_load_b128 v[22:25], v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v27, v0 offset:3328
	ds_load_u8 v28, v0 offset:3072
	ds_load_u8 v29, v0 offset:3840
	ds_load_u8 v94, v0 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[5:8], v17 offset:3072
	ds_load_b128 v[9:12], v17 offset:2048
	ds_load_b128 v[13:16], v17 offset:1024
	ds_load_b128 v[116:119], v17
	ds_load_b128 v[17:20], v26 offset:1024
	ds_load_b128 v[120:123], v26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v95, v0 offset:2304
	ds_load_u8 v96, v0 offset:2048
	ds_load_u8 v97, v0 offset:2816
	ds_load_u8 v98, v0 offset:2560
	ds_load_u8 v100, v0 offset:1280
	ds_load_u8 v101, v0 offset:1024
	ds_load_u8 v102, v0 offset:1792
	ds_load_u8 v103, v0 offset:1536
	ds_load_u8 v109, v0 offset:3968
	ds_load_u8 v110, v0 offset:3712
	ds_load_u8 v111, v0 offset:3456
	ds_load_u8 v112, v0 offset:3200
	ds_load_u8 v193, v0 offset:15616
	ds_load_u8 v194, v0 offset:15360
	v_dual_mov_b32 v131, s6 :: v_dual_add_nc_u32 v108, s30, v229
	ds_load_u8 v137, v0 offset:1920
	ds_load_u8 v138, v0 offset:1664
	ds_load_u8 v139, v0 offset:1408
	ds_load_u8 v140, v0 offset:1152
	ds_load_u8 v155, v0 offset:6016
	ds_load_u8 v156, v0 offset:5760
	ds_load_u8 v157, v0 offset:5504
	ds_load_u8 v158, v0 offset:5248
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[177:180], v26 offset:3072
	ds_load_b128 v[181:184], v26 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v132, s7 :: v_dual_mov_b32 v129, s4
	v_mov_b32_e32 v130, s5
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v106, v96, v95, 0xc0c0004
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v107, v98, v97, 0xc0c0004
	v_perm_b32 v28, v94, v29, 0xc0c0004
	ds_load_u8 v29, v0 offset:256
	ds_load_u8 v94, v0
	ds_load_u8 v104, v0 offset:768
	ds_load_u8 v105, v0 offset:512
	ds_load_u8 v113, v0 offset:2944
	ds_load_u8 v114, v0 offset:2688
	ds_load_u8 v115, v0 offset:2432
	ds_load_u8 v128, v0 offset:2176
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v101, v103, v102, 0xc0c0004
	v_lshl_or_b32 v171, v107, 16, v106
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[95:98], v108 offset:1024
	ds_load_b128 v[124:127], v108
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v172, v28, 16, v27
	ds_load_u8 v27, v0 offset:896
	ds_load_u8 v28, v0 offset:640
	ds_load_u8 v141, v0 offset:384
	ds_load_u8 v142, v0 offset:128
	v_lshl_or_b32 v170, v101, 16, v100
	ds_load_u8 v100, v0 offset:7424
	ds_load_u8 v101, v0 offset:7168
	ds_load_u8 v102, v0 offset:7936
	ds_load_u8 v103, v0 offset:7680
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v215, v194, v193, 0xc0c0004
	ds_load_u8 v193, v0 offset:12544
	ds_load_u8 v194, v0 offset:12288
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v29, v94, v29, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v94, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v110, v128, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v169, v94, 16, v29
	ds_load_u8 v29, v0 offset:6400
	ds_load_u8 v94, v0 offset:6144
	ds_load_u8 v104, v0 offset:6912
	ds_load_u8 v105, v0 offset:6656
	ds_load_u8 v106, v0 offset:5376
	ds_load_u8 v107, v0 offset:5120
	ds_load_u8 v143, v0 offset:5888
	ds_load_u8 v144, v0 offset:5632
	ds_load_u8 v145, v0 offset:8064
	ds_load_u8 v146, v0 offset:7808
	ds_load_u8 v147, v0 offset:7552
	ds_load_u8 v148, v0 offset:7296
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v149, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v150, v103, v102, 0xc0c0004
	ds_load_u8 v100, v0 offset:4352
	ds_load_u8 v101, v0 offset:4096
	ds_load_u8 v102, v0 offset:4864
	ds_load_u8 v103, v0 offset:4608
	ds_load_u8 v151, v0 offset:7040
	ds_load_u8 v152, v0 offset:6784
	ds_load_u8 v153, v0 offset:6528
	ds_load_u8 v154, v0 offset:6272
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v225, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v29, v94, v29, 0xc0c0004
	v_lshl_or_b32 v176, v150, 16, v149
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v94, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v159, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v0 offset:11520
	ds_load_u8 v160, v0 offset:11264
	ds_load_u8 v161, v0 offset:12032
	ds_load_u8 v162, v0 offset:11776
	ds_load_u8 v165, v0 offset:4992
	ds_load_u8 v166, v0 offset:4736
	ds_load_u8 v167, v0 offset:4480
	ds_load_u8 v168, v0 offset:4224
	v_lshl_or_b32 v175, v94, 16, v29
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v128, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v163, v101, v100, 0xc0c0004
	v_lshl_or_b32 v174, v143, 16, v159
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v164, v103, v102, 0xc0c0004
	ds_load_u8 v29, v0 offset:10496
	ds_load_u8 v94, v0 offset:10240
	ds_load_u8 v143, v0 offset:11008
	ds_load_u8 v149, v0 offset:10752
	ds_load_u8 v150, v0 offset:12160
	ds_load_u8 v159, v0 offset:11904
	ds_load_u8 v197, v0 offset:11648
	ds_load_u8 v198, v0 offset:11392
	v_wmma_i32_16x16x16_iu8 v[100:107], v[169:172], v[124:127], v[129:136] neg_lo:[1,1,0]
	v_lshl_or_b32 v173, v164, 16, v163
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v144, v160, v144, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v160, v162, v161, 0xc0c0004
	ds_load_u8 v161, v0 offset:9472
	ds_load_u8 v162, v0 offset:9216
	ds_load_u8 v163, v0 offset:9984
	ds_load_u8 v164, v0 offset:9728
	ds_load_u8 v185, v0 offset:8448
	ds_load_u8 v186, v0 offset:8192
	ds_load_u8 v189, v0 offset:8960
	ds_load_u8 v190, v0 offset:8704
	ds_load_u8 v199, v0 offset:11136
	ds_load_u8 v200, v0 offset:10880
	ds_load_u8 v201, v0 offset:10624
	ds_load_u8 v202, v0 offset:10368
	v_wmma_i32_16x16x16_iu8 v[100:107], v[173:176], v[120:123], v[100:107] neg_lo:[1,1,0]
	v_lshl_or_b32 v188, v160, 16, v144
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v29, v94, v29, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v94, v149, v143, 0xc0c0004
	ds_load_u8 v160, v0 offset:9088
	ds_load_u8 v203, v0 offset:8832
	ds_load_u8 v204, v0 offset:8576
	ds_load_u8 v205, v0 offset:8320
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v144, v162, v161, 0xc0c0004
	v_lshl_or_b32 v187, v94, 16, v29
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v149, v164, v163, 0xc0c0004
	ds_load_u8 v26, v0 offset:10112
	ds_load_u8 v29, v0 offset:9856
	ds_load_u8 v94, v0 offset:9600
	ds_load_u8 v143, v0 offset:9344
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v161, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v162, v190, v189, 0xc0c0004
	v_lshl_or_b32 v186, v149, 16, v144
	ds_load_u8 v144, v0 offset:16128
	ds_load_u8 v149, v0 offset:15872
	v_lshl_or_b32 v185, v162, 16, v161
	ds_load_u8 v195, v0 offset:14592
	ds_load_u8 v196, v0 offset:14336
	ds_load_u8 v206, v0 offset:15104
	ds_load_u8 v207, v0 offset:14848
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[189:192], v108 offset:3072
	ds_load_b128 v[161:164], v108 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v108, v0 offset:13568
	ds_load_u8 v208, v0 offset:13312
	ds_load_u8 v209, v0 offset:14080
	ds_load_u8 v210, v0 offset:13824
	ds_load_u8 v211, v0 offset:16256
	ds_load_u8 v212, v0 offset:16000
	ds_load_u8 v213, v0 offset:15744
	ds_load_u8 v214, v0 offset:15488
	v_wmma_i32_16x16x16_iu8 v[100:107], v[185:188], v[116:119], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v26, v29, v26, 0xc0c0004
	v_perm_b32 v29, v205, v204, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v94, v143, v94, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v208, v208, v108, 0xc0c0004
	v_perm_b32 v219, v196, v195, 0xc0c0004
	v_perm_b32 v144, v149, v144, 0xc0c0004
	v_perm_b32 v206, v207, v206, 0xc0c0004
	ds_load_u8 v195, v0 offset:13056
	ds_load_u8 v196, v0 offset:12800
	ds_load_u8 v207, v0 offset:14208
	ds_load_u8 v220, v0 offset:13952
	ds_load_u8 v221, v0 offset:13696
	ds_load_u8 v222, v0 offset:13440
	ds_load_u8 v149, v0 offset:15232
	ds_load_u8 v216, v0 offset:14976
	ds_load_u8 v217, v0 offset:14720
	ds_load_u8 v218, v0 offset:14464
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v209, v210, v209, 0xc0c0004
	ds_load_u8 v210, v0 offset:13184
	ds_load_u8 v223, v0 offset:12928
	ds_load_u8 v224, v0 offset:12672
	ds_load_u8 v0, v0 offset:12416
	v_perm_b32 v108, v112, v111, 0xc0c0004
	v_perm_b32 v111, v114, v113, 0xc0c0004
	v_perm_b32 v112, v140, v139, 0xc0c0004
	v_perm_b32 v113, v138, v137, 0xc0c0004
	v_perm_b32 v114, v142, v141, 0xc0c0004
	v_perm_b32 v137, v154, v153, 0xc0c0004
	v_perm_b32 v138, v152, v151, 0xc0c0004
	v_perm_b32 v139, v158, v157, 0xc0c0004
	v_lshl_or_b32 v194, v113, 16, v112
	v_lshl_or_b32 v193, v27, 16, v114
	v_perm_b32 v27, v148, v147, 0xc0c0004
	v_perm_b32 v140, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v28, v196, v195, 0xc0c0004
	v_lshl_or_b32 v196, v109, 16, v108
	v_lshl_or_b32 v195, v111, 16, v110
	v_perm_b32 v141, v168, v167, 0xc0c0004
	v_perm_b32 v142, v166, v165, 0xc0c0004
	v_lshl_or_b32 v204, v144, 16, v215
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[108:115], v[193:196], v[124:127], v[129:136] neg_lo:[1,1,0]
	v_lshl_or_b32 v127, v128, 16, v27
	v_lshl_or_b32 v126, v138, 16, v137
	v_lshl_or_b32 v125, v140, 16, v139
	v_lshl_or_b32 v124, v142, 16, v141
	v_perm_b32 v27, v198, v197, 0xc0c0004
	v_perm_b32 v128, v159, v150, 0xc0c0004
	v_perm_b32 v137, v202, v201, 0xc0c0004
	v_perm_b32 v138, v200, v199, 0xc0c0004
	v_perm_b32 v139, v203, v160, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[108:115], v[124:127], v[120:123], v[108:115] neg_lo:[1,1,0]
	v_lshl_or_b32 v200, v128, 16, v27
	v_lshl_or_b32 v198, v26, 16, v94
	v_lshl_or_b32 v199, v138, 16, v137
	v_lshl_or_b32 v197, v139, 16, v29
	v_lshl_or_b32 v202, v209, 16, v208
	v_perm_b32 v26, v214, v213, 0xc0c0004
	v_perm_b32 v27, v212, v211, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v29, v216, v149, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v224, 0xc0c0004
	v_perm_b32 v137, v223, v210, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[209:212], v21 offset:3072
	ds_load_b128 v[213:216], v21 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[108:115], v[197:200], v[116:119], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[169:172], v[95:98], v[129:136] neg_lo:[1,1,0]
	v_lshl_or_b32 v205, v137, 16, v0
	v_wmma_i32_16x16x16_iu8 v[137:144], v[193:196], v[95:98], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[169:172], v[161:164], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[193:196], v[161:164], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[169:172], v[189:192], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[193:196], v[189:192], v[129:136] neg_lo:[1,1,0]
	v_lshl_or_b32 v201, v28, 16, v225
	v_perm_b32 v28, v218, v217, 0xc0c0004
	v_perm_b32 v94, v222, v221, 0xc0c0004
	v_perm_b32 v128, v220, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[116:123], v[173:176], v[17:20], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[124:127], v[17:20], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[173:176], v[181:184], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[124:127], v[181:184], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[173:176], v[177:180], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[124:127], v[177:180], v[129:136] neg_lo:[1,1,0]
	v_lshl_or_b32 v203, v206, 16, v219
	v_lshl_or_b32 v208, v27, 16, v26
	v_lshl_or_b32 v207, v29, 16, v28
	v_lshl_or_b32 v206, v128, 16, v94
	v_wmma_i32_16x16x16_iu8 v[116:123], v[185:188], v[13:16], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[197:200], v[13:16], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[185:188], v[9:12], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[197:200], v[9:12], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[185:188], v[5:8], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[197:200], v[5:8], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[201:204], v[22:25], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[205:208], v[22:25], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[201:204], v[1:4], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[205:208], v[1:4], v[137:144] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[201:204], v[213:216], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[205:208], v[213:216], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[201:204], v[209:212], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[205:208], v[209:212], v[129:136] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v100
	v_cvt_f32_i32_e32 v2, v101
	v_cvt_f32_i32_e32 v3, v102
	v_cvt_f32_i32_e32 v4, v103
	v_cvt_f32_i32_e32 v5, v104
	v_cvt_f32_i32_e32 v6, v105
	v_cvt_f32_i32_e32 v7, v106
	v_cvt_f32_i32_e32 v8, v107
	v_cvt_f32_i32_e32 v9, v108
	v_cvt_f32_i32_e32 v10, v109
	v_cvt_f32_i32_e32 v11, v110
	v_cvt_f32_i32_e32 v12, v111
	v_cvt_f32_i32_e32 v13, v112
	v_cvt_f32_i32_e32 v14, v113
	v_cvt_f32_i32_e32 v15, v114
	v_cvt_f32_i32_e32 v16, v115
	v_cvt_f32_i32_e32 v17, v116
	v_cvt_f32_i32_e32 v18, v117
	v_cvt_f32_i32_e32 v19, v118
	v_cvt_f32_i32_e32 v20, v119
	v_cvt_f32_i32_e32 v21, v120
	v_cvt_f32_i32_e32 v22, v121
	v_cvt_f32_i32_e32 v23, v122
	v_cvt_f32_i32_e32 v24, v123
	v_cvt_f32_i32_e32 v25, v137
	v_cvt_f32_i32_e32 v26, v138
	v_cvt_f32_i32_e32 v27, v139
	v_cvt_f32_i32_e32 v28, v140
	v_cvt_f32_i32_e32 v101, v141
	v_cvt_f32_i32_e32 v102, v142
	v_cvt_f32_i32_e32 v103, v143
	v_cvt_f32_i32_e32 v104, v144
	v_cvt_f32_i32_e32 v105, v145
	v_cvt_f32_i32_e32 v106, v146
	v_cvt_f32_i32_e32 v107, v147
	v_cvt_f32_i32_e32 v108, v148
	v_cvt_f32_i32_e32 v109, v149
	v_cvt_f32_i32_e32 v110, v150
	v_cvt_f32_i32_e32 v111, v151
	v_cvt_f32_i32_e32 v112, v152
	v_cvt_f32_i32_e32 v113, v153
	v_cvt_f32_i32_e32 v114, v154
	v_cvt_f32_i32_e32 v115, v155
	v_cvt_f32_i32_e32 v116, v156
	v_cvt_f32_i32_e32 v117, v157
	v_cvt_f32_i32_e32 v118, v158
	v_cvt_f32_i32_e32 v119, v159
	v_cvt_f32_i32_e32 v120, v160
	v_cvt_f32_i32_e32 v121, v161
	v_cvt_f32_i32_e32 v122, v162
	v_cvt_f32_i32_e32 v123, v163
	v_cvt_f32_i32_e32 v124, v164
	v_cvt_f32_i32_e32 v125, v165
	v_cvt_f32_i32_e32 v126, v166
	v_cvt_f32_i32_e32 v127, v167
	v_cvt_f32_i32_e32 v128, v168
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
.LBB0_11:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v0, s29, v227
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or_b32_e32 v29, s28, v226
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v92, v3 :: v_dual_lshlrev_b32 v0, 1, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s4, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v93, v2 :: v_dual_lshlrev_b32 v29, 1, v29
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v94, 32, v0
	v_or_b32_e32 v95, 64, v0
	v_or_b32_e32 v96, 0x60, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v20, v74, v20 :: v_dual_add_f32 v25, v69, v25
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x3
	buffer_load_u16 v0, v0, s[4:7], 0 offen
	buffer_load_u16 v94, v94, s[4:7], 0 offen
	buffer_load_u16 v95, v95, s[4:7], 0 offen
	buffer_load_u16 v96, v96, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_dual_add_f32 v98, v87, v1 :: v_dual_and_b32 v137, 28, v228
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v69, v25, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v139, v99, 2, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v93, v93, v2, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v97, 1, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v89, v6 :: v_dual_add_f32 v11, v83, v11
	v_dual_add_f32 v100, v88, v7 :: v_dual_add_f32 v9, v85, v9
	v_dual_add_f32 v8, v86, v8 :: v_dual_add_f32 v13, v81, v13
	v_dual_add_f32 v10, v84, v10 :: v_dual_add_f32 v15, v79, v15
	v_add_f32_e32 v132, v34, v132
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v99, v99, 1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v92, v92, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v12, v82, v12 :: v_dual_add_f32 v17, v77, v17
	v_dual_add_f32 v14, v80, v14 :: v_dual_add_f32 v19, v75, v19
	v_dual_add_f32 v16, v78, v16 :: v_dual_add_f32 v21, v73, v21
	v_dual_add_f32 v18, v76, v18 :: v_dual_add_f32 v23, v71, v23
	v_dual_add_f32 v22, v72, v22 :: v_dual_add_f32 v27, v67, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v8, s2
	v_cndmask_b32_e64 v85, v85, v9, s2
	v_cndmask_b32_e64 v84, v84, v10, s2
	v_cndmask_b32_e64 v83, v83, v11, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v82, v12, s2
	v_cndmask_b32_e64 v81, v81, v13, s2
	v_cndmask_b32_e64 v80, v80, v14, s2
	v_cndmask_b32_e64 v79, v79, v15, s2
	v_cndmask_b32_e64 v78, v78, v16, s2
	v_cndmask_b32_e64 v77, v77, v17, s2
	v_cndmask_b32_e64 v76, v76, v18, s2
	v_cndmask_b32_e64 v75, v75, v19, s2
	v_cndmask_b32_e64 v74, v74, v20, s2
	v_cndmask_b32_e64 v73, v73, v21, s2
	v_cndmask_b32_e64 v72, v72, v22, s2
	v_cndmask_b32_e64 v71, v71, v23, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v24, v70, v24 :: v_dual_add_f32 v101, v65, v101
	v_dual_add_f32 v106, v60, v106 :: v_dual_add_f32 v111, v55, v111
	v_dual_add_f32 v4, v91, v4 :: v_dual_add_f32 v5, v90, v5
	v_dual_add_f32 v26, v68, v26 :: v_dual_add_f32 v103, v63, v103
	v_dual_add_f32 v28, v66, v28 :: v_dual_add_f32 v105, v61, v105
	v_dual_add_f32 v102, v64, v102 :: v_dual_add_f32 v107, v59, v107
	v_dual_add_f32 v104, v62, v104 :: v_dual_add_f32 v109, v57, v109
	v_dual_add_f32 v108, v58, v108 :: v_dual_add_f32 v113, v53, v113
	v_dual_add_f32 v110, v56, v110 :: v_dual_add_f32 v115, v51, v115
	v_dual_add_f32 v112, v54, v112 :: v_dual_add_f32 v117, v49, v117
	v_dual_add_f32 v116, v50, v116 :: v_dual_add_f32 v121, v45, v121
	v_dual_add_f32 v118, v48, v118 :: v_dual_add_f32 v123, v43, v123
	v_dual_add_f32 v120, v46, v120 :: v_dual_add_f32 v125, v41, v125
	v_dual_add_f32 v122, v44, v122 :: v_dual_add_f32 v127, v39, v127
	v_dual_add_f32 v124, v42, v124 :: v_dual_add_f32 v129, v37, v129
	v_dual_add_f32 v126, v40, v126 :: v_dual_add_f32 v131, v35, v131
	v_dual_add_f32 v128, v38, v128 :: v_dual_add_f32 v133, v33, v133
	v_dual_add_f32 v130, v36, v130 :: v_dual_add_f32 v135, v31, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v70, v24, s2
	v_cndmask_b32_e64 v55, v55, v111, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v1, s25, v227
	s_mul_i32 s29, s29, s25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v114, v52, v114 :: v_dual_add_f32 v119, v47, v119
	v_add_f32_e32 v134, v32, v134
	v_add_f32_e32 v136, v30, v136
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v87, v87, v98, s2
	v_cndmask_b32_e64 v91, v91, v4, s2
	v_cndmask_b32_e64 v27, v67, v27, s2
	v_cndmask_b32_e64 v63, v63, v103, s2
	v_cndmask_b32_e64 v62, v62, v104, s2
	v_cndmask_b32_e64 v61, v61, v105, s2
	v_cndmask_b32_e64 v60, v60, v106, s2
	v_cndmask_b32_e64 v59, v59, v107, s2
	v_cndmask_b32_e64 v56, v56, v110, s2
	v_cndmask_b32_e64 v54, v54, v112, s2
	v_cndmask_b32_e64 v53, v53, v113, s2
	v_cndmask_b32_e64 v48, v48, v118, s2
	v_cndmask_b32_e64 v46, v46, v120, s2
	v_cndmask_b32_e64 v45, v45, v121, s2
	v_cndmask_b32_e64 v44, v44, v122, s2
	v_cndmask_b32_e64 v43, v43, v123, s2
	v_cndmask_b32_e64 v42, v42, v124, s2
	v_cndmask_b32_e64 v39, v39, v127, s2
	v_cndmask_b32_e64 v38, v38, v128, s2
	v_cndmask_b32_e64 v36, v36, v130, s2
	v_cndmask_b32_e64 v35, v35, v131, s2
	v_cndmask_b32_e64 v33, v33, v133, s2
	v_cndmask_b32_e64 v90, v90, v5, s2
	v_cndmask_b32_e64 v89, v89, v6, s2
	v_cndmask_b32_e64 v88, v88, v100, s2
	v_cndmask_b32_e64 v26, v68, v26, s2
	v_cndmask_b32_e64 v65, v65, v101, s2
	v_cndmask_b32_e64 v64, v64, v102, s2
	v_cndmask_b32_e64 v58, v58, v108, s2
	v_cndmask_b32_e64 v57, v57, v109, s2
	v_cndmask_b32_e64 v52, v52, v114, s2
	v_cndmask_b32_e64 v51, v51, v115, s2
	v_cndmask_b32_e64 v50, v50, v116, s2
	v_cndmask_b32_e64 v49, v49, v117, s2
	v_cndmask_b32_e64 v47, v47, v119, s2
	v_cndmask_b32_e64 v41, v41, v125, s2
	v_cndmask_b32_e64 v40, v40, v126, s2
	v_cndmask_b32_e64 v37, v37, v129, s2
	v_cndmask_b32_e64 v31, v31, v135, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v5, s26, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v134, s2
	v_cndmask_b32_e64 v28, v66, v28, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, 0
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s3, s7
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v66.h, v7.h
	v_mov_b16_e32 v67.h, v7.h
	v_mov_b16_e32 v68.h, v7.h
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v69, 16, v94
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v138, 5, v226
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v2, 32, v138
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v34, v132, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.h, v7.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add3_u32 v2, v139, v2, v137
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v99
	ds_load_b128 v[12:15], v99 offset:16
	ds_load_b128 v[16:19], v99 offset:512
	ds_load_b128 v[20:23], v99 offset:528
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v94, 16, v96
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v2, s29, s28, v97
	v_add_nc_u32_e32 v3, s24, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v136, s2
	s_mov_b32 s2, 0x76543210
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v111, v9, v69 :: v_dual_lshlrev_b32 v70, 16, v95
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v103, v16, v0
	v_mul_f32_e32 v96, v9, v0
	v_mul_f32_e32 v95, v8, v0
	v_mul_f32_e32 v97, v10, v0
	v_dual_mul_f32 v98, v11, v0 :: v_dual_mul_f32 v115, v13, v69
	v_dual_mul_f32 v104, v17, v0 :: v_dual_mul_f32 v121, v19, v69
	v_dual_mul_f32 v105, v18, v0 :: v_dual_mul_f32 v110, v8, v69
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v106, v19, v0 :: v_dual_mul_f32 v123, v21, v69
	v_dual_mul_f32 v107, v20, v0 :: v_dual_mul_f32 v112, v10, v69
	v_mul_f32_e32 v113, v11, v69
	v_dual_mul_f32 v118, v16, v69 :: v_dual_mul_f32 v127, v10, v70
	v_dual_mul_f32 v120, v18, v69 :: v_dual_mul_f32 v133, v16, v70
	v_dual_mul_f32 v122, v20, v69 :: v_dual_mul_f32 v131, v14, v70
	v_dual_mul_f32 v124, v22, v69 :: v_dual_mul_f32 v137, v20, v70
	v_dual_mul_f32 v128, v11, v70 :: v_dual_mul_f32 v93, v93, v96
	v_dual_mul_f32 v130, v13, v70 :: v_dual_mul_f32 v83, v83, v105
	v_dual_mul_f32 v10, v10, v94 :: v_dual_mul_f32 v27, v27, v120
	v_dual_mul_f32 v11, v11, v94 :: v_dual_mul_f32 v84, v84, v104
	v_dual_mul_f32 v20, v20, v94 :: v_dual_mul_f32 v55, v55, v131
	v_dual_mul_f32 v99, v12, v0 :: v_dual_add_nc_u32 v6, s27, v1
	v_dual_mul_f32 v101, v14, v0 :: v_dual_add_nc_u32 v4, 0x80, v2
	v_dual_mul_f32 v100, v13, v0 :: v_dual_mul_f32 v117, v15, v69
	v_dual_mul_f32 v102, v15, v0 :: v_dual_mul_f32 v119, v17, v69
	v_mul_f32_e32 v108, v21, v0
	v_dual_mul_f32 v109, v22, v0 :: v_dual_mul_f32 v114, v12, v69
	v_dual_mul_f32 v0, v23, v0 :: v_dual_mul_f32 v125, v8, v70
	v_dual_mul_f32 v116, v14, v69 :: v_dual_mul_f32 v129, v12, v70
	v_dual_mul_f32 v69, v23, v69 :: v_dual_mul_f32 v126, v9, v70
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v87, v87, v95
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v132, v15, v70 :: v_dual_mul_f32 v89, v89, v100
	v_dual_mul_f32 v134, v17, v70 :: v_dual_mul_f32 v79, v79, v109
	v_dual_mul_f32 v135, v18, v70 :: v_dual_mul_f32 v92, v92, v97
	v_dual_mul_f32 v136, v19, v70 :: v_dual_mul_f32 v85, v85, v103
	v_dual_mul_f32 v138, v21, v70 :: v_dual_mul_f32 v75, v75, v112
	v_dual_mul_f32 v139, v22, v70 :: v_dual_mul_f32 v88, v88, v101
	v_dual_mul_f32 v70, v23, v70 :: v_dual_mul_f32 v81, v81, v107
	v_dual_mul_f32 v8, v8, v94 :: v_dual_mul_f32 v71, v71, v116
	v_dual_mul_f32 v9, v9, v94 :: v_dual_mul_f32 v90, v90, v99
	v_dual_mul_f32 v13, v13, v94 :: v_dual_mul_f32 v80, v80, v108
	v_dual_mul_f32 v15, v15, v94 :: v_dual_mul_f32 v0, v78, v0
	v_dual_mul_f32 v17, v17, v94 :: v_dual_mul_f32 v76, v76, v111
	v_dual_mul_f32 v22, v22, v94 :: v_dual_mul_f32 v53, v53, v133
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v91, v91, v98 :: v_dual_mul_f32 v26, v26, v119
	v_dual_mul_f32 v82, v82, v106 :: v_dual_mul_f32 v49, v49, v137
	v_dual_mul_f32 v56, v56, v130 :: v_dual_mul_f32 v11, v42, v11
	v_mul_f32_e32 v10, v43, v10
	v_dual_mul_f32 v20, v33, v20 :: v_dual_max_f32 v43, 0, v83
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_dual_max_f32 v33, 0, v93 :: v_dual_mul_f32 v12, v12, v94
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v63, v63, v124 :: v_dual_mul_f32 v14, v14, v94
	v_dual_mul_f32 v61, v61, v125 :: v_dual_mul_f32 v16, v16, v94
	v_dual_mul_f32 v59, v59, v127 :: v_dual_mul_f32 v18, v18, v94
	v_mul_f32_e32 v57, v57, v129
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v19, v19, v94 :: v_dual_mul_f32 v74, v74, v113
	v_dual_mul_f32 v21, v21, v94 :: v_dual_mul_f32 v72, v72, v115
	v_dual_mul_f32 v23, v23, v94 :: v_dual_mul_f32 v24, v24, v117
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v73, v73, v114 :: v_dual_mul_f32 v64, v64, v123
	v_dual_mul_f32 v54, v54, v132 :: v_dual_mul_f32 v9, v44, v9
	v_dual_mul_f32 v52, v52, v134 :: v_dual_mul_f32 v15, v38, v15
	v_dual_mul_f32 v50, v50, v136 :: v_dual_mul_f32 v13, v40, v13
	v_dual_mul_f32 v46, v46, v70 :: v_dual_mul_f32 v17, v36, v17
	v_mul_f32_e32 v8, v45, v8
	v_dual_mul_f32 v22, v31, v22 :: v_dual_max_f32 v45, 0, v81
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_max_f32_e32 v31, 0, v87
	v_dual_max_f32 v36, 0, v91 :: v_dual_max_f32 v73, 0, v73
	v_dual_max_f32 v44, 0, v82 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v82, 0, v11 :: v_dual_mul_f32 v11, v33, v33
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v86, v86, v102 :: v_dual_mul_f32 v51, v51, v135
	v_dual_mul_f32 v77, v77, v110 :: v_dual_mul_f32 v28, v28, v121
	v_dual_mul_f32 v25, v25, v118 :: v_dual_mul_f32 v62, v62, v69
	v_dual_mul_f32 v48, v48, v138 :: v_dual_mul_f32 v29, v29, v19
	v_mul_f32_e32 v12, v41, v12
	v_mul_f32_e32 v14, v39, v14
	v_dual_mul_f32 v16, v37, v16 :: v_dual_max_f32 v41, 0, v85
	v_dual_mul_f32 v18, v35, v18 :: v_dual_max_f32 v39, 0, v88
	v_dual_mul_f32 v32, v32, v21 :: v_dual_max_f32 v69, 0, v80
	v_dual_mul_f32 v30, v30, v23 :: v_dual_max_f32 v77, 0, v77
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v35, 0, v92 :: v_dual_max_f32 v38, 0, v89
	v_dual_max_f32 v75, 0, v75 :: v_dual_max_f32 v42, 0, v84
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v56, 0, v56
	v_dual_max_f32 v23, 0, v15 :: v_dual_max_f32 v80, 0, v9
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v9, v31, v31 :: v_dual_max_f32 v84, 0, v13
	v_mul_f32_e32 v15, v36, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v11.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v60, v60, v126 :: v_dual_mul_f32 v47, v47, v139
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v37, 0, v90
	v_dual_max_f32 v40, 0, v86 :: v_dual_max_f32 v71, 0, v71
	v_dual_max_f32 v54, 0, v54 :: v_dual_max_f32 v83, 0, v12
	v_dual_max_f32 v50, 0, v50 :: v_dual_max_f32 v21, 0, v16
	v_dual_max_f32 v46, 0, v46 :: v_dual_max_f32 v13, 0, v20
	v_dual_max_f32 v16, 0, v29 :: v_dual_and_b32 v31, 1, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v12, v35, v35
	v_mul_f32_e32 v20, v38, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v9.h
	v_mov_b16_e32 v7.l, v15.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v65, v65, v122 :: v_dual_mul_f32 v58, v58, v128
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v76, 0, v76 :: v_dual_max_f32 v61, 0, v61
	v_dual_max_f32 v78, 0, v24 :: v_dual_max_f32 v55, 0, v55
	v_dual_max_f32 v60, 0, v60 :: v_dual_max_f32 v81, 0, v10
	v_dual_max_f32 v24, 0, v14 :: v_dual_mul_f32 v29, v40, v40
	v_dual_max_f32 v10, 0, v22 :: v_dual_and_b32 v35, 1, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v12.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v14, 0, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v34
	v_mov_b16_e32 v7.l, v20.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v70, 0, v79 :: v_dual_max_f32 v65, 0, v65
	v_dual_max_f32 v58, 0, v58 :: v_dual_max_f32 v79, 0, v8
	v_dual_max_f32 v52, 0, v52 :: v_dual_max_f32 v19, 0, v17
	v_dual_max_f32 v48, 0, v48 :: v_dual_max_f32 v17, 0, v18
	v_max_f32_e32 v8, 0, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v9, v32, 0x7fff
	v_add3_u32 v9, v11, v31, 0x7fff
	v_and_b32_e32 v31, 1, v7
	v_mov_b16_e32 v7.l, v29.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v37, v37
	v_dual_mul_f32 v22, v39, v39 :: v_dual_and_b32 v33, 1, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v11, v15, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v15, 1, v7
	v_mov_b16_e32 v67.l, v18.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v68.l, v22.h
	v_add3_u32 v12, v12, v33, 0x7fff
	v_mov_b16_e32 v9.l, v32.h
	v_add3_u32 v15, v29, v15, 0x7fff
	v_and_b32_e32 v34, 1, v67
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v29, v43, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v12.h
	v_add3_u32 v12, v20, v31, 0x7fff
	v_and_b32_e32 v20, 1, v68
	v_add3_u32 v18, v18, v34, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v31, v42, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.h, v7.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v74, 0, v74 :: v_dual_max_f32 v59, 0, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v18.h
	v_add3_u32 v18, v22, v20, 0x7fff
	v_mov_b16_e32 v7.l, v31.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v22, v44, v44 :: v_dual_mul_f32 v35, v74, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v15.l, v18.h
	v_and_b32_e32 v18, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v7.l, v22.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v30, v41, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.h, v7.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v63, 0, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v32.l, v30.h
	v_add3_u32 v18, v31, v18, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v31, v69, v69
	v_dual_mul_f32 v25, v25, v25 :: v_dual_mul_f32 v0, v0, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v20, 1, v32
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v32, v45, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v31.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v27, v27, v27 :: v_dual_max_f32 v72, 0, v72
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v57, 0, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v30, v20, 0x7fff
	v_mov_b16_e32 v30.l, v29.h
	v_mov_b16_e32 v30.h, v7.h
	v_mov_b16_e32 v34.l, v32.h
	v_mov_b16_e32 v38.h, v7.h
	v_mov_b16_e32 v18.l, v20.h
	v_add3_u32 v20, v22, v33, 0x7fff
	v_and_b32_e32 v30, 1, v30
	v_and_b32_e32 v22, 1, v34
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v33, v70, v70
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v53, 0, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v29, v30, 0x7fff
	v_and_b32_e32 v30, 1, v7
	v_mov_b16_e32 v7.l, v0.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v51, 0, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.l, v29.h
	v_add3_u32 v29, v32, v22, 0x7fff
	v_add3_u32 v22, v31, v30, 0x7fff
	v_mov_b16_e32 v30.l, v33.h
	v_mov_b16_e32 v30.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v31, v76, v76
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.l, v29.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v32, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v28, v28, v28 :: v_dual_and_b32 v29, 1, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v7
	v_mov_b16_e32 v7.l, v31.h
	v_mov_b16_e32 v34.l, v32.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v41, v54, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v33, v29, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v33, v75, v75
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v0, v0, v30, 0x7fff
	v_and_b32_e32 v30, 1, v7
	v_and_b32_e32 v34, 1, v34
	v_mov_b16_e32 v0.l, v29.h
	v_mov_b16_e32 v36.l, v33.h
	v_mov_b16_e32 v7.l, v35.h
	v_add3_u32 v30, v31, v30, 0x7fff
	v_add3_u32 v29, v32, v34, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v64, 0, v64 :: v_dual_max_f32 v49, 0, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v36
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v36, v71, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v29.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v62, 0, v62 :: v_dual_and_b32 v29, 1, v7
	v_max_f32_e32 v47, 0, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v36.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v34, v73, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v33, v31, 0x7fff
	v_mov_b16_e32 v33.h, v7.h
	v_add3_u32 v29, v35, v29, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v35, v78, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v34.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v32, v72, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v31.h
	v_mov_b16_e32 v42.h, v7.h
	v_mov_b16_e32 v39.h, v7.h
	v_and_b32_e32 v33, 1, v33
	v_mov_b16_e32 v7.l, v32.h
	v_mov_b16_e32 v44.h, v7.h
	v_mov_b16_e32 v40.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v21, v21, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v34, v33, 0x7fff
	v_and_b32_e32 v37, 1, v7
	v_mov_b16_e32 v7.l, v35.h
	v_and_b32_e32 v33, 1, v38
	v_mov_b16_e32 v45.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v17, v17, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v32, v37, 0x7fff
	v_and_b32_e32 v34, 1, v7
	v_mov_b16_e32 v32.l, v31.h
	v_add3_u32 v31, v36, v33, 0x7fff
	v_mov_b16_e32 v37.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v23, v23, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v35, v34, 0x7fff
	v_mov_b16_e32 v34.l, v25.h
	v_mov_b16_e32 v34.h, v7.h
	v_mov_b16_e32 v35.l, v27.h
	v_mov_b16_e32 v35.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v26, v26, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v31.h
	v_and_b32_e32 v31, 1, v34
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v13, v13, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v35, 1, v35
	v_mov_b16_e32 v7.l, v26.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v19, v19, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v25, v31, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v31, v65, v65 :: v_dual_mul_f32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v7
	v_mov_b16_e32 v7.l, v28.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v8, v8, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v31.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v26, v26, v34, 0x7fff
	v_and_b32_e32 v34, 1, v7
	v_mov_b16_e32 v26.l, v25.h
	v_add3_u32 v25, v27, v35, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v35, v63, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v27, v28, v34, 0x7fff
	v_and_b32_e32 v28, 1, v37
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v34, v62, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v25.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v37, v61, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v31, v28, 0x7fff
	v_mov_b16_e32 v31.l, v35.h
	v_mov_b16_e32 v31.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v36, v64, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v7.l, v36.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v25, 1, v7
	v_mov_b16_e32 v7.l, v34.h
	v_add3_u32 v25, v36, v25, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v36, v60, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v7
	v_mov_b16_e32 v25.l, v28.h
	v_add3_u32 v28, v35, v31, 0x7fff
	v_mov_b16_e32 v7.l, v36.h
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v7
	v_add3_u32 v31, v34, v38, 0x7fff
	v_and_b32_e32 v34, 1, v39
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v38, v59, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v28.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v28, v58, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v35, v36, v35, 0x7fff
	v_add3_u32 v34, v37, v34, 0x7fff
	v_mov_b16_e32 v36.l, v38.h
	v_mov_b16_e32 v36.h, v7.h
	v_mov_b16_e32 v7.l, v28.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v37, v56, v56
	v_mul_f32_e32 v39, v57, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.l, v34.h
	v_and_b32_e32 v34, 1, v36
	v_and_b32_e32 v36, 1, v7
	v_mov_b16_e32 v7.l, v37.h
	v_mov_b16_e32 v40.l, v39.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v34, v38, v34, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v38, v55, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v28, v36, 0x7fff
	v_and_b32_e32 v36, 1, v7
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e32 v28.l, v34.h
	v_mov_b16_e32 v42.l, v38.h
	v_mov_b16_e32 v7.l, v41.h
	v_add3_u32 v36, v37, v36, 0x7fff
	v_add3_u32 v34, v39, v40, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v39, v52, v52
	v_dual_mul_f32 v40, v53, v53 :: v_dual_and_b32 v37, 1, v42
	v_mul_f32_e32 v42, v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v34.h
	v_and_b32_e32 v34, 1, v7
	v_add3_u32 v37, v38, v37, 0x7fff
	v_mov_b16_e32 v7.l, v39.h
	v_mov_b16_e32 v38.l, v40.h
	v_mov_b16_e32 v38.h, v7.h
	v_add3_u32 v34, v41, v34, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v41, v50, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v7
	v_mov_b16_e32 v44.l, v42.h
	v_and_b32_e32 v38, 1, v38
	v_mov_b16_e32 v34.l, v37.h
	v_mov_b16_e32 v7.l, v41.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v37, v40, v38, 0x7fff
	v_add3_u32 v38, v39, v43, 0x7fff
	v_and_b32_e32 v39, 1, v44
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v44, v47, v47
	v_dual_mul_f32 v43, v49, v49 :: v_dual_and_b32 v40, 1, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v37.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v37, v48, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.l, v44.h
	v_add3_u32 v40, v41, v40, 0x7fff
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v41.h, v7.h
	v_mov_b16_e32 v7.l, v37.h
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v39, v42, v39, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v42, v46, v46
	v_mul_f32_e32 v46, v80, v80
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v47.h, v7.h
	v_mov_b16_e32 v49.h, v7.h
	v_mov_b16_e32 v40.l, v39.h
	v_and_b32_e32 v39, 1, v41
	v_and_b32_e32 v41, 1, v7
	v_mov_b16_e32 v7.l, v42.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v39, v43, v39, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v43, v79, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v37, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v41, 1, v7
	v_mov_b16_e32 v7.l, v46.h
	v_mov_b16_e32 v37.l, v39.h
	v_mov_b16_e32 v47.l, v43.h
	v_add3_u32 v39, v44, v45, 0x7fff
	v_add3_u32 v41, v42, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v45, v81, v81 :: v_dual_and_b32 v42, 1, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v39.h
	v_and_b32_e32 v39, 1, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v47, v83, v83
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v43, v42, 0x7fff
	v_mov_b16_e32 v43.l, v45.h
	v_mov_b16_e32 v43.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v44, v82, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v46, v39, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v46, v84, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v49.l, v47.h
	v_and_b32_e32 v43, 1, v43
	v_mov_b16_e32 v7.l, v44.h
	v_mov_b16_e32 v39.l, v42.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v45, v43, 0x7fff
	v_and_b32_e32 v48, 1, v7
	v_mov_b16_e32 v7.l, v46.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v43, v44, v48, 0x7fff
	v_and_b32_e32 v44, 1, v49
	v_and_b32_e32 v45, 1, v7
	v_mov_b16_e32 v7.l, v23.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v24, v24, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.l, v42.h
	v_add3_u32 v42, v47, v44, 0x7fff
	v_add3_u32 v44, v46, v45, 0x7fff
	v_mov_b16_e32 v45.h, v7.h
	v_mov_b16_e32 v45.l, v24.h
	v_mov_b16_e32 v46.l, v21.h
	v_mov_b16_e32 v44.l, v42.h
	v_mov_b16_e32 v46.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v42, 1, v45
	v_and_b32_e32 v45, 1, v7
	v_mov_b16_e32 v7.l, v19.h
	v_add3_u32 v24, v24, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v23, v23, v45, 0x7fff
	v_and_b32_e32 v42, 1, v46
	v_and_b32_e32 v45, 1, v7
	v_mov_b16_e32 v46.l, v17.h
	v_mov_b16_e32 v7.l, v16.h
	v_mov_b16_e32 v23.l, v24.h
	v_add3_u32 v21, v21, v42, 0x7fff
	v_add3_u32 v19, v19, v45, 0x7fff
	v_and_b32_e32 v24, 1, v46
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v14, v14, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.h, v7.h
	v_mov_b16_e32 v19.l, v21.h
	v_and_b32_e32 v21, 1, v7
	v_add3_u32 v17, v17, v24, 0x7fff
	v_mov_b16_e32 v7.l, v14.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v10, v10, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v13.h
	v_add3_u32 v16, v16, v21, 0x7fff
	v_mov_b16_e32 v24.h, v7.h
	v_mov_b16_e32 v16.l, v17.h
	v_and_b32_e32 v17, 16, v226
	v_and_b32_e32 v21, 1, v7
	v_mov_b16_e32 v42.l, v10.h
	v_mov_b16_e32 v7.l, v8.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e32 vcc_lo, 0, v17
	v_and_b32_e32 v24, 1, v24
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v14, v14, v21, 0x7fff
	v_cndmask_b32_e32 v17, v32, v30, vcc_lo
	v_add3_u32 v13, v13, v24, 0x7fff
	v_cndmask_b32_e32 v24, v26, v25, vcc_lo
	v_add3_u32 v7, v8, v7, 0x7fff
	v_dual_cndmask_b32 v8, v12, v9 :: v_dual_cndmask_b32 v9, v9, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v14.l, v13.h
	v_cndmask_b32_e32 v12, v22, v18, vcc_lo
	v_cndmask_b32_e32 v13, v18, v22, vcc_lo
	v_dual_cndmask_b32 v22, v25, v26 :: v_dual_cndmask_b32 v25, v31, v27
	v_add3_u32 v10, v10, v42, 0x7fff
	v_dual_cndmask_b32 v18, v30, v32 :: v_dual_cndmask_b32 v21, v29, v33
	v_dual_cndmask_b32 v26, v27, v31 :: v_dual_cndmask_b32 v31, v37, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v7.l, v10.h
	v_cndmask_b32_e32 v10, v15, v11, vcc_lo
	v_cndmask_b32_e32 v11, v11, v15, vcc_lo
	v_cndmask_b32_e32 v15, v0, v20, vcc_lo
	v_cndmask_b32_e32 v0, v20, v0, vcc_lo
	v_cndmask_b32_e32 v20, v33, v29, vcc_lo
	v_cndmask_b32_e32 v30, v34, v28, vcc_lo
	v_cndmask_b32_e32 v28, v28, v34, vcc_lo
	v_dual_cndmask_b32 v32, v38, v37 :: v_dual_cndmask_b32 v33, v41, v40
	v_cndmask_b32_e32 v34, v40, v41, vcc_lo
	v_cndmask_b32_e32 v38, v14, v19, vcc_lo
	v_dual_cndmask_b32 v14, v19, v14 :: v_dual_mov_b32 v19, 0x5410
	v_dual_mov_b32 v40, 0x7632 :: v_dual_cndmask_b32 v27, v36, v35
	v_cndmask_b32_e32 v29, v35, v36, vcc_lo
	v_dual_cndmask_b32 v35, v44, v39 :: v_dual_cndmask_b32 v36, v39, v44
	v_cndmask_b32_e32 v39, v7, v16, vcc_lo
	v_cndmask_b32_e32 v7, v16, v7, vcc_lo
	v_cndmask_b32_e32 v16, 0x1054, v19, vcc_lo
	v_cndmask_b32_e32 v19, 0x3276, v40, vcc_lo
	v_cndmask_b32_e32 v37, v23, v43, vcc_lo
	v_permlanex16_b32 v9, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v16, v16, 8, v16
	v_lshl_or_b32 v19, v19, 8, v19
	v_permlanex16_b32 v13, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v16, 0x540054, v16
	v_and_b32_e32 v19, 0x760076, v19
	v_permlanex16_b32 v21, v21, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v23, v43, v23, vcc_lo
	v_permlanex16_b32 v24, v24, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v16, v16, 4, v16
	v_lshl_or_b32 v19, v19, 4, v19
	v_permlanex16_b32 v26, v26, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v14, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v40, 0x5040504, v16
	v_and_b32_e32 v41, 0x7060706, v19
	v_permlanex16_b32 v29, v29, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v9, v8, v40
	v_perm_b32 v8, v9, v8, v41
	v_perm_b32 v9, v11, v10, v40
	v_perm_b32 v10, v11, v10, v41
	v_perm_b32 v11, v13, v12, v40
	v_perm_b32 v12, v13, v12, v41
	v_perm_b32 v13, v0, v15, v40
	v_perm_b32 v14, v0, v15, v41
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v0, v2, v1, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v34, v34, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v18, v17, v40
	v_perm_b32 v16, v18, v17, v41
	v_perm_b32 v17, v21, v20, v40
	v_perm_b32 v18, v21, v20, v41
	v_add_lshl_u32 v1, v2, v6, 1
	v_permlanex16_b32 v36, v36, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v23, s2, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s2, s6
	v_perm_b32 v19, v24, v22, v40
	v_perm_b32 v20, v24, v22, v41
	v_perm_b32 v21, v26, v25, v40
	v_perm_b32 v22, v26, v25, v41
	s_clause 0x2
	buffer_store_b128 v[7:10], v0, s[0:3], 0 offen
	buffer_store_b128 v[11:14], v0, s[0:3], 0 offen offset:256
	buffer_store_b128 v[15:18], v1, s[0:3], 0 offen
	v_add_lshl_u32 v0, v4, v6, 1
	v_perm_b32 v23, v29, v27, v40
	v_perm_b32 v24, v29, v27, v41
	v_perm_b32 v25, v28, v30, v40
	v_perm_b32 v26, v28, v30, v41
	v_add_lshl_u32 v1, v2, v5, 1
	v_perm_b32 v27, v32, v31, v40
	v_perm_b32 v28, v32, v31, v41
	v_perm_b32 v29, v34, v33, v40
	v_perm_b32 v30, v34, v33, v41
	v_add_lshl_u32 v5, v4, v5, 1
	v_perm_b32 v31, v36, v35, v40
	v_perm_b32 v32, v36, v35, v41
	v_perm_b32 v33, v42, v37, v40
	v_perm_b32 v34, v42, v37, v41
	v_add_lshl_u32 v2, v2, v3, 1
	v_perm_b32 v35, v43, v38, v40
	v_perm_b32 v36, v43, v38, v41
	v_perm_b32 v37, v44, v39, v40
	v_perm_b32 v38, v44, v39, v41
	v_add_lshl_u32 v3, v4, v3, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[0:3], 0 offen
	buffer_store_b128 v[23:26], v1, s[0:3], 0 offen
	buffer_store_b128 v[27:30], v5, s[0:3], 0 offen
	buffer_store_b128 v[31:34], v2, s[0:3], 0 offen
	buffer_store_b128 v[35:38], v3, s[0:3], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 44
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 37
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 44
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16204
; TotalNumSgprs: 39
; NumVgprs: 256
; ScratchSize: 44
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 39
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 44
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 10
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
