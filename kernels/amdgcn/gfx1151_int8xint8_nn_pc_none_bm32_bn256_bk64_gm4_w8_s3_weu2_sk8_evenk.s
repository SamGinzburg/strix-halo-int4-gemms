	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v3, 4, v0
	v_lshlrev_b32_e32 v2, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v12, 15, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v53, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v4, 56, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v43, 0, v53
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s24, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v3, s25, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[20:21], s[18:19]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v9, v12, 4, v3
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[10:11], null, s25, 48, v[9:10]
	v_lshl_add_u32 v49, s25, 5, v9
	.loc	1 293 16 is_stmt 1              ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	v_lshrrev_b32_e32 v1, 3, v0
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
	s_lshl_b32 s31, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s9
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s27, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s10, 0x1ff
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s26, s2, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x1ff
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s26, s10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v50, v1, v4, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s24, s25, 4
	s_mul_i32 s2, s25, s31
	v_add_nc_u32_e32 v51, s24, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s27, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s31, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x3ff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v11, s4, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s6, s25, 9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_addk_i32 s31, 0x200
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s4, s6
	v_add_nc_u32_e32 v3, s4, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s31, v50
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s4, v49
	v_add_nc_u32_e32 v21, s6, v9
	v_add_nc_u32_e32 v5, s4, v10
	v_add_nc_u32_e32 v25, s6, v51
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v26, s6, v49
	v_add_nc_u32_e32 v27, s6, v10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b64 v[7:8], v1, s[16:19], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v6, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v13, 0x80000000, v4, s3
	v_cndmask_b32_e64 v28, 0x80000000, v21, s2
	v_cndmask_b32_e64 v17, 0x80000000, v5, s3
	buffer_load_b128 v[21:24], v11, s[20:23], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v25, s2
	v_cndmask_b32_e64 v33, 0x80000000, v26, s2
	v_cndmask_b32_e64 v37, 0x80000000, v27, s2
	s_clause 0x2
	buffer_load_b128 v[3:6], v3, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v17, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[41:42], v1, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[25:28], v28, s[20:23], 0 offen
	buffer_load_b128 v[29:32], v11, s[20:23], 0 offen
	buffer_load_b128 v[33:36], v33, s[20:23], 0 offen
	buffer_load_b128 v[37:40], v37, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 48, v0
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x5ff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v52, v2, v1
	v_lshrrev_b32_e32 v1, 1, v0
	v_and_b32_e32 v2, 48, v2
	v_add_nc_u32_e32 v11, 0, v52
	s_waitcnt vmcnt(9)
	ds_store_b64 v11, v[7:8] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(7)
	ds_store_b128 v43, v[3:6]
	s_waitcnt vmcnt(5)
	ds_store_b128 v43, v[17:20] offset:12288
	ds_store_b128 v43, v[21:24] offset:4096
	ds_store_b128 v43, v[13:16] offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v11, v[41:42] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v43, v[25:28] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v43, v[29:32] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v43, v[33:36] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v43, v[37:40] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v44, v12, 6, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v48, 0x70, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v46, 16, v44
	v_xor_b32_e32 v47, 32, v44
	v_xor_b32_e32 v45, 48, v44
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v37, 0
	s_add_i32 s30, 0, 0x8000
	s_add_i32 s28, 0, 0x8800
	s_add_i32 s29, 0, 0x4000
	s_branch .LBB0_6
.LBB0_3:
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr48
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_lshl_or_b32 v44, v12, 6, v2
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s33, s5, 9
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v37, 0 :: v_dual_and_b32 v48, 0x70, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_xor_b32_e32 v46, 16, v44
	v_xor_b32_e32 v47, 32, v44
	v_xor_b32_e32 v45, 48, v44
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v11, 0
	s_addk_i32 s31, 0x200
	s_mov_b32 s34, 1
	s_add_i32 s30, 0, 0x8000
	s_add_i32 s28, 0, 0x8800
	s_add_i32 s29, 0, 0x4000
	s_add_i32 s33, s33, -3
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s8, s5, 9
	s_mov_b32 s6, s30
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s8, s31, s8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v54, s6, v44
	v_add_nc_u32_e32 v55, s6, v46
	v_add_nc_u32_e32 v56, s6, v47
	v_add_nc_u32_e32 v57, s6, v45
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s6, s8, s25
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v59, s8, v50
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s6, s27
	s_mov_b32 s7, s4
	v_add_nc_u32_e32 v60, s6, v9
	v_add_nc_u32_e32 v61, s6, v51
	v_add_nc_u32_e32 v62, s6, v49
	v_add_nc_u32_e32 v63, s6, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[158:159], v59, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[114:117], v60, s[20:23], 0 offen
	buffer_load_b128 v[118:121], v61, s[20:23], 0 offen
	buffer_load_b128 v[122:125], v62, s[20:23], 0 offen
	buffer_load_b128 v[126:129], v63, s[20:23], 0 offen
	v_add3_u32 v58, s7, v48, v12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[70:73], v54
	ds_load_b128 v[86:89], v54 offset:1024
	ds_load_b128 v[90:93], v55
	ds_load_b128 v[94:97], v55 offset:1024
	ds_load_b128 v[98:101], v56
	ds_load_b128 v[102:105], v56 offset:1024
	ds_load_b128 v[106:109], v57
	ds_load_b128 v[110:113], v57 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v54, v58 offset:2304
	ds_load_u8 v55, v58 offset:3328
	ds_load_u8 v56, v58 offset:3072
	ds_load_u8 v57, v58 offset:3840
	ds_load_u8 v59, v58 offset:3584
	ds_load_u8 v64, v58 offset:3968
	ds_load_u8 v65, v58 offset:3712
	ds_load_u8 v66, v58 offset:3456
	ds_load_u8 v67, v58 offset:3200
	ds_load_u8 v60, v58 offset:2048
	ds_load_u8 v61, v58 offset:2816
	ds_load_u8 v62, v58 offset:2560
	ds_load_u8 v63, v58 offset:2944
	ds_load_u8 v68, v58 offset:2688
	ds_load_u8 v69, v58 offset:2432
	ds_load_u8 v74, v58 offset:2176
	ds_load_u8 v75, v58 offset:1280
	ds_load_u8 v76, v58 offset:1024
	ds_load_u8 v77, v58 offset:1792
	ds_load_u8 v78, v58 offset:1536
	ds_load_u8 v79, v58 offset:1920
	ds_load_u8 v80, v58 offset:1664
	ds_load_u8 v81, v58 offset:1408
	ds_load_u8 v82, v58 offset:1152
	ds_load_u8 v83, v58 offset:256
	ds_load_u8 v84, v58
	ds_load_u8 v85, v58 offset:768
	ds_load_u8 v130, v58 offset:512
	ds_load_u8 v131, v58 offset:896
	ds_load_u8 v132, v58 offset:640
	ds_load_u8 v133, v58 offset:384
	ds_load_u8 v134, v58 offset:128
	ds_load_u8 v135, v58 offset:7424
	ds_load_u8 v136, v58 offset:7168
	ds_load_u8 v137, v58 offset:7936
	ds_load_u8 v138, v58 offset:7680
	ds_load_u8 v139, v58 offset:8064
	ds_load_u8 v140, v58 offset:7808
	ds_load_u8 v141, v58 offset:7552
	ds_load_u8 v142, v58 offset:7296
	ds_load_u8 v143, v58 offset:6400
	ds_load_u8 v144, v58 offset:6144
	ds_load_u8 v145, v58 offset:6912
	ds_load_u8 v146, v58 offset:6656
	ds_load_u8 v147, v58 offset:7040
	ds_load_u8 v148, v58 offset:6784
	ds_load_u8 v149, v58 offset:6528
	ds_load_u8 v150, v58 offset:6272
	ds_load_u8 v151, v58 offset:5376
	ds_load_u8 v152, v58 offset:5120
	ds_load_u8 v153, v58 offset:5888
	ds_load_u8 v154, v58 offset:5632
	ds_load_u8 v155, v58 offset:6016
	ds_load_u8 v156, v58 offset:5760
	ds_load_u8 v157, v58 offset:5504
	ds_load_u8 v160, v58 offset:5248
	ds_load_u8 v161, v58 offset:4352
	ds_load_u8 v162, v58 offset:4096
	ds_load_u8 v163, v58 offset:4864
	ds_load_u8 v164, v58 offset:4608
	ds_load_u8 v165, v58 offset:4992
	ds_load_u8 v166, v58 offset:4736
	ds_load_u8 v167, v58 offset:4480
	ds_load_u8 v168, v58 offset:4224
	ds_load_u8 v169, v58 offset:11520
	ds_load_u8 v170, v58 offset:11264
	ds_load_u8 v171, v58 offset:12032
	ds_load_u8 v172, v58 offset:11776
	ds_load_u8 v173, v58 offset:12160
	ds_load_u8 v174, v58 offset:11904
	ds_load_u8 v175, v58 offset:11648
	ds_load_u8 v176, v58 offset:11392
	ds_load_u8 v177, v58 offset:10496
	ds_load_u8 v178, v58 offset:10240
	ds_load_u8 v179, v58 offset:11008
	ds_load_u8 v180, v58 offset:10752
	ds_load_u8 v181, v58 offset:11136
	ds_load_u8 v182, v58 offset:10880
	ds_load_u8 v183, v58 offset:10624
	ds_load_u8 v184, v58 offset:10368
	ds_load_u8 v185, v58 offset:9472
	ds_load_u8 v186, v58 offset:9216
	ds_load_u8 v187, v58 offset:9984
	ds_load_u8 v188, v58 offset:9728
	ds_load_u8 v189, v58 offset:10112
	ds_load_u8 v190, v58 offset:9856
	ds_load_u8 v191, v58 offset:9600
	ds_load_u8 v192, v58 offset:9344
	ds_load_u8 v193, v58 offset:8448
	ds_load_u8 v194, v58 offset:8192
	ds_load_u8 v195, v58 offset:8960
	ds_load_u8 v196, v58 offset:8704
	ds_load_u8 v197, v58 offset:9088
	ds_load_u8 v198, v58 offset:8832
	ds_load_u8 v199, v58 offset:8576
	ds_load_u8 v200, v58 offset:8320
	ds_load_u8 v201, v58 offset:15616
	ds_load_u8 v202, v58 offset:15360
	ds_load_u8 v203, v58 offset:16128
	ds_load_u8 v204, v58 offset:15872
	ds_load_u8 v205, v58 offset:16256
	ds_load_u8 v206, v58 offset:16000
	ds_load_u8 v207, v58 offset:15744
	ds_load_u8 v208, v58 offset:15488
	ds_load_u8 v209, v58 offset:14592
	ds_load_u8 v210, v58 offset:14336
	ds_load_u8 v211, v58 offset:15104
	ds_load_u8 v212, v58 offset:14848
	ds_load_u8 v213, v58 offset:15232
	ds_load_u8 v214, v58 offset:14976
	ds_load_u8 v215, v58 offset:14720
	ds_load_u8 v216, v58 offset:14464
	ds_load_u8 v217, v58 offset:13568
	ds_load_u8 v218, v58 offset:13312
	ds_load_u8 v219, v58 offset:14080
	ds_load_u8 v220, v58 offset:13824
	ds_load_u8 v221, v58 offset:14208
	ds_load_u8 v222, v58 offset:13952
	ds_load_u8 v223, v58 offset:13696
	ds_load_u8 v224, v58 offset:13440
	ds_load_u8 v225, v58 offset:12544
	ds_load_u8 v226, v58 offset:12288
	ds_load_u8 v227, v58 offset:13056
	ds_load_u8 v228, v58 offset:12800
	ds_load_u8 v229, v58 offset:13184
	ds_load_u8 v230, v58 offset:12928
	ds_load_u8 v231, v58 offset:12672
	ds_load_u8 v58, v58 offset:12416
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v63, v68, v63, 0xc0c0004
	v_perm_b32 v68, v80, v79, 0xc0c0004
	v_perm_b32 v150, v150, v149, 0xc0c0004
	v_perm_b32 v147, v148, v147, 0xc0c0004
	v_perm_b32 v157, v160, v157, 0xc0c0004
	v_perm_b32 v155, v156, v155, 0xc0c0004
	v_perm_b32 v156, v168, v167, 0xc0c0004
	v_perm_b32 v54, v60, v54, 0xc0c0004
	v_perm_b32 v60, v78, v77, 0xc0c0004
	v_perm_b32 v55, v56, v55, 0xc0c0004
	v_perm_b32 v77, v144, v143, 0xc0c0004
	v_perm_b32 v56, v59, v57, 0xc0c0004
	v_perm_b32 v57, v62, v61, 0xc0c0004
	v_perm_b32 v59, v76, v75, 0xc0c0004
	v_perm_b32 v61, v84, v83, 0xc0c0004
	v_perm_b32 v62, v130, v85, 0xc0c0004
	v_perm_b32 v75, v136, v135, 0xc0c0004
	v_perm_b32 v76, v138, v137, 0xc0c0004
	v_perm_b32 v83, v146, v145, 0xc0c0004
	v_perm_b32 v130, v162, v161, 0xc0c0004
	v_perm_b32 v135, v164, v163, 0xc0c0004
	v_perm_b32 v136, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v137, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v138, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v143, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v144, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v145, v188, v187, 0xc0c0004
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_perm_b32 v65, v74, v69, 0xc0c0004
	v_perm_b32 v67, v82, v81, 0xc0c0004
	v_perm_b32 v69, v134, v133, 0xc0c0004
	v_perm_b32 v74, v132, v131, 0xc0c0004
	v_perm_b32 v84, v152, v151, 0xc0c0004
	v_perm_b32 v85, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v146, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v151, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v154, v210, v209, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v161, v212, v211, 0xc0c0004
	v_perm_b32 v82, v142, v141, 0xc0c0004
	v_perm_b32 v170, v140, v139, 0xc0c0004
	v_perm_b32 v160, v166, v165, 0xc0c0004
	v_perm_b32 v168, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v58, v231, 0xc0c0004
	v_perm_b32 v181, v230, v229, 0xc0c0004
	v_lshl_or_b32 v81, v56, 16, v55
	v_lshl_or_b32 v80, v57, 16, v54
	v_lshl_or_b32 v79, v60, 16, v59
	v_lshl_or_b32 v78, v62, 16, v61
	v_lshl_or_b32 v130, v135, 16, v130
	v_lshl_or_b32 v137, v137, 16, v136
	v_lshl_or_b32 v136, v143, 16, v138
	v_lshl_or_b32 v135, v145, 16, v144
	v_lshl_or_b32 v145, v64, 16, v66
	v_lshl_or_b32 v144, v63, 16, v65
	v_lshl_or_b32 v143, v68, 16, v67
	v_lshl_or_b32 v142, v74, 16, v69
	v_perm_b32 v152, v202, v201, 0xc0c0004
	v_perm_b32 v153, v204, v203, 0xc0c0004
	v_perm_b32 v165, v176, v175, 0xc0c0004
	v_perm_b32 v166, v174, v173, 0xc0c0004
	v_perm_b32 v167, v184, v183, 0xc0c0004
	v_perm_b32 v171, v192, v191, 0xc0c0004
	v_perm_b32 v172, v190, v189, 0xc0c0004
	v_perm_b32 v173, v200, v199, 0xc0c0004
	v_perm_b32 v174, v198, v197, 0xc0c0004
	v_lshl_or_b32 v133, v76, 16, v75
	v_lshl_or_b32 v132, v83, 16, v77
	v_lshl_or_b32 v131, v85, 16, v84
	v_lshl_or_b32 v134, v151, 16, v146
	v_lshl_or_b32 v140, v161, 16, v154
	v_lshl_or_b32 v149, v170, 16, v82
	v_lshl_or_b32 v148, v147, 16, v150
	v_lshl_or_b32 v147, v155, 16, v157
	v_lshl_or_b32 v146, v160, 16, v156
	v_lshl_or_b32 v154, v181, 16, v58
	v_wmma_i32_16x16x16_iu8 v[54:61], v[78:81], v[70:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[142:145], v[70:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[78:81], v[86:89], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[142:145], v[86:89], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v162, v218, v217, 0xc0c0004
	v_perm_b32 v163, v220, v219, 0xc0c0004
	v_perm_b32 v164, v226, v225, 0xc0c0004
	v_perm_b32 v169, v228, v227, 0xc0c0004
	v_perm_b32 v175, v208, v207, 0xc0c0004
	v_perm_b32 v176, v206, v205, 0xc0c0004
	v_perm_b32 v177, v216, v215, 0xc0c0004
	v_perm_b32 v178, v214, v213, 0xc0c0004
	v_perm_b32 v179, v224, v223, 0xc0c0004
	v_perm_b32 v180, v222, v221, 0xc0c0004
	v_lshl_or_b32 v141, v153, 16, v152
	v_lshl_or_b32 v153, v166, 16, v165
	v_lshl_or_b32 v152, v168, 16, v167
	v_lshl_or_b32 v151, v172, 16, v171
	v_lshl_or_b32 v150, v174, 16, v173
	v_wmma_i32_16x16x16_iu8 v[54:61], v[130:133], v[90:93], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[146:149], v[90:93], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[130:133], v[94:97], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[146:149], v[94:97], v[78:85] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v163, 16, v162
	v_lshl_or_b32 v138, v169, 16, v164
	v_lshl_or_b32 v157, v176, 16, v175
	v_lshl_or_b32 v156, v178, 16, v177
	v_lshl_or_b32 v155, v180, 16, v179
	v_wmma_i32_16x16x16_iu8 v[54:61], v[134:137], v[98:101], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[150:153], v[98:101], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[134:137], v[102:105], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[150:153], v[102:105], v[78:85] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s9, s34, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[54:61], v[138:141], v[106:109], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[154:157], v[106:109], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[138:141], v[110:113], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[154:157], v[110:113], v[78:85] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s9, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s34, s9, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s7, s34, 11
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s8, s34, 14
	s_mov_b32 s4, s29
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s7, s7, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s29, s8, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v41, v41, v57 :: v_dual_add_nc_u32 v232, s7, v52
	v_dual_add_f32 v34, v34, v63 :: v_dual_add_nc_u32 v233, s29, v53
	v_add_f32_e32 v37, v37, v54
	v_dual_add_f32 v43, v43, v55 :: v_dual_add_f32 v42, v42, v56
	v_dual_add_f32 v40, v40, v58 :: v_dual_add_f32 v39, v39, v59
	v_add_f32_e32 v38, v38, v60
	v_dual_add_f32 v36, v36, v61 :: v_dual_add_f32 v35, v35, v62
	v_dual_add_f32 v30, v30, v67 :: v_dual_add_f32 v33, v33, v64
	v_dual_add_f32 v32, v32, v65 :: v_dual_add_f32 v31, v31, v66
	v_dual_add_f32 v28, v28, v69 :: v_dual_add_f32 v29, v29, v68
	v_dual_add_f32 v26, v26, v71 :: v_dual_add_f32 v27, v27, v70
	v_dual_add_f32 v24, v24, v73 :: v_dual_add_f32 v25, v25, v72
	v_dual_add_f32 v22, v22, v75 :: v_dual_add_f32 v23, v23, v74
	v_dual_add_f32 v20, v20, v77 :: v_dual_add_f32 v21, v21, v76
	v_dual_add_f32 v18, v18, v79 :: v_dual_add_f32 v19, v19, v78
	v_dual_add_f32 v16, v16, v81 :: v_dual_add_f32 v17, v17, v80
	v_dual_add_f32 v14, v14, v83 :: v_dual_add_f32 v15, v15, v82
	v_add_f32_e32 v13, v13, v84
	v_add_f32_e32 v11, v11, v85
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s6, s5, 1
	s_mov_b32 s30, s28
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s28, s7, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s33
	s_mov_b32 s5, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v232, v[158:159] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v233, v[114:117]
	s_waitcnt vmcnt(2)
	ds_store_b128 v233, v[118:121] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v233, v[122:125] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v233, v[126:129] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow224
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_and_b32_e32 v2, 0xf0, v0
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v1, v48, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v56, s4, v1
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
	v_add_nc_u32_e32 v3, s30, v47
	ds_load_b128 v[72:75], v3 offset:1024
	ds_load_b128 v[64:67], v3
	v_add_nc_u32_e32 v3, s30, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v56 offset:3328
	ds_load_u8 v5, v56 offset:3072
	ds_load_u8 v6, v56 offset:3840
	ds_load_u8 v7, v56 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[76:79], v3 offset:1024
	ds_load_b128 v[68:71], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v56 offset:2304
	ds_load_u8 v8, v56 offset:2048
	ds_load_u8 v9, v56 offset:2816
	ds_load_u8 v10, v56 offset:2560
	ds_load_u8 v49, v56 offset:1280
	ds_load_u8 v50, v56 offset:1024
	ds_load_u8 v51, v56 offset:1792
	ds_load_u8 v52, v56 offset:1536
	ds_load_u8 v53, v56 offset:256
	ds_load_u8 v54, v56
	ds_load_u8 v55, v56 offset:768
	ds_load_u8 v57, v56 offset:512
	ds_load_u8 v58, v56 offset:3968
	ds_load_u8 v59, v56 offset:3712
	ds_load_u8 v60, v56 offset:3456
	ds_load_u8 v61, v56 offset:3200
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v5, v7, v6, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v48, s30, v46
	v_add_nc_u32_e32 v116, s30, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v8, v3, 0xc0c0004
	v_lshl_or_b32 v83, v5, 16, v4
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v7, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v52, v51, 0xc0c0004
	v_lshl_or_b32 v82, v6, 16, v3
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v57, v55, 0xc0c0004
	v_lshl_or_b32 v81, v8, 16, v7
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_lshl_or_b32 v80, v10, 16, v9
	v_mov_b32_e32 v3, s4
	ds_load_u8 v57, v56 offset:7424
	ds_load_u8 v92, v56 offset:7168
	v_mov_b32_e32 v7, s8
	ds_load_u8 v93, v56 offset:7936
	ds_load_u8 v94, v56 offset:7680
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[84:87], v48 offset:1024
	ds_load_b128 v[88:91], v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v95, v56 offset:6400
	ds_load_u8 v96, v56 offset:6144
	ds_load_u8 v97, v56 offset:6912
	ds_load_u8 v98, v56 offset:6656
	ds_load_u8 v99, v56 offset:5376
	ds_load_u8 v100, v56 offset:5120
	ds_load_u8 v101, v56 offset:5888
	ds_load_u8 v102, v56 offset:5632
	ds_load_u8 v118, v56 offset:8064
	ds_load_u8 v119, v56 offset:7808
	ds_load_u8 v120, v56 offset:7552
	ds_load_u8 v121, v56 offset:7296
	ds_load_u8 v62, v56 offset:2944
	ds_load_u8 v63, v56 offset:2688
	ds_load_u8 v104, v56 offset:2432
	ds_load_u8 v108, v56 offset:2176
	ds_load_u8 v109, v56 offset:1920
	ds_load_u8 v110, v56 offset:1664
	ds_load_u8 v111, v56 offset:1408
	ds_load_u8 v112, v56 offset:1152
	ds_load_u8 v113, v56 offset:896
	ds_load_u8 v114, v56 offset:640
	ds_load_u8 v115, v56 offset:384
	ds_load_u8 v117, v56 offset:128
	v_dual_mov_b32 v4, s5 :: v_dual_mov_b32 v5, s6
	v_mov_b32_e32 v6, s7
	v_dual_mov_b32 v8, s9 :: v_dual_mov_b32 v9, s10
	v_mov_b32_e32 v10, s11
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v96, v96, v95, 0xc0c0004
	ds_load_u8 v126, v56 offset:6016
	ds_load_u8 v127, v56 offset:5760
	ds_load_u8 v128, v56 offset:5504
	ds_load_u8 v129, v56 offset:5248
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v130, v56 offset:4992
	ds_load_u8 v131, v56 offset:4736
	ds_load_u8 v132, v56 offset:4480
	ds_load_u8 v133, v56 offset:4224
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v98, v100, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[48:55], v[80:83], v[68:71], v[3:10] neg_lo:[1,1,0]
	v_perm_b32 v57, v92, v57, 0xc0c0004
	ds_load_u8 v92, v56 offset:4352
	ds_load_u8 v103, v56 offset:4096
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v56 offset:4864
	ds_load_u8 v105, v56 offset:4608
	ds_load_u8 v122, v56 offset:7040
	ds_load_u8 v123, v56 offset:6784
	ds_load_u8 v124, v56 offset:6528
	ds_load_u8 v125, v56 offset:6272
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v99, v102, v101, 0xc0c0004
	ds_load_u8 v100, v56 offset:11520
	ds_load_u8 v101, v56 offset:11264
	ds_load_u8 v144, v56 offset:10112
	ds_load_u8 v145, v56 offset:9856
	ds_load_u8 v146, v56 offset:9600
	ds_load_u8 v147, v56 offset:9344
	v_lshl_or_b32 v95, v93, 16, v57
	ds_load_u8 v148, v56 offset:9088
	ds_load_u8 v149, v56 offset:8832
	ds_load_u8 v150, v56 offset:8576
	ds_load_u8 v151, v56 offset:8320
	v_lshl_or_b32 v93, v99, 16, v98
	ds_load_u8 v165, v56 offset:14208
	ds_load_u8 v166, v56 offset:13952
	ds_load_u8 v167, v56 offset:13696
	ds_load_u8 v168, v56 offset:13440
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v59, v108, v104, 0xc0c0004
	v_perm_b32 v61, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v62, v112, v111, 0xc0c0004
	v_perm_b32 v63, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v108, v117, v115, 0xc0c0004
	v_perm_b32 v112, v114, v113, 0xc0c0004
	v_lshl_or_b32 v111, v58, 16, v60
	v_lshl_or_b32 v110, v61, 16, v59
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v102, v105, v94, 0xc0c0004
	v_lshl_or_b32 v94, v97, 16, v96
	v_perm_b32 v92, v103, v92, 0xc0c0004
	ds_load_u8 v103, v56 offset:12032
	ds_load_u8 v105, v56 offset:11776
	v_lshl_or_b32 v109, v63, 16, v62
	v_lshl_or_b32 v108, v112, 16, v108
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v56 offset:8448
	ds_load_u8 v138, v56 offset:8192
	v_lshl_or_b32 v92, v102, 16, v92
	ds_load_u8 v57, v56 offset:10496
	ds_load_u8 v96, v56 offset:10240
	ds_load_u8 v97, v56 offset:11008
	ds_load_u8 v98, v56 offset:10752
	ds_load_u8 v99, v56 offset:9472
	ds_load_u8 v102, v56 offset:9216
	ds_load_u8 v106, v56 offset:9984
	ds_load_u8 v107, v56 offset:9728
	ds_load_u8 v134, v56 offset:12160
	ds_load_u8 v135, v56 offset:11904
	ds_load_u8 v136, v56 offset:11648
	ds_load_u8 v137, v56 offset:11392
	v_perm_b32 v112, v121, v120, 0xc0c0004
	v_perm_b32 v113, v119, v118, 0xc0c0004
	v_perm_b32 v114, v125, v124, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[48:55], v[92:95], v[88:91], v[48:55] neg_lo:[1,1,0]
	v_perm_b32 v117, v123, v122, 0xc0c0004
	v_perm_b32 v118, v129, v128, 0xc0c0004
	v_perm_b32 v119, v127, v126, 0xc0c0004
	v_perm_b32 v120, v133, v132, 0xc0c0004
	v_perm_b32 v121, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v96, v57, 0xc0c0004
	v_lshl_or_b32 v115, v113, 16, v112
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v96, v98, v97, 0xc0c0004
	v_lshl_or_b32 v114, v117, 16, v114
	v_perm_b32 v103, v105, v103, 0xc0c0004
	ds_load_u8 v105, v56 offset:8960
	ds_load_u8 v139, v56 offset:8704
	ds_load_u8 v140, v56 offset:11136
	ds_load_u8 v141, v56 offset:10880
	ds_load_u8 v142, v56 offset:10624
	ds_load_u8 v143, v56 offset:10368
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v97, v102, v99, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v102, v107, v106, 0xc0c0004
	v_perm_b32 v101, v138, v101, 0xc0c0004
	ds_load_u8 v106, v56 offset:15616
	ds_load_u8 v107, v56 offset:15360
	ds_load_u8 v138, v56 offset:16128
	ds_load_u8 v152, v56 offset:15872
	v_lshl_or_b32 v99, v103, 16, v100
	v_lshl_or_b32 v98, v96, 16, v57
	v_lshl_or_b32 v97, v102, 16, v97
	v_lshl_or_b32 v113, v119, 16, v118
	v_lshl_or_b32 v112, v121, 16, v120
	v_perm_b32 v117, v147, v146, 0xc0c0004
	v_perm_b32 v118, v145, v144, 0xc0c0004
	v_perm_b32 v119, v151, v150, 0xc0c0004
	v_perm_b32 v120, v149, v148, 0xc0c0004
	v_perm_b32 v124, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v105, v139, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v105, 16, v101
	ds_load_u8 v57, v56 offset:14592
	ds_load_u8 v100, v56 offset:14336
	ds_load_u8 v101, v56 offset:15104
	ds_load_u8 v102, v56 offset:14848
	ds_load_u8 v103, v56 offset:13568
	ds_load_u8 v105, v56 offset:13312
	ds_load_u8 v139, v56 offset:14080
	ds_load_u8 v153, v56 offset:13824
	ds_load_u8 v154, v56 offset:16256
	ds_load_u8 v155, v56 offset:16000
	ds_load_u8 v156, v56 offset:15744
	ds_load_u8 v157, v56 offset:15488
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v107, v152, v138, 0xc0c0004
	ds_load_u8 v138, v56 offset:12544
	ds_load_u8 v152, v56 offset:12288
	ds_load_u8 v158, v56 offset:13056
	ds_load_u8 v159, v56 offset:12800
	ds_load_u8 v160, v56 offset:15232
	ds_load_u8 v161, v56 offset:14976
	ds_load_u8 v162, v56 offset:14720
	ds_load_u8 v163, v56 offset:14464
	v_wmma_i32_16x16x16_iu8 v[48:55], v[96:99], v[64:67], v[48:55] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v107, 16, v106
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v57, v100, v57, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v164, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v105, v105, v103, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[100:103], v116
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v139, v153, v139, 0xc0c0004
	v_lshl_or_b32 v106, v164, 16, v57
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v57, v159, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v105, v139, 16, v105
	ds_load_u8 v139, v56 offset:13184
	ds_load_u8 v153, v56 offset:12928
	ds_load_u8 v164, v56 offset:12672
	ds_load_u8 v169, v56 offset:12416
	v_perm_b32 v56, v152, v138, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v121, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v104, v57, 16, v56
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[48:55], v[104:107], v[100:103], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v43, v43, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[56:63], v[108:111], v[68:71], v[3:10] neg_lo:[1,1,0]
	v_perm_b32 v68, v137, v136, 0xc0c0004
	v_perm_b32 v69, v135, v134, 0xc0c0004
	v_perm_b32 v70, v143, v142, 0xc0c0004
	v_perm_b32 v71, v141, v140, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[56:63], v[112:115], v[88:91], v[56:63] neg_lo:[1,1,0]
	v_lshl_or_b32 v89, v118, 16, v117
	v_lshl_or_b32 v91, v69, 16, v68
	v_lshl_or_b32 v88, v120, 16, v119
	v_lshl_or_b32 v90, v71, 16, v70
	v_perm_b32 v68, v157, v156, 0xc0c0004
	v_perm_b32 v69, v155, v154, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[116:119], v116 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v120, v163, v162, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[56:63], v[88:91], v[64:67], v[56:63] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v49, v51
	v_lshl_or_b32 v123, v69, 16, v68
	v_wmma_i32_16x16x16_iu8 v[64:71], v[80:83], v[76:79], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[108:111], v[76:79], v[3:10] neg_lo:[1,1,0]
	v_perm_b32 v76, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v77, v169, v164, 0xc0c0004
	v_perm_b32 v78, v153, v139, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[64:71], v[92:95], v[84:87], v[64:71] neg_lo:[1,1,0]
	v_lshl_or_b32 v122, v121, 16, v120
	v_lshl_or_b32 v121, v76, 16, v124
	v_wmma_i32_16x16x16_iu8 v[3:10], v[112:115], v[84:87], v[3:10] neg_lo:[1,1,0]
	v_lshl_or_b32 v120, v78, 16, v77
	v_wmma_i32_16x16x16_iu8 v[64:71], v[96:99], v[72:75], v[64:71] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v42, v42, v50 :: v_dual_add_f32 v41, v41, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v50, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[120:123], v[100:103], v[56:63] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v52, v54
	v_wmma_i32_16x16x16_iu8 v[3:10], v[88:91], v[72:75], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[104:107], v[116:119], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v51, v53
	v_cvt_f32_i32_e32 v53, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v40, v40, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v38, v38, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v50, v57
	v_cvt_f32_i32_e32 v52, v59
	v_wmma_i32_16x16x16_iu8 v[3:10], v[120:123], v[116:119], v[3:10] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v39, v39, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v51, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v36, v36, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v60
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v35, v35, v49 :: v_dual_add_f32 v34, v34, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v61
	v_cvt_f32_i32_e32 v50, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v32, v32, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v52, v64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v33, v33, v51
	v_add_f32_e32 v31, v31, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v51, v63
	v_cvt_f32_i32_e32 v53, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v30, v30, v49 :: v_dual_add_f32 v27, v27, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v66
	v_cvt_f32_i32_e32 v52, v69
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v29, v29, v50 :: v_dual_add_f32 v28, v28, v51
	v_add_f32_e32 v25, v25, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v50, v67
	v_cvt_f32_i32_e32 v51, v68
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v26, v26, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v22, v22, v52 :: v_dual_add_f32 v19, v19, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v49, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v18, v18, v4 :: v_dual_add_f32 v17, v17, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v5, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v16, v16, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v6, v10
	v_cvt_f32_i32_e32 v7, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v24, v24, v50 :: v_dual_add_f32 v21, v21, v53
	v_dual_add_f32 v23, v23, v51 :: v_dual_add_f32 v20, v20, v49
	v_dual_add_f32 v15, v15, v3 :: v_dual_add_f32 v14, v14, v4
	v_add_f32_e32 v11, v11, v6
	v_add_f32_e32 v13, v13, v5
	v_add_f32_e32 v37, v37, v7
.LBB0_8:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
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
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
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
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s29, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v1 offset:3328
	ds_load_u8 v6, v1 offset:3072
	ds_load_u8 v7, v1 offset:3840
	ds_load_u8 v8, v1 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s28, v47
	v_add_nc_u32_e32 v4, s28, v46
	v_add_nc_u32_e32 v48, s28, v45
	v_add_nc_u32_e32 v9, s28, v44
	ds_load_b128 v[44:47], v3 offset:1024
	ds_load_b128 v[56:59], v3
	ds_load_b128 v[72:75], v4 offset:1024
	ds_load_b128 v[60:63], v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v1 offset:2304
	ds_load_u8 v4, v1 offset:2048
	ds_load_u8 v10, v1 offset:2816
	ds_load_u8 v49, v1 offset:2560
	ds_load_u8 v50, v1 offset:1280
	ds_load_u8 v51, v1 offset:1024
	ds_load_u8 v52, v1 offset:1792
	ds_load_u8 v53, v1 offset:1536
	ds_load_u8 v54, v1 offset:3968
	ds_load_u8 v55, v1 offset:3712
	ds_load_u8 v104, v1 offset:3456
	ds_load_u8 v105, v1 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v49, v10, 0xc0c0004
	v_perm_b32 v6, v8, v7, 0xc0c0004
	ds_load_u8 v7, v1 offset:256
	ds_load_u8 v8, v1
	ds_load_u8 v64, v1 offset:768
	ds_load_u8 v65, v1 offset:512
	ds_load_u8 v106, v1 offset:2944
	ds_load_u8 v108, v1 offset:2688
	ds_load_u8 v109, v1 offset:2432
	ds_load_u8 v110, v1 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v10, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v50, v53, v52, 0xc0c0004
	v_lshl_or_b32 v86, v4, 16, v3
	v_lshl_or_b32 v87, v6, 16, v5
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	v_lshl_or_b32 v85, v50, 16, v10
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v65, v64, 0xc0c0004
	v_dual_mov_b32 v71, s11 :: v_dual_mov_b32 v70, s10
	ds_load_u8 v5, v1 offset:7424
	ds_load_u8 v6, v1 offset:7168
	ds_load_u8 v7, v1 offset:7936
	ds_load_u8 v8, v1 offset:7680
	v_mov_b32_e32 v66, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[76:79], v9 offset:1024
	ds_load_b128 v[80:83], v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v84, v4, 16, v3
	ds_load_u8 v3, v1 offset:6400
	ds_load_u8 v4, v1 offset:6144
	ds_load_u8 v9, v1 offset:6912
	ds_load_u8 v10, v1 offset:6656
	ds_load_u8 v88, v1 offset:5376
	ds_load_u8 v89, v1 offset:5120
	ds_load_u8 v90, v1 offset:5888
	ds_load_u8 v91, v1 offset:5632
	ds_load_u8 v92, v1 offset:4352
	ds_load_u8 v93, v1 offset:4096
	ds_load_u8 v94, v1 offset:4864
	ds_load_u8 v95, v1 offset:4608
	ds_load_u8 v114, v1 offset:8064
	ds_load_u8 v115, v1 offset:7808
	ds_load_u8 v116, v1 offset:7552
	ds_load_u8 v117, v1 offset:7296
	ds_load_u8 v49, v1 offset:1920
	ds_load_u8 v111, v1 offset:1664
	ds_load_u8 v112, v1 offset:1408
	ds_load_u8 v113, v1 offset:1152
	ds_load_u8 v50, v1 offset:896
	ds_load_u8 v51, v1 offset:640
	ds_load_u8 v52, v1 offset:384
	ds_load_u8 v53, v1 offset:128
	v_mov_b32_e32 v69, s9
	ds_load_u8 v118, v1 offset:7040
	ds_load_u8 v119, v1 offset:6784
	ds_load_u8 v120, v1 offset:6528
	ds_load_u8 v121, v1 offset:6272
	ds_load_u8 v122, v1 offset:6016
	ds_load_u8 v123, v1 offset:5760
	ds_load_u8 v124, v1 offset:5504
	ds_load_u8 v125, v1 offset:5248
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v98, v4, v3, 0xc0c0004
	ds_load_u8 v126, v1 offset:4992
	ds_load_u8 v127, v1 offset:4736
	ds_load_u8 v128, v1 offset:4480
	ds_load_u8 v129, v1 offset:4224
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v99, v10, v9, 0xc0c0004
	ds_load_u8 v139, v1 offset:10112
	ds_load_u8 v140, v1 offset:9856
	ds_load_u8 v141, v1 offset:9600
	ds_load_u8 v142, v1 offset:9344
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v55, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v89, v91, v90, 0xc0c0004
	v_lshl_or_b32 v90, v99, 16, v98
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	v_perm_b32 v96, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v93, v95, v94, 0xc0c0004
	ds_load_u8 v94, v1 offset:11520
	ds_load_u8 v95, v1 offset:11264
	ds_load_u8 v100, v1 offset:12032
	ds_load_u8 v101, v1 offset:11776
	v_perm_b32 v97, v8, v7, 0xc0c0004
	v_lshl_or_b32 v89, v89, 16, v88
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v49, v111, v49, 0xc0c0004
	v_lshl_or_b32 v88, v93, 16, v92
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	v_lshl_or_b32 v91, v97, 16, v96
	ds_load_u8 v92, v1 offset:10496
	ds_load_u8 v93, v1 offset:10240
	ds_load_u8 v96, v1 offset:11008
	ds_load_u8 v97, v1 offset:10752
	ds_load_u8 v98, v1 offset:9472
	ds_load_u8 v99, v1 offset:9216
	ds_load_u8 v102, v1 offset:9984
	ds_load_u8 v103, v1 offset:9728
	ds_load_u8 v130, v1 offset:12160
	ds_load_u8 v131, v1 offset:11904
	ds_load_u8 v132, v1 offset:11648
	ds_load_u8 v133, v1 offset:11392
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_dual_mov_b32 v68, s8 :: v_dual_mov_b32 v67, s7
	v_dual_mov_b32 v64, s4 :: v_dual_mov_b32 v65, s5
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v93, v97, v96, 0xc0c0004
	v_perm_b32 v95, v101, v100, 0xc0c0004
	ds_load_u8 v100, v1 offset:8448
	ds_load_u8 v101, v1 offset:8192
	ds_load_u8 v107, v1 offset:8960
	ds_load_u8 v134, v1 offset:8704
	ds_load_u8 v135, v1 offset:11136
	ds_load_u8 v136, v1 offset:10880
	ds_load_u8 v137, v1 offset:10624
	ds_load_u8 v138, v1 offset:10368
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v96, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v97, v103, v102, 0xc0c0004
	ds_load_u8 v98, v1 offset:15616
	ds_load_u8 v99, v1 offset:15360
	ds_load_u8 v102, v1 offset:16128
	ds_load_u8 v103, v1 offset:15872
	ds_load_u8 v143, v1 offset:9088
	ds_load_u8 v144, v1 offset:8832
	ds_load_u8 v145, v1 offset:8576
	ds_load_u8 v146, v1 offset:8320
	v_lshl_or_b32 v95, v95, 16, v94
	v_lshl_or_b32 v94, v93, 16, v92
	v_wmma_i32_16x16x16_iu8 v[3:10], v[84:87], v[80:83], v[64:71] neg_lo:[1,1,0]
	v_lshl_or_b32 v93, v97, 16, v96
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[88:91], v[60:63], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v101, v134, v107, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v107, v99, v98, 0xc0c0004
	ds_load_u8 v134, v1 offset:14592
	ds_load_u8 v147, v1 offset:14336
	ds_load_u8 v148, v1 offset:15104
	ds_load_u8 v149, v1 offset:14848
	ds_load_u8 v150, v1 offset:16256
	ds_load_u8 v151, v1 offset:16000
	ds_load_u8 v152, v1 offset:15744
	ds_load_u8 v153, v1 offset:15488
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v154, v103, v102, 0xc0c0004
	v_lshl_or_b32 v92, v101, 16, v100
	ds_load_u8 v155, v1 offset:13568
	ds_load_u8 v156, v1 offset:13312
	ds_load_u8 v157, v1 offset:14080
	ds_load_u8 v158, v1 offset:13824
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[96:99], v48 offset:1024
	ds_load_b128 v[100:103], v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v1 offset:12544
	ds_load_u8 v159, v1 offset:12288
	v_lshl_or_b32 v107, v154, 16, v107
	ds_load_u8 v154, v1 offset:15232
	ds_load_u8 v160, v1 offset:14976
	ds_load_u8 v161, v1 offset:14720
	ds_load_u8 v162, v1 offset:14464
	v_wmma_i32_16x16x16_iu8 v[3:10], v[92:95], v[56:59], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v134, v147, v134, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v147, v149, v148, 0xc0c0004
	ds_load_u8 v148, v1 offset:13056
	ds_load_u8 v149, v1 offset:12800
	ds_load_u8 v163, v1 offset:14208
	ds_load_u8 v164, v1 offset:13952
	ds_load_u8 v165, v1 offset:13696
	ds_load_u8 v166, v1 offset:13440
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v156, v158, v157, 0xc0c0004
	ds_load_u8 v157, v1 offset:13184
	ds_load_u8 v158, v1 offset:12928
	ds_load_u8 v167, v1 offset:12672
	ds_load_u8 v1, v1 offset:12416
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v159, v159, v48, 0xc0c0004
	v_perm_b32 v48, v105, v104, 0xc0c0004
	v_perm_b32 v104, v108, v106, 0xc0c0004
	v_perm_b32 v105, v113, v112, 0xc0c0004
	v_lshl_or_b32 v108, v50, 16, v52
	v_perm_b32 v106, v121, v120, 0xc0c0004
	v_lshl_or_b32 v111, v54, 16, v48
	v_lshl_or_b32 v110, v104, 16, v55
	v_lshl_or_b32 v109, v49, 16, v105
	v_perm_b32 v104, v117, v116, 0xc0c0004
	v_perm_b32 v105, v115, v114, 0xc0c0004
	v_perm_b32 v112, v119, v118, 0xc0c0004
	v_perm_b32 v113, v125, v124, 0xc0c0004
	v_perm_b32 v114, v123, v122, 0xc0c0004
	v_perm_b32 v115, v129, v128, 0xc0c0004
	v_perm_b32 v116, v127, v126, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[48:55], v[108:111], v[80:83], v[64:71] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v105, 16, v104
	v_lshl_or_b32 v82, v112, 16, v106
	v_lshl_or_b32 v81, v114, 16, v113
	v_lshl_or_b32 v80, v116, 16, v115
	v_perm_b32 v104, v133, v132, 0xc0c0004
	v_perm_b32 v105, v131, v130, 0xc0c0004
	v_perm_b32 v106, v138, v137, 0xc0c0004
	v_perm_b32 v112, v136, v135, 0xc0c0004
	v_perm_b32 v113, v142, v141, 0xc0c0004
	v_perm_b32 v116, v140, v139, 0xc0c0004
	v_perm_b32 v117, v146, v145, 0xc0c0004
	v_perm_b32 v118, v144, v143, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[48:55], v[80:83], v[60:63], v[48:55] neg_lo:[1,1,0]
	v_lshl_or_b32 v115, v105, 16, v104
	v_lshl_or_b32 v114, v112, 16, v106
	v_lshl_or_b32 v113, v116, 16, v113
	v_lshl_or_b32 v112, v118, 16, v117
	v_perm_b32 v60, v153, v152, 0xc0c0004
	v_perm_b32 v61, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	v_perm_b32 v116, v162, v161, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[48:55], v[112:115], v[56:59], v[48:55] neg_lo:[1,1,0]
	v_perm_b32 v117, v160, v154, 0xc0c0004
	v_lshl_or_b32 v119, v61, 16, v60
	v_wmma_i32_16x16x16_iu8 v[56:63], v[84:87], v[76:79], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[108:111], v[76:79], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v120, v166, v165, 0xc0c0004
	v_perm_b32 v76, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v167, 0xc0c0004
	v_perm_b32 v77, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[56:63], v[88:91], v[72:75], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[80:83], v[72:75], v[64:71] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v147, 16, v134
	v_lshl_or_b32 v105, v156, 16, v155
	v_lshl_or_b32 v104, v148, 16, v159
	v_lshl_or_b32 v118, v117, 16, v116
	v_lshl_or_b32 v117, v76, 16, v120
	v_lshl_or_b32 v116, v77, 16, v1
	v_wmma_i32_16x16x16_iu8 v[56:63], v[92:95], v[44:47], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[112:115], v[44:47], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[104:107], v[100:103], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[48:55], v[116:119], v[100:103], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[104:107], v[96:99], v[56:63] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[116:119], v[96:99], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
.LBB0_10:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v1, s26, v12
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s12
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v37, v3 :: v_dual_lshlrev_b32 v12, 1, v1
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	v_or_b32_e32 v1, s27, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v47, v34, v49
	v_add_f32_e32 v49, v32, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v44, 32, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v43, v4 :: v_dual_lshlrev_b32 v45, 1, v1
	v_add_f32_e32 v51, v30, v53
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v46, v12, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v53, v28, v55
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v12, v45, s[4:7], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v45, v35, v48 :: v_dual_add_f32 v48, v33, v50
	v_add_f32_e32 v50, v31, v52
	v_add_f32_e32 v52, v29, v54
	v_dual_add_f32 v54, v27, v56 :: v_dual_add_f32 v55, v26, v57
	v_dual_add_f32 v56, v25, v58 :: v_dual_add_f32 v57, v24, v59
	v_dual_add_f32 v58, v23, v60 :: v_dual_add_f32 v59, v22, v61
	v_dual_add_f32 v60, v21, v62 :: v_dual_add_f32 v61, v20, v63
	v_add_f32_e32 v63, v18, v65
	v_add_f32_e32 v65, v16, v67
	v_add_f32_e32 v67, v14, v69
	v_dual_add_f32 v69, v11, v71 :: v_dual_and_b32 v72, 1, v0
	v_add_f32_e32 v62, v19, v64
	v_add_f32_e32 v64, v17, v66
	v_add_f32_e32 v66, v15, v68
	v_add_f32_e32 v68, v13, v70
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v70, 2, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v3, s2
	v_cndmask_b32_e64 v35, v35, v45, s2
	v_cndmask_b32_e64 v45, v34, v47, s2
	v_cndmask_b32_e64 v47, v33, v48, s2
	v_cndmask_b32_e64 v48, v29, v52, s2
	v_cndmask_b32_e64 v52, v21, v60, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v42, v5 :: v_dual_add_f32 v6, v41, v6
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_bfe_i32 v73, v0, 0, 1
	v_lshl_add_u32 v74, v2, 1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v4, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v42, v42, v5, s2
	v_cndmask_b32_e64 v28, v28, v53, s2
	v_cndmask_b32_e64 v22, v22, v59, s2
	v_cndmask_b32_e64 v53, v20, v61, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v4, 0x840, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v14, v67, s2
	v_cndmask_b32_e64 v60, v13, v68, s2
	v_cndmask_b32_e64 v61, v11, v69, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v6, s2
	v_cndmask_b32_e64 v30, v30, v51, s2
	v_cndmask_b32_e64 v51, v23, v58, s2
	v_cndmask_b32_e64 v58, v15, v66, s2
	v_cndmask_b32_e64 v32, v32, v49, s2
	v_cndmask_b32_e64 v49, v27, v54, s2
	v_cndmask_b32_e64 v54, v19, v62, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v7, v40, v7 :: v_dual_add_f32 v8, v39, v8
	v_dual_add_f32 v9, v38, v9 :: v_dual_add_f32 v10, v36, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v50, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v40, v40, v7, s2
	v_cndmask_b32_e64 v39, v39, v8, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v38, v38, v9, s2
	v_cndmask_b32_e64 v36, v36, v10, s2
	v_cndmask_b32_e64 v26, v26, v55, s2
	v_cndmask_b32_e64 v50, v25, v56, s2
	v_cndmask_b32_e64 v24, v24, v57, s2
	v_cndmask_b32_e64 v55, v18, v63, s2
	v_cndmask_b32_e64 v56, v17, v64, s2
	v_cndmask_b32_e64 v57, v16, v65, s2
	s_mov_b32 s2, 0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v21, 16, v46
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v3, 5, v72
	v_and_b32_e32 v71, 14, v0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v75, 2, v0
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s26, s25, v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_add3_u32 v3, 0, v70, v3
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v12
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v3, v71, 1, v3
	ds_store_b32 v3, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v74 offset:512
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v1, 0x3f8, v75
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[7:10], v74 offset:16
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v4, v4, v1
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v15, v71, 11, v4
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[3:6], v74
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[19:20], 2, v[0:1]
	v_xad_u32 v62, v15, 8, 0
	v_xad_u32 v63, v15, 16, 0
	v_xad_u32 v64, v15, 24, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_co_u32 v33, vcc_lo, s0, v19
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v19, 16, v44
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v65, v15, 32, 0
	v_xad_u32 v66, v15, 40, 0
	v_xad_u32 v67, v15, 48, 0
	v_xad_u32 v68, v15, 56, 0
	v_add_co_ci_u32_e64 v34, null, s1, v20, vcc_lo
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v80, v3, v19
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v1, 0, v15
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[15:18], v74 offset:528
	v_mul_f32_e32 v20, v3, v21
	v_mul_f32_e32 v70, v11, v21
	v_mul_f32_e32 v44, v8, v21
	v_mul_f32_e32 v74, v13, v21
	v_mul_f32_e32 v46, v9, v21
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v78, v17, v21
	v_dual_mul_f32 v23, v4, v21 :: v_dual_mul_f32 v82, v5, v19
	v_mul_f32_e32 v81, v4, v19
	v_dual_mul_f32 v69, v10, v21 :: v_dual_mul_f32 v88, v11, v19
	v_dual_mul_f32 v27, v6, v21 :: v_dual_mul_f32 v86, v9, v19
	v_dual_mul_f32 v73, v12, v21 :: v_dual_mul_f32 v92, v15, v19
	v_mul_f32_e32 v83, v6, v19
	v_dual_mul_f32 v85, v8, v19 :: v_dual_mul_f32 v8, v50, v82
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v6, v26, v81 :: v_dual_mul_f32 v89, v12, v19
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v25, v5, v21 :: v_dual_mul_f32 v84, v7, v19
	v_dual_mul_f32 v29, v7, v21 :: v_dual_mul_f32 v90, v13, v19
	v_dual_mul_f32 v75, v14, v21 :: v_dual_mul_f32 v94, v17, v19
	v_dual_mul_f32 v91, v14, v19 :: v_dual_mul_f32 v76, v15, v21
	v_mul_f32_e32 v79, v18, v21
	v_mul_f32_e32 v95, v18, v19
	v_dual_mul_f32 v77, v16, v21 :: v_dual_mul_f32 v4, v49, v80
	v_dual_mul_f32 v87, v10, v19 :: v_dual_mul_f32 v12, v51, v84
	v_mul_f32_e32 v93, v16, v19
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v37, v20
	v_dual_mul_f32 v19, v35, v70 :: v_dual_mul_f32 v20, v54, v88
	v_mul_f32_e32 v5, v43, v23
	v_mul_f32_e32 v21, v45, v73
	v_mul_f32_e32 v14, v22, v85
	v_mul_f32_e32 v22, v55, v89
	v_dual_mul_f32 v7, v42, v25 :: v_dual_mul_f32 v18, v53, v87
	v_dual_mul_f32 v23, v47, v74 :: v_dual_mul_f32 v10, v24, v83
	v_dual_mul_f32 v24, v56, v90 :: v_dual_mul_f32 v9, v41, v27
	v_mul_f32_e32 v25, v32, v75
	v_mul_f32_e32 v16, v52, v86
	v_dual_mul_f32 v11, v40, v29 :: v_dual_mul_f32 v26, v57, v91
	v_mul_f32_e32 v15, v38, v46
	v_mul_f32_e32 v17, v36, v69
	v_mul_f32_e32 v27, v31, v76
	v_dual_mul_f32 v35, v28, v79 :: v_dual_mul_f32 v28, v58, v92
	v_dual_mul_f32 v36, v61, v95 :: v_dual_mul_f32 v13, v39, v44
	v_dual_mul_f32 v32, v60, v94 :: v_dual_mul_f32 v29, v30, v77
	v_dual_mul_f32 v31, v48, v78 :: v_dual_mul_f32 v30, v59, v93
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b64 v1, v[3:4], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v62, v[5:6], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v63, v[7:8], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v64, v[9:10], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v65, v[11:12], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v66, v[13:14], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v67, v[15:16], v[31:32] offset1:2
	ds_store_2addr_stride64_b64 v68, v[17:18], v[35:36] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v36, v[33:34], off
	v_lshlrev_b32_e32 v1, 3, v2
	v_lshlrev_b32_e32 v2, 2, v71
	v_lshlrev_b32_e32 v3, 6, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v1, v1, v3, v2
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, 0x840, v1, 0
	v_xad_u32 v4, 0x1008, v1, 0
	v_xad_u32 v5, 0x1848, v1, 0
	v_xad_u32 v6, 0x2010, v1, 0
	v_xad_u32 v7, 0x2850, v1, 0
	v_xad_u32 v8, 0x3018, v1, 0
	v_xad_u32 v9, 0x3858, v1, 0
	ds_load_b64 v[31:32], v2
	ds_load_b64 v[29:30], v3
	ds_load_b64 v[27:28], v4
	ds_load_b64 v[25:26], v5
	ds_load_b64 v[23:24], v6
	ds_load_b64 v[21:22], v7
	ds_load_b64 v[19:20], v8
	ds_load_b64 v[17:18], v9
	v_xad_u32 v2, 0x4020, v1, 0
	v_xad_u32 v3, 0x4860, v1, 0
	v_xad_u32 v4, 0x5028, v1, 0
	v_xad_u32 v5, 0x5868, v1, 0
	v_xad_u32 v6, 0x6030, v1, 0
	v_xad_u32 v35, 0x6870, v1, 0
	v_xad_u32 v37, 0x7038, v1, 0
	v_xad_u32 v1, 0x7878, v1, 0
	ds_load_b64 v[15:16], v2
	ds_load_b64 v[13:14], v3
	ds_load_b64 v[11:12], v4
	ds_load_b64 v[9:10], v5
	ds_load_b64 v[7:8], v6
	ds_load_b64 v[5:6], v35
	ds_load_b64 v[3:4], v37
	ds_load_b64 v[1:2], v1
.LBB0_11:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v35, v36, v31
	global_atomic_cmpswap_b32 v35, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v35, v36
	v_mov_b32_e32 v36, v35
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end181
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v33, s25, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_13:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v35, v36, v29
	global_atomic_cmpswap_b32 v31, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v31, v36
	v_mov_b32_e32 v36, v31
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s25, 1, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_15:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v35, v36, v27
	global_atomic_cmpswap_b32 v29, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v29, v36
	v_mov_b32_e32 v36, v29
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[33:34], null, s25, 3, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_17:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v25
	global_atomic_cmpswap_b32 v27, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v27, v36
	v_mov_b32_e32 v36, v27
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s25, 2, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_19:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v23
	global_atomic_cmpswap_b32 v25, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v25, v36
	v_mov_b32_e32 v36, v25
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 5, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_21:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v21
	global_atomic_cmpswap_b32 v23, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v23, v36
	v_mov_b32_e32 v36, v23
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 6, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_23:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v19
	global_atomic_cmpswap_b32 v21, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v21, v36
	v_mov_b32_e32 v36, v21
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 7, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_25:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v17
	global_atomic_cmpswap_b32 v19, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v19, v36
	v_mov_b32_e32 v36, v19
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s25, 3, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_27:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v15
	global_atomic_cmpswap_b32 v17, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v17, v36
	v_mov_b32_e32 v36, v17
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 9, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_29:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v13
	global_atomic_cmpswap_b32 v15, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v15, v36
	v_mov_b32_e32 v36, v15
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 10, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_31:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v11
	global_atomic_cmpswap_b32 v13, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v13, v36
	v_mov_b32_e32 v36, v13
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 11, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_33:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v9
	global_atomic_cmpswap_b32 v11, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v11, v36
	v_mov_b32_e32 v36, v11
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 12, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_35:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v7
	global_atomic_cmpswap_b32 v9, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v9, v36
	v_mov_b32_e32 v36, v9
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 13, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_37:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v5
	global_atomic_cmpswap_b32 v7, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v7, v36
	v_mov_b32_e32 v36, v7
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 14, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_39:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v3
	global_atomic_cmpswap_b32 v5, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v36
	v_mov_b32_e32 v36, v5
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 15, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_41:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v1
	global_atomic_cmpswap_b32 v3, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v36
	v_mov_b32_e32 v36, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v33, s24, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_43:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v32
	global_atomic_cmpswap_b32 v1, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v36
	v_mov_b32_e32 v36, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_43
; %bb.44:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[31:32], null, s25, 17, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v32, 31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[31:32], 2, v[31:32]
	v_add_co_u32 v31, vcc_lo, s0, v31
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v32, null, s1, v32, vcc_lo
	global_load_b32 v34, v[31:32], off
.LBB0_45:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v33, v34, v30
	global_atomic_cmpswap_b32 v1, v[31:32], v[33:34], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v34
	v_mov_b32_e32 v34, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_45
; %bb.46:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[29:30], null, s25, 18, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v30, 31, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[29:30], 2, v[29:30]
	v_add_co_u32 v29, vcc_lo, s0, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v30, null, s1, v30, vcc_lo
	global_load_b32 v32, v[29:30], off
.LBB0_47:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v31, v32, v28
	global_atomic_cmpswap_b32 v1, v[29:30], v[31:32], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v32
	v_mov_b32_e32 v32, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_47
; %bb.48:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[27:28], null, s25, 19, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v28, 31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[27:28], 2, v[27:28]
	v_add_co_u32 v27, vcc_lo, s0, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v28, null, s1, v28, vcc_lo
	global_load_b32 v30, v[27:28], off
.LBB0_49:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v29, v30, v26
	global_atomic_cmpswap_b32 v1, v[27:28], v[29:30], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v30
	v_mov_b32_e32 v30, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_49
; %bb.50:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[25:26], null, s25, 20, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v26, 31, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[25:26], 2, v[25:26]
	v_add_co_u32 v25, vcc_lo, s0, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v26, null, s1, v26, vcc_lo
	global_load_b32 v28, v[25:26], off
.LBB0_51:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v27, v28, v24
	global_atomic_cmpswap_b32 v1, v[25:26], v[27:28], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v28
	v_mov_b32_e32 v28, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_51
; %bb.52:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[23:24], null, s25, 21, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v24, 31, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[23:24], 2, v[23:24]
	v_add_co_u32 v23, vcc_lo, s0, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v24, null, s1, v24, vcc_lo
	global_load_b32 v26, v[23:24], off
.LBB0_53:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v25, v26, v22
	global_atomic_cmpswap_b32 v1, v[23:24], v[25:26], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v26
	v_mov_b32_e32 v26, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_53
; %bb.54:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[21:22], null, s25, 22, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v22, 31, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[21:22], 2, v[21:22]
	v_add_co_u32 v21, vcc_lo, s0, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v22, null, s1, v22, vcc_lo
	global_load_b32 v24, v[21:22], off
.LBB0_55:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v23, v24, v20
	global_atomic_cmpswap_b32 v1, v[21:22], v[23:24], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v24
	v_mov_b32_e32 v24, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_55
; %bb.56:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[19:20], null, s25, 23, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v20, 31, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[19:20], 2, v[19:20]
	v_add_co_u32 v19, vcc_lo, s0, v19
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v20, null, s1, v20, vcc_lo
	global_load_b32 v22, v[19:20], off
.LBB0_57:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v21, v22, v18
	global_atomic_cmpswap_b32 v1, v[19:20], v[21:22], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v22
	v_mov_b32_e32 v22, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_57
; %bb.58:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[17:18], null, s25, 24, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, vcc_lo, s0, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s1, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_59:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v19, v20, v16
	global_atomic_cmpswap_b32 v1, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v20
	v_mov_b32_e32 v20, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_59
; %bb.60:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[15:16], null, s25, 25, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v16, 31, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[15:16], 2, v[15:16]
	v_add_co_u32 v15, vcc_lo, s0, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v16, null, s1, v16, vcc_lo
	global_load_b32 v18, v[15:16], off
.LBB0_61:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v17, v18, v14
	global_atomic_cmpswap_b32 v1, v[15:16], v[17:18], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v18
	v_mov_b32_e32 v18, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_61
; %bb.62:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[13:14], null, s25, 26, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v13, vcc_lo, s0, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s1, v14, vcc_lo
	global_load_b32 v16, v[13:14], off
.LBB0_63:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v15, v16, v12
	global_atomic_cmpswap_b32 v1, v[13:14], v[15:16], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v16
	v_mov_b32_e32 v16, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_63
; %bb.64:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[11:12], null, s25, 27, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v12, 31, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[11:12], 2, v[11:12]
	v_add_co_u32 v11, vcc_lo, s0, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v12, null, s1, v12, vcc_lo
	global_load_b32 v14, v[11:12], off
.LBB0_65:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v13, v14, v10
	global_atomic_cmpswap_b32 v1, v[11:12], v[13:14], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v14
	v_mov_b32_e32 v14, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_65
; %bb.66:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[9:10], null, s25, 28, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, vcc_lo, s0, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s1, v10, vcc_lo
	global_load_b32 v12, v[9:10], off
.LBB0_67:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v11, v12, v8
	global_atomic_cmpswap_b32 v1, v[9:10], v[11:12], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v12
	v_mov_b32_e32 v12, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_67
; %bb.68:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[7:8], null, s25, 29, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v8, 31, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[7:8], 2, v[7:8]
	v_add_co_u32 v7, vcc_lo, s0, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s1, v8, vcc_lo
	global_load_b32 v10, v[7:8], off
.LBB0_69:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v9, v10, v6
	global_atomic_cmpswap_b32 v1, v[7:8], v[9:10], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v10
	v_mov_b32_e32 v10, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_69
; %bb.70:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[5:6], null, s25, 30, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v6, 31, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[5:6], 2, v[5:6]
	v_add_co_u32 v5, vcc_lo, s0, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s1, v6, vcc_lo
	global_load_b32 v8, v[5:6], off
.LBB0_71:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v7, v8, v4
	global_atomic_cmpswap_b32 v1, v[5:6], v[7:8], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v8
	v_mov_b32_e32 v8, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_71
; %bb.72:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s25, 31, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v4, v[0:1], off
.LBB0_73:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v3, v4, v2
	global_atomic_cmpswap_b32 v3, v[0:1], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_73
; %bb.74:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
		.amdhsa_next_free_sgpr 35
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_vgpr, 234
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14480
; TotalNumSgprs: 37
; NumVgprs: 234
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 37
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     234
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
