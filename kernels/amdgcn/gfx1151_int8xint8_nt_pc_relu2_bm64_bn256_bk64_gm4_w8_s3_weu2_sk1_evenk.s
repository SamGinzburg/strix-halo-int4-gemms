	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v7, 4, v0
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v77, 1, v0
	v_lshlrev_b32_e32 v88, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v3, 0xc0, v2
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
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
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x0
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
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[18:19]
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s23, s19
	s_mov_b32 s22, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	v_readfirstlane_b32 s9, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v7
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[9:10], null, s10, v2, v[1:2]
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[10:11], null, s10, v3, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v86, s10, 6, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s9, s11
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v87, s10, 7, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
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
	s_lshl_b32 s24, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s10, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s30, s24, s10
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s26, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[11:12], null, s26, s10, v[9:10]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s30, s31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, s4, v9
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s31, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s31, s31, 64
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v5, s4, v10
	v_add_nc_u32_e32 v3, s4, v86
	v_add_nc_u32_e32 v4, s4, v87
	s_add_i32 s4, s4, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v8, s31, v11
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v13, 0x80000000, v2, s3
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, 64, v2
	v_add_nc_u32_e32 v12, s4, v86
	v_add_nc_u32_e32 v29, s4, v87
	v_add_nc_u32_e32 v30, 64, v5
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v17, 0x80000000, v3, s3
	v_cndmask_b32_e64 v21, 0x80000000, v4, s3
	v_cndmask_b32_e64 v25, 0x80000000, v5, s3
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b128 v[3:6], v1, s[16:19], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v8, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v8, 0x80000000, v12, s2
	v_cndmask_b32_e64 v12, 0x80000000, v29, s2
	v_cndmask_b32_e64 v45, 0x80000000, v30, s2
	s_clause 0x3
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v17, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v21, s[20:23], 0 offen
	buffer_load_b128 v[25:28], v25, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[29:32], v1, s[16:19], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[33:36], v2, s[20:23], 0 offen
	buffer_load_b128 v[37:40], v8, s[20:23], 0 offen
	buffer_load_b128 v[41:44], v12, s[20:23], 0 offen
	buffer_load_b128 v[45:48], v45, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 48, v77
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v12, 15, v0
	v_lshlrev_b32_e32 v2, 3, v0
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v89, v7, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v89
	s_waitcnt vmcnt(9)
	ds_store_b128 v1, v[3:6] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v1, v[13:16]
	s_waitcnt vmcnt(7)
	ds_store_b128 v1, v[17:20] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v1, v[21:24] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v1, v[25:28] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[29:32] offset:36864
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v1, v[33:36] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v1, v[37:40] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v1, v[41:44] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[45:48] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 48, v2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v1, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v78, v12, 6, v3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v82, 0x1c00, v1, v78
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v79, 16, v78
	v_xor_b32_e32 v80, 32, v78
	v_xor_b32_e32 v81, 48, v78
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v83, 16, v82
	v_xor_b32_e32 v85, 32, v82
	v_xor_b32_e32 v84, 48, v82
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v52, 0
	s_add_i32 s29, 0, 0x8000
	s_add_i32 s27, 0, 0x9000
	s_add_i32 s28, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr84
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v1, 48, v2
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s33, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v12, 6, v1
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_and_or_b32 v82, 0x1c00, v88, v78
	s_mov_b32 s11, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_xor_b32_e32 v79, 16, v78
	v_xor_b32_e32 v80, 32, v78
	v_xor_b32_e32 v81, 48, v78
	v_xor_b32_e32 v83, 16, v82
	v_xor_b32_e32 v85, 32, v82
	v_xor_b32_e32 v84, 48, v82
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v13, 0
	s_add_i32 s31, s31, 64
	s_add_i32 s29, 0, 0x8000
	s_add_i32 s27, 0, 0x9000
	s_add_i32 s28, 0, 0x4000
	s_add_i32 s33, s33, -3
	s_mov_b32 s34, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s6, s5, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s8, s34, 1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s6, s31, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s7, s6, s30
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v90, s6, v11
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v91, s7, v9
	v_add_nc_u32_e32 v92, s7, v86
	v_add_nc_u32_e32 v93, s7, v87
	v_add_nc_u32_e32 v94, s7, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[154:157], v90, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[158:161], v91, s[20:23], 0 offen
	buffer_load_b128 v[162:165], v92, s[20:23], 0 offen
	buffer_load_b128 v[166:169], v93, s[20:23], 0 offen
	buffer_load_b128 v[170:173], v94, s[20:23], 0 offen
	s_mov_b32 s6, s29
	s_mov_b32 s7, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v90, s6, v78
	v_add_nc_u32_e32 v91, s6, v79
	v_add_nc_u32_e32 v92, s6, v80
	v_add_nc_u32_e32 v93, s6, v81
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v94, s7, v82
	v_add_nc_u32_e32 v95, s7, v83
	v_add_nc_u32_e32 v96, s7, v85
	v_add_nc_u32_e32 v97, s7, v84
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[106:109], v90
	ds_load_b128 v[122:125], v90 offset:1024
	ds_load_b128 v[138:141], v90 offset:2048
	ds_load_b128 v[174:177], v90 offset:3072
	ds_load_b128 v[178:181], v91
	ds_load_b128 v[182:185], v91 offset:1024
	ds_load_b128 v[186:189], v91 offset:2048
	ds_load_b128 v[190:193], v91 offset:3072
	ds_load_b128 v[194:197], v92
	ds_load_b128 v[198:201], v92 offset:1024
	ds_load_b128 v[202:205], v92 offset:2048
	ds_load_b128 v[206:209], v92 offset:3072
	ds_load_b128 v[210:213], v93
	ds_load_b128 v[214:217], v93 offset:1024
	ds_load_b128 v[218:221], v93 offset:2048
	ds_load_b128 v[222:225], v93 offset:3072
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[146:149], v94
	ds_load_b128 v[226:229], v94 offset:8192
	ds_load_b128 v[230:233], v95
	ds_load_b128 v[234:237], v95 offset:8192
	ds_load_b128 v[238:241], v96
	ds_load_b128 v[242:245], v96 offset:8192
	ds_load_b128 v[246:249], v97
	ds_load_b128 v[250:253], v97 offset:8192
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s8, 2
	s_mov_b32 s4, s28
	s_cselect_b32 s34, s8, 0
	s_add_i32 s6, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s7, s34, 12
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s8, s34, 14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s7, s7, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s28, s8, 0
	s_mov_b32 s29, s27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s27, s7, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s33
	s_mov_b32 s5, s6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[146:149], v[106:109], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[226:229], v[106:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[146:149], v[122:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[226:229], v[122:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[146:149], v[138:141], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[226:229], v[138:141], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[146:149], v[174:177], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[226:229], v[174:177], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[230:233], v[178:181], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[234:237], v[178:181], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[230:233], v[182:185], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[234:237], v[182:185], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[230:233], v[186:189], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[234:237], v[186:189], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[230:233], v[190:193], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[234:237], v[190:193], v[146:153] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[238:241], v[194:197], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[242:245], v[194:197], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[238:241], v[198:201], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[242:245], v[198:201], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[238:241], v[202:205], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[242:245], v[202:205], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[238:241], v[206:209], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[242:245], v[206:209], v[146:153] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[246:249], v[210:213], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[250:253], v[210:213], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[246:249], v[214:217], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[250:253], v[214:217], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[246:249], v[218:221], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[250:253], v[218:221], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[246:249], v[222:225], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[250:253], v[222:225], v[146:153] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v65, v65, v102 :: v_dual_add_nc_u32 v254, s7, v89
	v_dual_add_f32 v68, v68, v99 :: v_dual_add_nc_u32 v255, s28, v89
	v_add_f32_e32 v52, v52, v90
	v_dual_add_f32 v76, v76, v91 :: v_dual_add_f32 v75, v75, v92
	v_dual_add_f32 v74, v74, v93 :: v_dual_add_f32 v73, v73, v94
	v_dual_add_f32 v72, v72, v95 :: v_dual_add_f32 v71, v71, v96
	v_dual_add_f32 v70, v70, v97 :: v_dual_add_f32 v69, v69, v98
	v_dual_add_f32 v67, v67, v100 :: v_dual_add_f32 v66, v66, v101
	v_dual_add_f32 v64, v64, v103 :: v_dual_add_f32 v61, v61, v106
	v_dual_add_f32 v63, v63, v104 :: v_dual_add_f32 v62, v62, v105
	v_dual_add_f32 v57, v57, v110 :: v_dual_add_f32 v60, v60, v107
	v_add_f32_e32 v55, v55, v112
	v_dual_add_f32 v59, v59, v108 :: v_dual_add_f32 v58, v58, v109
	v_dual_add_f32 v53, v53, v114 :: v_dual_add_f32 v56, v56, v111
	v_add_f32_e32 v49, v49, v117
	v_dual_add_f32 v54, v54, v113 :: v_dual_add_f32 v51, v51, v115
	v_dual_add_f32 v50, v50, v116 :: v_dual_add_f32 v47, v47, v119
	v_dual_add_f32 v48, v48, v118 :: v_dual_add_f32 v45, v45, v121
	v_dual_add_f32 v46, v46, v120 :: v_dual_add_f32 v43, v43, v123
	v_dual_add_f32 v44, v44, v122 :: v_dual_add_f32 v41, v41, v125
	v_dual_add_f32 v42, v42, v124 :: v_dual_add_f32 v39, v39, v127
	v_dual_add_f32 v40, v40, v126 :: v_dual_add_f32 v37, v37, v129
	v_dual_add_f32 v38, v38, v128 :: v_dual_add_f32 v35, v35, v131
	v_dual_add_f32 v36, v36, v130 :: v_dual_add_f32 v33, v33, v133
	v_dual_add_f32 v34, v34, v132 :: v_dual_add_f32 v31, v31, v135
	v_dual_add_f32 v32, v32, v134 :: v_dual_add_f32 v29, v29, v137
	v_dual_add_f32 v30, v30, v136 :: v_dual_add_f32 v27, v27, v139
	v_dual_add_f32 v28, v28, v138 :: v_dual_add_f32 v25, v25, v141
	v_dual_add_f32 v26, v26, v140 :: v_dual_add_f32 v23, v23, v143
	v_dual_add_f32 v24, v24, v142 :: v_dual_add_f32 v21, v21, v145
	v_dual_add_f32 v22, v22, v144 :: v_dual_add_f32 v19, v19, v147
	v_dual_add_f32 v20, v20, v146 :: v_dual_add_f32 v17, v17, v149
	v_dual_add_f32 v18, v18, v148 :: v_dual_add_f32 v15, v15, v151
	v_dual_add_f32 v16, v16, v150 :: v_dual_add_f32 v13, v13, v153
	v_add_f32_e32 v14, v14, v152
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v254, v[154:157] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v255, v[158:161]
	s_waitcnt vmcnt(2)
	ds_store_b128 v255, v[162:165] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v255, v[166:169] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v255, v[170:173] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v88
.LBB0_7:                                ; %._crit_edge
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v2, s4, v85
	v_add_nc_u32_e32 v3, s4, v83
	v_add_nc_u32_e32 v10, s4, v84
	v_add_nc_u32_e32 v4, s4, v82
	s_mov_b32 s4, 0
	ds_load_b128 v[142:145], v2 offset:8192
	ds_load_b128 v[146:149], v2
	ds_load_b128 v[150:153], v3 offset:8192
	ds_load_b128 v[154:157], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v11, s29, v78
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[158:161], v4 offset:8192
	ds_load_b128 v[162:165], v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v2, s4 :: v_dual_add_nc_u32 v123, s29, v79
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[118:121], v11 offset:1024
	ds_load_b128 v[102:105], v11
	v_add_nc_u32_e32 v124, s29, v80
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v6, s8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[166:169], v123 offset:1024
	ds_load_b128 v[106:109], v123
	ds_load_b128 v[170:173], v124 offset:1024
	ds_load_b128 v[110:113], v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v9, s11 :: v_dual_add_nc_u32 v122, s29, v81
	v_dual_mov_b32 v3, s5 :: v_dual_mov_b32 v4, s6
	v_mov_b32_e32 v5, s7
	v_dual_mov_b32 v7, s9 :: v_dual_mov_b32 v8, s10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[174:177], v10 offset:8192
	ds_load_b128 v[178:181], v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[182:185], v122 offset:1024
	ds_load_b128 v[114:117], v122
	ds_load_b128 v[186:189], v11 offset:3072
	ds_load_b128 v[134:137], v11 offset:2048
	ds_load_b128 v[190:193], v123 offset:3072
	ds_load_b128 v[194:197], v123 offset:2048
	ds_load_b128 v[206:209], v122 offset:3072
	ds_load_b128 v[210:213], v122 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[86:93], v[162:165], v[102:105], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[86:93], v[154:157], v[106:109], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[86:93], v[146:149], v[110:113], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[86:93], v[178:181], v[114:117], v[86:93] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v88, v90
	v_cvt_f32_i32_e32 v10, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v87, v89
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v75, v75, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v73, v73, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[94:101], v[158:161], v[102:105], v[2:9] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[198:201], v124 offset:3072
	ds_load_b128 v[202:205], v124 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v92
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v76, v76, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[94:101], v[150:153], v[106:109], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[162:165], v[118:121], v[2:9] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v91
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v71, v71, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[94:101], v[142:145], v[110:113], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[154:157], v[166:169], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[158:161], v[134:137], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[174:177], v[114:117], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[146:149], v[170:173], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[158:161], v[118:121], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[162:165], v[134:137], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[102:109], v[178:181], v[182:185], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[150:153], v[166:169], v[110:117] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v88, v94
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v74, v74, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v87, v93
	v_cvt_f32_i32_e32 v89, v95
	v_cvt_f32_i32_e32 v11, v97
	v_wmma_i32_16x16x16_iu8 v[110:117], v[142:145], v[170:173], v[110:117] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[154:157], v[194:197], v[118:125] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v70, v70, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v87, v98
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v72, v72, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v96
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v66, v66, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v102
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v68, v68, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v89, v100
	v_wmma_i32_16x16x16_iu8 v[110:117], v[174:177], v[182:185], v[110:117] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v69, v69, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v67, v67, v10
	v_add_f32_e32 v65, v65, v87
	v_add_f32_e32 v63, v63, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v101
	v_cvt_f32_i32_e32 v87, v103
	v_cvt_f32_i32_e32 v89, v105
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[146:149], v[202:205], v[118:125] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v61, v61, v11 :: v_dual_add_f32 v62, v62, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v106
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v64, v64, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v104
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v58, v58, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v107
	v_cvt_f32_i32_e32 v89, v110
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v60, v60, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v87, v108
	v_wmma_i32_16x16x16_iu8 v[134:141], v[162:165], v[186:189], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[150:153], v[194:197], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[178:181], v[210:213], v[118:125] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v59, v59, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v109
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v57, v57, v10
	v_add_f32_e32 v55, v55, v87
	v_add_f32_e32 v53, v53, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v111
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v56, v56, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v112
	v_cvt_f32_i32_e32 v87, v113
	v_cvt_f32_i32_e32 v89, v115
	v_wmma_i32_16x16x16_iu8 v[134:141], v[154:157], v[190:193], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[158:161], v[186:189], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[142:145], v[202:205], v[126:133] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v54, v54, v88 :: v_dual_add_f32 v49, v49, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v114
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v51, v51, v10 :: v_dual_add_f32 v50, v50, v11
	v_add_f32_e32 v47, v47, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v116
	v_cvt_f32_i32_e32 v11, v117
	v_cvt_f32_i32_e32 v87, v118
	v_cvt_f32_i32_e32 v89, v120
	v_wmma_i32_16x16x16_iu8 v[134:141], v[146:149], v[198:201], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[150:153], v[190:193], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[174:177], v[210:213], v[126:133] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v48, v48, v88 :: v_dual_add_f32 v45, v45, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v119
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v46, v46, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v121
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v44, v44, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v122
	v_cvt_f32_i32_e32 v87, v123
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v42, v42, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v89, v125
	v_wmma_i32_16x16x16_iu8 v[134:141], v[178:181], v[206:209], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[142:145], v[198:201], v[2:9] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v43, v43, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v124
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v41, v41, v10 :: v_dual_add_f32 v40, v40, v11
	v_add_f32_e32 v37, v37, v89
	v_add_f32_e32 v39, v39, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v126
	v_cvt_f32_i32_e32 v11, v127
	v_cvt_f32_i32_e32 v87, v128
	v_cvt_f32_i32_e32 v89, v130
	v_wmma_i32_16x16x16_iu8 v[2:9], v[174:177], v[206:209], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v38, v38, v88 :: v_dual_add_f32 v35, v35, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v129
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v36, v36, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v131
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v34, v34, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v132
	v_cvt_f32_i32_e32 v87, v133
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v32, v32, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v89, v135
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v33, v33, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v88, v134
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v31, v31, v10 :: v_dual_add_f32 v30, v30, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v27, v27, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v136
	v_cvt_f32_i32_e32 v89, v140
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v29, v29, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v137
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v28, v28, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v87, v138
	v_cvt_f32_i32_e32 v88, v139
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v26, v26, v10
	v_dual_add_f32 v22, v22, v89 :: v_dual_add_f32 v19, v19, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v141
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v20, v20, v2 :: v_dual_add_f32 v17, v17, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v3, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v18, v18, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v5, v9
	v_cvt_f32_i32_e32 v6, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v25, v25, v11
	v_dual_add_f32 v24, v24, v87 :: v_dual_add_f32 v21, v21, v10
	v_dual_add_f32 v23, v23, v88 :: v_dual_add_f32 v16, v16, v2
	v_add_f32_e32 v13, v13, v5
	v_dual_add_f32 v15, v15, v3 :: v_dual_add_f32 v14, v14, v4
	v_add_f32_e32 v52, v52, v6
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v118, s27, v79
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v2, s28, v85
	v_add_nc_u32_e32 v3, s28, v83
	v_add_nc_u32_e32 v5, s28, v82
	ds_load_b128 v[134:137], v2 offset:8192
	ds_load_b128 v[138:141], v2
	ds_load_b128 v[142:145], v3 offset:8192
	ds_load_b128 v[146:149], v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v2, s27, v78
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v4, s28, v84
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v10, s27, v80
	v_add_nc_u32_e32 v11, s27, v81
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v85, s11 :: v_dual_mov_b32 v82, s8
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[150:153], v5 offset:8192
	ds_load_b128 v[154:157], v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v81, s7
	v_mov_b32_e32 v79, s5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[110:113], v2 offset:1024
	ds_load_b128 v[94:97], v2
	ds_load_b128 v[158:161], v10 offset:1024
	ds_load_b128 v[102:105], v10
	ds_load_b128 v[162:165], v118 offset:1024
	ds_load_b128 v[106:109], v118
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v84, s10 :: v_dual_mov_b32 v83, s9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[166:169], v4 offset:8192
	ds_load_b128 v[170:173], v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v80, s6
	v_mov_b32_e32 v78, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[174:177], v11 offset:1024
	ds_load_b128 v[114:117], v11
	ds_load_b128 v[178:181], v2 offset:3072
	ds_load_b128 v[126:129], v2 offset:2048
	ds_load_b128 v[182:185], v118 offset:3072
	ds_load_b128 v[186:189], v118 offset:2048
	ds_load_b128 v[190:193], v10 offset:3072
	ds_load_b128 v[194:197], v10 offset:2048
	ds_load_b128 v[198:201], v11 offset:3072
	ds_load_b128 v[202:205], v11 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[154:157], v[94:97], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[150:153], v[94:97], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[154:157], v[110:113], v[78:85] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[146:149], v[106:109], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[142:145], v[106:109], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[150:153], v[126:129], v[78:85] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[138:141], v[102:105], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[134:137], v[102:105], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[150:153], v[110:113], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[146:149], v[162:165], v[94:101] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[170:173], v[114:117], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[166:169], v[114:117], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[154:157], v[126:129], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[154:157], v[178:181], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[150:153], v[178:181], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[142:145], v[162:165], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[146:149], v[186:189], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[142:145], v[186:189], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[146:149], v[182:185], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[142:145], v[182:185], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[138:141], v[158:161], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[134:137], v[158:161], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[138:141], v[194:197], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[134:137], v[194:197], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[138:141], v[190:193], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[134:137], v[190:193], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[170:173], v[174:177], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[166:169], v[174:177], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[170:173], v[202:205], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[166:169], v[202:205], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[170:173], v[198:201], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[166:169], v[198:201], v[78:85] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v86
	v_cvt_f32_i32_e32 v11, v87
	v_cvt_f32_i32_e32 v86, v88
	v_cvt_f32_i32_e32 v87, v89
	v_cvt_f32_i32_e32 v88, v90
	v_cvt_f32_i32_e32 v89, v91
	v_cvt_f32_i32_e32 v90, v92
	v_cvt_f32_i32_e32 v91, v93
	v_cvt_f32_i32_e32 v92, v94
	v_cvt_f32_i32_e32 v93, v95
	v_cvt_f32_i32_e32 v94, v96
	v_cvt_f32_i32_e32 v95, v97
	v_cvt_f32_i32_e32 v96, v98
	v_cvt_f32_i32_e32 v97, v99
	v_cvt_f32_i32_e32 v98, v100
	v_cvt_f32_i32_e32 v99, v101
	v_cvt_f32_i32_e32 v100, v102
	v_cvt_f32_i32_e32 v101, v103
	v_cvt_f32_i32_e32 v102, v104
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v104, v106
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v107, v109
	v_cvt_f32_i32_e32 v108, v110
	v_cvt_f32_i32_e32 v109, v111
	v_cvt_f32_i32_e32 v110, v112
	v_cvt_f32_i32_e32 v111, v113
	v_cvt_f32_i32_e32 v112, v114
	v_cvt_f32_i32_e32 v113, v115
	v_cvt_f32_i32_e32 v114, v116
	v_cvt_f32_i32_e32 v115, v117
	v_cvt_f32_i32_e32 v116, v118
	v_cvt_f32_i32_e32 v117, v119
	v_cvt_f32_i32_e32 v118, v120
	v_cvt_f32_i32_e32 v119, v121
	v_cvt_f32_i32_e32 v120, v122
	v_cvt_f32_i32_e32 v121, v123
	v_cvt_f32_i32_e32 v122, v124
	v_cvt_f32_i32_e32 v123, v125
	v_cvt_f32_i32_e32 v124, v126
	v_cvt_f32_i32_e32 v125, v127
	v_cvt_f32_i32_e32 v126, v128
	v_cvt_f32_i32_e32 v127, v129
	v_cvt_f32_i32_e32 v128, v130
	v_cvt_f32_i32_e32 v129, v131
	v_cvt_f32_i32_e32 v130, v132
	v_cvt_f32_i32_e32 v131, v133
	v_cvt_f32_i32_e32 v132, v78
	v_cvt_f32_i32_e32 v133, v79
	v_cvt_f32_i32_e32 v134, v80
	v_cvt_f32_i32_e32 v135, v81
	v_cvt_f32_i32_e32 v136, v82
	v_cvt_f32_i32_e32 v137, v83
	v_cvt_f32_i32_e32 v138, v84
	v_cvt_f32_i32_e32 v139, v85
.LBB0_11:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v78, s26, v12
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v79, s24, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v76, v3 :: v_dual_lshlrev_b32 v78, 1, v78
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s4, s12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v52, v2 :: v_dual_lshlrev_b32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v80, 32, v78
	v_or_b32_e32 v81, 64, v78
	v_or_b32_e32 v82, 0x60, v78
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v73, v6 :: v_dual_and_b32 v83, 0xf0, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x3
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v10, v69, v10
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v85, v67, v86 :: v_dual_add_f32 v86, v66, v87
	v_dual_add_f32 v87, v65, v88 :: v_dual_add_f32 v88, v64, v89
	v_dual_add_f32 v89, v63, v90 :: v_dual_add_f32 v90, v62, v91
	v_dual_add_f32 v91, v61, v92 :: v_dual_add_f32 v92, v60, v93
	v_dual_add_f32 v93, v59, v94 :: v_dual_add_f32 v94, v58, v95
	v_dual_add_f32 v95, v57, v96 :: v_dual_add_f32 v96, v56, v97
	v_dual_add_f32 v97, v55, v98 :: v_dual_add_f32 v98, v54, v99
	v_dual_add_f32 v99, v53, v100 :: v_dual_add_f32 v100, v51, v101
	v_dual_add_f32 v101, v50, v102 :: v_dual_add_f32 v102, v49, v103
	v_dual_add_f32 v103, v48, v104 :: v_dual_add_f32 v104, v47, v105
	v_dual_add_f32 v105, v46, v106 :: v_dual_add_f32 v106, v45, v107
	v_dual_add_f32 v107, v44, v108 :: v_dual_add_f32 v108, v43, v109
	v_dual_add_f32 v109, v42, v110 :: v_dual_add_f32 v110, v41, v111
	v_dual_add_f32 v111, v40, v112 :: v_dual_add_f32 v112, v39, v113
	v_dual_add_f32 v113, v38, v114 :: v_dual_add_f32 v114, v37, v115
	v_dual_add_f32 v115, v36, v116 :: v_dual_add_f32 v116, v35, v117
	v_dual_add_f32 v117, v34, v118 :: v_dual_add_f32 v118, v33, v119
	v_dual_add_f32 v119, v32, v120 :: v_dual_add_f32 v120, v31, v121
	v_dual_add_f32 v121, v30, v122 :: v_dual_add_f32 v122, v29, v123
	v_dual_add_f32 v123, v28, v124 :: v_dual_add_f32 v124, v27, v125
	v_dual_add_f32 v125, v26, v126 :: v_dual_add_f32 v126, v25, v127
	v_dual_add_f32 v127, v24, v128 :: v_dual_add_f32 v128, v23, v129
	v_dual_add_f32 v129, v22, v130 :: v_dual_add_f32 v130, v21, v131
	v_dual_add_f32 v131, v20, v132 :: v_dual_add_f32 v132, v19, v133
	v_dual_add_f32 v133, v18, v134 :: v_dual_add_f32 v134, v17, v135
	v_dual_add_f32 v135, v16, v136 :: v_dual_add_f32 v136, v15, v137
	v_dual_add_f32 v137, v14, v138 :: v_dual_add_f32 v138, v13, v139
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v77, 28, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v52, v2, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v2, v83, 2, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v84, v72, v7 :: v_dual_add_f32 v9, v70, v9
	v_dual_add_f32 v8, v71, v8 :: v_dual_add_f32 v11, v68, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v76, v3, s2
	v_cndmask_b32_e64 v65, v65, v87, s2
	v_cndmask_b32_e64 v87, v20, v131, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v20, v83, 1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v71, v8, s2
	v_cndmask_b32_e64 v70, v70, v9, s2
	v_cndmask_b32_e64 v69, v69, v10, s2
	v_cndmask_b32_e64 v68, v68, v11, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v140, 1, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v84, s2
	v_cndmask_b32_e64 v67, v67, v85, s2
	v_cndmask_b32_e64 v66, v66, v86, s2
	v_cndmask_b32_e64 v64, v64, v88, s2
	v_cndmask_b32_e64 v63, v63, v89, s2
	v_cndmask_b32_e64 v62, v62, v90, s2
	v_cndmask_b32_e64 v61, v61, v91, s2
	v_cndmask_b32_e64 v84, v23, v128, s2
	v_cndmask_b32_e64 v85, v22, v129, s2
	v_cndmask_b32_e64 v86, v21, v130, s2
	v_cndmask_b32_e64 v88, v19, v132, s2
	v_cndmask_b32_e64 v89, v18, v133, s2
	v_cndmask_b32_e64 v90, v17, v134, s2
	v_cndmask_b32_e64 v91, v16, v135, s2
	v_cndmask_b32_e64 v83, v13, v138, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v75, v4 :: v_dual_add_f32 v5, v74, v5
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s26, s26, s25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v56, v96, s2
	v_cndmask_b32_e64 v55, v55, v97, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v75, v75, v4, s2
	v_cndmask_b32_e64 v40, v40, v111, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v4, s26, s24, v140
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v5, s2
	v_cndmask_b32_e64 v73, v73, v6, s2
	v_cndmask_b32_e64 v54, v54, v98, s2
	v_cndmask_b32_e64 v53, v53, v99, s2
	v_cndmask_b32_e64 v51, v51, v100, s2
	v_cndmask_b32_e64 v50, v50, v101, s2
	v_cndmask_b32_e64 v49, v49, v102, s2
	v_cndmask_b32_e64 v48, v48, v103, s2
	v_cndmask_b32_e64 v47, v47, v104, s2
	v_cndmask_b32_e64 v46, v46, v105, s2
	v_cndmask_b32_e64 v45, v45, v106, s2
	v_cndmask_b32_e64 v44, v44, v107, s2
	v_cndmask_b32_e64 v43, v43, v108, s2
	v_cndmask_b32_e64 v42, v42, v109, s2
	v_cndmask_b32_e64 v41, v41, v110, s2
	v_cndmask_b32_e64 v39, v39, v112, s2
	v_cndmask_b32_e64 v38, v38, v113, s2
	v_cndmask_b32_e64 v37, v37, v114, s2
	v_cndmask_b32_e64 v36, v36, v115, s2
	v_cndmask_b32_e64 v35, v35, v116, s2
	v_cndmask_b32_e64 v34, v34, v117, s2
	v_cndmask_b32_e64 v33, v33, v118, s2
	v_cndmask_b32_e64 v32, v32, v119, s2
	v_cndmask_b32_e64 v31, v31, v120, s2
	v_cndmask_b32_e64 v30, v30, v121, s2
	v_cndmask_b32_e64 v29, v29, v122, s2
	v_cndmask_b32_e64 v28, v28, v123, s2
	v_cndmask_b32_e64 v27, v27, v124, s2
	v_cndmask_b32_e64 v26, v26, v125, s2
	v_cndmask_b32_e64 v25, v25, v126, s2
	v_cndmask_b32_e64 v24, v24, v127, s2
	v_cndmask_b32_e64 v57, v57, v95, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v60, v92, s2
	v_cndmask_b32_e64 v58, v58, v94, s2
	v_cndmask_b32_e64 v59, v59, v93, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v92.h, v7.h
	v_mov_b16_e32 v93.h, v7.h
	v_mov_b16_e32 v94.h, v7.h
	v_mov_b16_e32 v95.h, v7.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s3, s7
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v80, 16, v80
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v139, 32, v1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v1, s25, v12
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v79
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add3_u32 v2, v2, v139, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v15, v136, s2
	v_cndmask_b32_e64 v79, v14, v137, s2
	s_mov_b32 s2, 0x76543210
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v6, s25, 4, v1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v20
	ds_load_b128 v[12:15], v20 offset:16
	ds_load_b128 v[16:19], v20 offset:512
	ds_load_b128 v[20:23], v20 offset:528
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[2:3], null, s25, 48, v[1:2]
	v_lshl_add_u32 v5, s25, 5, v1
	v_add_lshl_u32 v1, v4, v1, 1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v111, v8, v80
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v102, v14, v78 :: v_dual_lshlrev_b32 v81, 16, v81
	v_mul_f32_e32 v96, v8, v78
	v_mul_f32_e32 v97, v9, v78
	v_dual_mul_f32 v113, v10, v80 :: v_dual_lshlrev_b32 v82, 16, v82
	v_dual_mul_f32 v100, v12, v78 :: v_dual_add_nc_u32 v3, 0x80, v4
	v_mul_f32_e32 v98, v10, v78
	v_dual_mul_f32 v99, v11, v78 :: v_dual_mul_f32 v112, v9, v80
	v_dual_mul_f32 v101, v13, v78 :: v_dual_mul_f32 v114, v11, v80
	v_dual_mul_f32 v103, v15, v78 :: v_dual_mul_f32 v116, v13, v80
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v104, v16, v78 :: v_dual_mul_f32 v117, v14, v80
	v_dual_mul_f32 v105, v17, v78 :: v_dual_mul_f32 v118, v15, v80
	v_dual_mul_f32 v106, v18, v78 :: v_dual_mul_f32 v115, v12, v80
	v_dual_mul_f32 v107, v19, v78 :: v_dual_mul_f32 v120, v17, v80
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v108, v20, v78 :: v_dual_mul_f32 v121, v18, v80
	v_dual_mul_f32 v109, v21, v78 :: v_dual_mul_f32 v122, v19, v80
	v_dual_mul_f32 v110, v22, v78 :: v_dual_mul_f32 v119, v16, v80
	v_dual_mul_f32 v78, v23, v78 :: v_dual_mul_f32 v123, v20, v80
	v_dual_mul_f32 v124, v21, v80 :: v_dual_mul_f32 v129, v11, v81
	v_dual_mul_f32 v125, v22, v80 :: v_dual_mul_f32 v126, v8, v81
	v_dual_mul_f32 v80, v23, v80 :: v_dual_mul_f32 v127, v9, v81
	v_dual_mul_f32 v128, v10, v81 :: v_dual_mul_f32 v9, v9, v82
	v_dual_mul_f32 v130, v12, v81 :: v_dual_mul_f32 v11, v11, v82
	v_dual_mul_f32 v131, v13, v81 :: v_dual_mul_f32 v8, v8, v82
	v_dual_mul_f32 v132, v14, v81 :: v_dual_mul_f32 v13, v13, v82
	v_dual_mul_f32 v133, v15, v81 :: v_dual_mul_f32 v10, v10, v82
	v_dual_mul_f32 v134, v16, v81 :: v_dual_mul_f32 v15, v15, v82
	v_dual_mul_f32 v135, v17, v81 :: v_dual_mul_f32 v12, v12, v82
	v_dual_mul_f32 v136, v18, v81 :: v_dual_mul_f32 v17, v17, v82
	v_dual_mul_f32 v137, v19, v81 :: v_dual_mul_f32 v14, v14, v82
	v_dual_mul_f32 v138, v20, v81 :: v_dual_mul_f32 v19, v19, v82
	v_dual_mul_f32 v139, v21, v81 :: v_dual_mul_f32 v16, v16, v82
	v_dual_mul_f32 v140, v22, v81 :: v_dual_mul_f32 v21, v21, v82
	v_dual_mul_f32 v81, v23, v81 :: v_dual_mul_f32 v18, v18, v82
	v_dual_mul_f32 v22, v22, v82 :: v_dual_mul_f32 v69, v69, v104
	v_dual_mul_f32 v23, v23, v82 :: v_dual_mul_f32 v52, v52, v96
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v76, v76, v97 :: v_dual_mul_f32 v75, v75, v98
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v20, v20, v82 :: v_dual_mul_f32 v73, v73, v100
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v74, v74, v99 :: v_dual_mul_f32 v71, v71, v102
	v_dual_mul_f32 v72, v72, v101 :: v_dual_mul_f32 v67, v67, v106
	v_dual_mul_f32 v32, v32, v138 :: v_dual_mul_f32 v29, v29, v81
	v_dual_mul_f32 v8, v28, v8 :: v_dual_mul_f32 v11, v25, v11
	v_dual_mul_f32 v10, v26, v10 :: v_dual_mul_f32 v13, v84, v13
	v_dual_mul_f32 v22, v79, v22 :: v_dual_max_f32 v73, 0, v73
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_dual_max_f32 v28, 0, v52 :: v_dual_max_f32 v69, 0, v69
	v_dual_max_f32 v52, 0, v76 :: v_dual_max_f32 v67, 0, v67
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v70, v70, v103 :: v_dual_mul_f32 v65, v65, v108
	v_dual_mul_f32 v64, v64, v109 :: v_dual_mul_f32 v61, v61, v111
	v_dual_mul_f32 v62, v62, v78 :: v_dual_mul_f32 v57, v57, v115
	v_dual_mul_f32 v34, v34, v136 :: v_dual_mul_f32 v31, v31, v139
	v_dual_mul_f32 v30, v30, v140 :: v_dual_mul_f32 v9, v27, v9
	v_dual_mul_f32 v12, v24, v12 :: v_dual_mul_f32 v15, v86, v15
	v_dual_mul_f32 v14, v85, v14 :: v_dual_mul_f32 v17, v88, v17
	v_dual_mul_f32 v16, v87, v16 :: v_dual_mul_f32 v25, v90, v19
	v_dual_mul_f32 v18, v89, v18 :: v_dual_mul_f32 v27, v83, v23
	v_dual_mul_f32 v20, v91, v20 :: v_dual_max_f32 v75, 0, v75
	v_dual_mul_f32 v26, v77, v21 :: v_dual_max_f32 v71, 0, v71
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v74, 0, v74 :: v_dual_max_f32 v65, 0, v65
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v79, 0, v11
	v_dual_max_f32 v78, 0, v10 :: v_dual_max_f32 v21, 0, v16
	v_dual_max_f32 v10, 0, v22 :: v_dual_mul_f32 v11, v52, v52
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v68, v68, v105 :: v_dual_mul_f32 v63, v63, v110
	v_dual_mul_f32 v48, v48, v123 :: v_dual_mul_f32 v45, v45, v80
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v72, 0, v72
	v_dual_max_f32 v70, 0, v70 :: v_dual_max_f32 v61, 0, v61
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v77, 0, v9
	v_dual_max_f32 v76, 0, v8 :: v_dual_max_f32 v23, 0, v15
	v_dual_max_f32 v80, 0, v12 :: v_dual_max_f32 v19, 0, v17
	v_max_f32_e32 v24, 0, v14
	v_dual_max_f32 v17, 0, v18 :: v_dual_max_f32 v16, 0, v25
	v_dual_max_f32 v14, 0, v26 :: v_dual_mul_f32 v9, v28, v28
	v_dual_max_f32 v8, 0, v27 :: v_dual_mul_f32 v15, v74, v74
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v12, v75, v75 :: v_dual_mul_f32 v25, v70, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v11.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v73, v73
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v60, v60, v112 :: v_dual_mul_f32 v55, v55, v117
	v_dual_mul_f32 v58, v58, v114 :: v_dual_mul_f32 v53, v53, v119
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v63, 0, v63 :: v_dual_max_f32 v30, 0, v30
	v_max_f32_e32 v81, 0, v13
	v_max_f32_e32 v13, 0, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v92.l, v9.h
	v_mov_b16_e32 v93.l, v12.h
	v_and_b32_e32 v27, 1, v7
	v_mov_b16_e32 v94.l, v18.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v20, v72, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v15.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v66, v66, v107 :: v_dual_mul_f32 v59, v59, v113
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v64, 0, v64 :: v_dual_max_f32 v55, 0, v55
	v_dual_max_f32 v62, 0, v62 :: v_dual_max_f32 v53, 0, v53
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v26, v69, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v92
	v_and_b32_e32 v52, 1, v93
	v_and_b32_e32 v69, 1, v94
	v_and_b32_e32 v70, 1, v7
	v_mov_b16_e32 v7.l, v20.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v68, 0, v68 :: v_dual_max_f32 v59, 0, v59
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v22, v71, v71
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v9, v28, 0x7fff
	v_add3_u32 v9, v11, v27, 0x7fff
	v_add3_u32 v12, v12, v52, 0x7fff
	v_and_b32_e32 v27, 1, v7
	v_add3_u32 v11, v15, v70, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v54, v54, v118 :: v_dual_mul_f32 v51, v51, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v12.h
	v_add3_u32 v12, v20, v27, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v27, v68, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v95.l, v22.h
	v_mov_b16_e32 v7.l, v25.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v60, 0, v60 :: v_dual_max_f32 v51, 0, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v18, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v20, 1, v95
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v66, 0, v66 :: v_dual_max_f32 v57, 0, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v15, 1, v7
	v_mov_b16_e32 v9.l, v28.h
	v_mov_b16_e32 v28.l, v26.h
	v_mov_b16_e32 v28.h, v7.h
	v_mov_b16_e32 v12.l, v18.h
	v_add3_u32 v18, v22, v20, 0x7fff
	v_mov_b16_e32 v7.l, v27.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v22, v66, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v15, v25, v15, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v57, v57, v57 :: v_dual_and_b32 v20, 1, v28
	v_mul_f32_e32 v25, v67, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.l, v18.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v53, v53, v53 :: v_dual_and_b32 v18, 1, v7
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v56, v56, v116 :: v_dual_mul_f32 v49, v49, v122
	v_dual_mul_f32 v50, v50, v121 :: v_dual_mul_f32 v47, v47, v124
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v26, v20, 0x7fff
	v_mov_b16_e32 v7.l, v22.h
	v_mov_b16_e32 v26.l, v25.h
	v_mov_b16_e32 v26.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v28, v65, v65 :: v_dual_mul_f32 v55, v55, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v27, v18, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v27, v64, v64
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v44, v44, v126 :: v_dual_mul_f32 v41, v41, v129
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v58, 0, v58 :: v_dual_max_f32 v49, 0, v49
	v_dual_max_f32 v56, 0, v56 :: v_dual_max_f32 v47, 0, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v52, 1, v7
	v_and_b32_e32 v26, 1, v26
	v_mov_b16_e32 v64.l, v28.h
	v_mov_b16_e32 v64.h, v7.h
	v_mov_b16_e32 v7.l, v27.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v54, 0, v54 :: v_dual_max_f32 v45, 0, v45
	v_dual_max_f32 v48, 0, v48 :: v_dual_max_f32 v41, 0, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v20.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v49, v49, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v22, v52, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v45, v45, v45 :: v_dual_and_b32 v22, 1, v64
	v_mul_f32_e32 v47, v47, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v25, v26, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v41, v41, v41 :: v_dual_and_b32 v26, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v28, v22, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v46, v46, v125 :: v_dual_mul_f32 v43, v43, v127
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v22, v27, v26, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v27, v60, v60 :: v_dual_mul_f32 v60, v61, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v61.h, v7.h
	v_mov_b16_e32 v20.l, v25.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v25, v62, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v26.h, v7.h
	v_mov_b16_e32 v61.l, v60.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v52, v63, v63
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v40, v40, v130 :: v_dual_mul_f32 v37, v37, v133
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v50, 0, v50 :: v_dual_max_f32 v43, 0, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v26.l, v52.h
	v_mov_b16_e32 v7.l, v25.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v36, v36, v134 :: v_dual_mul_f32 v33, v33, v137
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v44, 0, v44 :: v_dual_max_f32 v37, 0, v37
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v43, v43, v43 :: v_dual_and_b32 v26, 1, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.l, v28.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v37, v37, v37 :: v_dual_and_b32 v28, 1, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v27.h
	v_add3_u32 v26, v52, v26, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v52, v59, v59
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v42, v42, v128 :: v_dual_mul_f32 v39, v39, v131
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v40, 0, v40 :: v_dual_max_f32 v33, 0, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v25, v28, 0x7fff
	v_and_b32_e32 v28, 1, v7
	v_and_b32_e32 v59, 1, v61
	v_mov_b16_e32 v61.l, v52.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v58, v58, v58
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v46, 0, v46 :: v_dual_max_f32 v39, 0, v39
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v33, v33, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v27, v27, v28, 0x7fff
	v_and_b32_e32 v28, 1, v61
	v_mov_b16_e32 v25.l, v26.h
	v_add3_u32 v26, v60, v59, 0x7fff
	v_mov_b16_e32 v7.l, v58.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v56, v56, v56
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v38, v38, v132 :: v_dual_mul_f32 v35, v35, v135
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v39, v39, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v52, v28, 0x7fff
	v_mov_b16_e32 v52.l, v57.h
	v_mov_b16_e32 v52.h, v7.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v29, 0, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v26.h
	v_and_b32_e32 v26, 1, v7
	v_mov_b16_e32 v7.l, v56.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v42, 0, v42 :: v_dual_max_f32 v35, 0, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v52, 1, v52
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v54, v54, v54 :: v_dual_mul_f32 v29, v29, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v26, v58, v26, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v21, v21, v21 :: v_dual_and_b32 v58, 1, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v59.l, v55.h
	v_mov_b16_e32 v59.h, v7.h
	v_mov_b16_e32 v26.l, v28.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v35, v35, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v57, v52, 0x7fff
	v_mov_b16_e32 v7.l, v54.h
	v_add3_u32 v52, v56, v58, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v17, v17, v17 :: v_dual_and_b32 v56, 1, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v52.l, v28.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v28, v51, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v57, 1, v7
	v_add3_u32 v51, v55, v56, 0x7fff
	v_mov_b16_e32 v55.l, v53.h
	v_mov_b16_e32 v55.h, v7.h
	v_mov_b16_e32 v7.l, v28.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v50, v50, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v54, v54, v57, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v31, 0, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v54.l, v51.h
	v_and_b32_e32 v51, 1, v55
	v_and_b32_e32 v55, 1, v7
	v_mov_b16_e32 v56.l, v50.h
	v_mov_b16_e32 v56.h, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v48, v48, v48 :: v_dual_mul_f32 v31, v31, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v51, v53, v51, 0x7fff
	v_add3_u32 v28, v28, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v55, 1, v56
	v_mov_b16_e32 v56.l, v48.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v46, v46, v46 :: v_dual_mul_f32 v23, v23, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v51.h
	v_mov_b16_e32 v7.l, v49.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v51, 1, v56
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v44, v44, v44 :: v_dual_mul_f32 v19, v19, v19
	v_mul_f32_e32 v13, v13, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v53, 1, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v48, v48, v51, 0x7fff
	v_mov_b16_e32 v51.l, v46.h
	v_mov_b16_e32 v51.h, v7.h
	v_mov_b16_e32 v7.l, v47.h
	v_add3_u32 v49, v49, v53, 0x7fff
	v_mov_b16_e32 v53.l, v44.h
	v_mov_b16_e32 v53.h, v7.h
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v50, v50, v55, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v42, v42, v42
	v_mul_f32_e32 v40, v40, v40
	v_mul_f32_e32 v38, v38, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v46, v46, v51, 0x7fff
	v_mov_b16_e32 v49.l, v50.h
	v_and_b32_e32 v50, 1, v7
	v_mov_b16_e32 v7.l, v45.h
	v_mov_b16_e32 v46.l, v42.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v32, v32, v32
	v_mul_f32_e32 v30, v30, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v47, v47, v50, 0x7fff
	v_and_b32_e32 v50, 1, v7
	v_mov_b16_e32 v7.l, v43.h
	v_mov_b16_e32 v47.l, v48.h
	v_and_b32_e32 v48, 1, v53
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v24, v24, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v45, v50, 0x7fff
	v_and_b32_e32 v50, 1, v7
	v_mov_b16_e32 v45.l, v46.h
	v_add3_u32 v44, v44, v48, 0x7fff
	v_mov_b16_e32 v46.h, v7.h
	v_mov_b16_e32 v7.l, v41.h
	v_add3_u32 v43, v43, v50, 0x7fff
	v_mov_b16_e32 v48.l, v40.h
	v_mov_b16_e32 v43.l, v44.h
	v_and_b32_e32 v44, 1, v46
	v_and_b32_e32 v46, 1, v7
	v_mov_b16_e32 v48.h, v7.h
	v_mov_b16_e32 v7.l, v39.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v16, v16, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v42, v44, 0x7fff
	v_add3_u32 v41, v41, v46, 0x7fff
	v_and_b32_e32 v46, 1, v48
	v_and_b32_e32 v44, 1, v7
	v_mov_b16_e32 v7.l, v37.h
	v_mov_b16_e32 v48.l, v38.h
	v_mov_b16_e32 v41.l, v42.h
	v_add3_u32 v40, v40, v46, 0x7fff
	v_add3_u32 v39, v39, v44, 0x7fff
	v_mov_b16_e32 v44.h, v7.h
	v_and_b32_e32 v42, 1, v48
	v_mov_b16_e32 v46.h, v7.h
	v_mov_b16_e32 v39.l, v40.h
	v_and_b32_e32 v40, 1, v7
	v_mov_b16_e32 v7.l, v35.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v36, v36, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v38, v42, 0x7fff
	v_mov_b16_e32 v42.h, v7.h
	v_add3_u32 v37, v37, v40, 0x7fff
	v_and_b32_e32 v40, 1, v7
	v_mov_b16_e32 v7.l, v33.h
	v_mov_b16_e32 v42.l, v36.h
	v_mov_b16_e32 v37.l, v38.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v14, v14, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v35, v35, v40, 0x7fff
	v_and_b32_e32 v40, 1, v7
	v_mov_b16_e32 v7.l, v31.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v10, v10, v10
	v_mul_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v33, v40, 0x7fff
	v_and_b32_e32 v42, 1, v42
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v40, v77, v77
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v36, v42, 0x7fff
	v_mov_b16_e32 v36.l, v32.h
	v_mov_b16_e32 v42.h, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v35.l, v36.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v34, v34, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, v7.h
	v_mov_b16_e32 v44.l, v34.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v44
	v_add3_u32 v34, v34, v38, 0x7fff
	v_mov_b16_e32 v38.l, v30.h
	v_mov_b16_e32 v38.h, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v34.h
	v_and_b32_e32 v34, 1, v36
	v_and_b32_e32 v36, 1, v7
	v_mov_b16_e32 v7.l, v29.h
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v32, v32, v34, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v34, v76, v76
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v31, v36, 0x7fff
	v_and_b32_e32 v36, 1, v7
	v_add3_u32 v30, v30, v38, 0x7fff
	v_mov_b16_e32 v7.l, v40.h
	v_mov_b16_e32 v42.l, v34.h
	v_mov_b16_e32 v31.l, v32.h
	v_add3_u32 v29, v29, v36, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v36, v79, v79
	v_mul_f32_e32 v38, v78, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v42
	v_mov_b16_e32 v29.l, v30.h
	v_and_b32_e32 v30, 1, v7
	v_mov_b16_e32 v7.l, v36.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v42, v80, v80
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v34, v32, 0x7fff
	v_mov_b16_e32 v34.l, v38.h
	v_mov_b16_e32 v34.h, v7.h
	v_add3_u32 v30, v40, v30, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v40, v81, v81
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v44, 1, v7
	v_mov_b16_e32 v46.l, v42.h
	v_and_b32_e32 v34, 1, v34
	v_mov_b16_e32 v30.l, v32.h
	v_mov_b16_e32 v7.l, v40.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v32, v38, v34, 0x7fff
	v_add3_u32 v34, v36, v44, 0x7fff
	v_and_b32_e32 v36, 1, v46
	v_and_b32_e32 v38, 1, v7
	v_mov_b16_e32 v7.l, v23.h
	v_mov_b16_e32 v34.l, v32.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v32, v42, v36, 0x7fff
	v_add3_u32 v36, v40, v38, 0x7fff
	v_mov_b16_e32 v38.l, v24.h
	v_mov_b16_e32 v38.h, v7.h
	v_mov_b16_e32 v40.l, v21.h
	v_mov_b16_e32 v36.l, v32.h
	v_mov_b16_e32 v40.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v32, 1, v38
	v_and_b32_e32 v38, 1, v7
	v_mov_b16_e32 v7.l, v19.h
	v_add3_u32 v24, v24, v32, 0x7fff
	v_and_b32_e32 v32, 1, v40
	v_mov_b16_e32 v40.l, v17.h
	v_add3_u32 v23, v23, v38, 0x7fff
	v_and_b32_e32 v38, 1, v7
	v_mov_b16_e32 v23.l, v24.h
	v_add3_u32 v21, v21, v32, 0x7fff
	v_and_b32_e32 v24, 1, v40
	v_mov_b16_e32 v7.l, v16.h
	v_add3_u32 v19, v19, v38, 0x7fff
	v_mov_b16_e32 v32.l, v10.h
	v_mov_b16_e32 v19.l, v21.h
	v_add3_u32 v17, v17, v24, 0x7fff
	v_mov_b16_e32 v24.l, v13.h
	v_mov_b16_e32 v24.h, v7.h
	v_and_b32_e32 v21, 1, v7
	v_mov_b16_e32 v7.l, v14.h
	v_mov_b16_e32 v32.h, v7.h
	v_cndmask_b32_e32 v38, v31, v35, vcc_lo
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v16, v16, v21, 0x7fff
	v_and_b32_e32 v21, 1, v7
	v_mov_b16_e32 v7.l, v8.h
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v13, v13, v24, 0x7fff
	v_mov_b16_e32 v16.l, v17.h
	v_add3_u32 v14, v14, v21, 0x7fff
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v10, v10, v32, 0x7fff
	v_mov_b16_e32 v14.l, v13.h
	v_cndmask_b32_e32 v17, v52, v27, vcc_lo
	v_cndmask_b32_e32 v24, v28, v47, vcc_lo
	v_add3_u32 v0, v8, v7, 0x7fff
	v_mov_b16_e32 v0.l, v10.h
	v_dual_cndmask_b32 v8, v12, v9 :: v_dual_cndmask_b32 v7, v9, v12
	v_cndmask_b32_e32 v10, v15, v11, vcc_lo
	v_dual_cndmask_b32 v9, v11, v15 :: v_dual_cndmask_b32 v12, v22, v18
	v_dual_cndmask_b32 v11, v18, v22 :: v_dual_cndmask_b32 v18, v27, v52
	v_cndmask_b32_e32 v22, v47, v28, vcc_lo
	v_cndmask_b32_e32 v27, v39, v43, vcc_lo
	v_cndmask_b32_e32 v28, v43, v39, vcc_lo
	v_cndmask_b32_e32 v31, v35, v31, vcc_lo
	v_cndmask_b32_e32 v35, v29, v33, vcc_lo
	v_cndmask_b32_e32 v29, v33, v29, vcc_lo
	v_dual_cndmask_b32 v33, v36, v30 :: v_dual_cndmask_b32 v30, v30, v36
	v_dual_cndmask_b32 v36, v23, v34 :: v_dual_cndmask_b32 v23, v34, v23
	v_dual_cndmask_b32 v39, v14, v19 :: v_dual_cndmask_b32 v14, v19, v14
	v_mov_b32_e32 v19, 0x5410
	v_mov_b32_e32 v34, 0x7632
	v_cndmask_b32_e32 v40, v0, v16, vcc_lo
	v_cndmask_b32_e32 v0, v16, v0, vcc_lo
	v_permlanex16_b32 v16, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v19, vcc_lo
	v_cndmask_b32_e32 v19, 0x3276, v34, vcc_lo
	v_permlanex16_b32 v34, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v13, v20, v25, vcc_lo
	v_cndmask_b32_e32 v15, v25, v20, vcc_lo
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v9, v19, 8, v19
	v_cndmask_b32_e32 v20, v54, v26, vcc_lo
	v_dual_cndmask_b32 v21, v26, v54 :: v_dual_cndmask_b32 v26, v49, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v9, 0x760076, v9
	v_cndmask_b32_e32 v32, v37, v41, vcc_lo
	v_cndmask_b32_e32 v37, v41, v37, vcc_lo
	v_cndmask_b32_e32 v25, v45, v49, vcc_lo
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v9, v9, 4, v9
	v_permlanex16_b32 v41, v11, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v44, 0x5040504, v7
	v_and_b32_e32 v45, 0x7060706, v9
	v_permlanex16_b32 v19, v21, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v24, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v26, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v28, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v37, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v29, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v30, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v23, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v14, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v16, v8, v44
	v_perm_b32 v8, v16, v8, v45
	v_perm_b32 v9, v34, v10, v44
	v_perm_b32 v10, v34, v10, v45
	v_perm_b32 v11, v41, v12, v44
	v_perm_b32 v12, v41, v12, v45
	v_perm_b32 v13, v42, v15, v44
	v_perm_b32 v14, v42, v15, v45
	v_perm_b32 v15, v18, v17, v44
	v_perm_b32 v16, v18, v17, v45
	v_perm_b32 v17, v19, v20, v44
	v_perm_b32 v18, v19, v20, v45
	v_perm_b32 v19, v21, v22, v44
	v_perm_b32 v20, v21, v22, v45
	v_perm_b32 v21, v24, v25, v44
	v_perm_b32 v22, v24, v25, v45
	v_perm_b32 v23, v26, v27, v44
	v_perm_b32 v24, v26, v27, v45
	v_perm_b32 v25, v28, v32, v44
	v_perm_b32 v26, v28, v32, v45
	v_perm_b32 v27, v31, v38, v44
	v_perm_b32 v28, v31, v38, v45
	v_perm_b32 v29, v37, v35, v44
	v_perm_b32 v30, v37, v35, v45
	v_perm_b32 v31, v43, v33, v44
	v_perm_b32 v32, v43, v33, v45
	v_perm_b32 v33, v46, v36, v44
	v_perm_b32 v34, v46, v36, v45
	v_perm_b32 v35, v47, v39, v44
	v_perm_b32 v36, v47, v39, v45
	v_add_lshl_u32 v39, v4, v6, 1
	s_mov_b32 s2, s6
	v_perm_b32 v37, v0, v40, v44
	v_perm_b32 v38, v0, v40, v45
	v_add_lshl_u32 v0, v3, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v1, s[0:3], 0 offen
	buffer_store_b128 v[11:14], v1, s[0:3], 0 offen offset:256
	buffer_store_b128 v[15:18], v39, s[0:3], 0 offen
	v_add_lshl_u32 v1, v4, v5, 1
	v_add_lshl_u32 v5, v3, v5, 1
	v_add_lshl_u32 v4, v4, v2, 1
	v_add_lshl_u32 v2, v3, v2, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[0:3], 0 offen
	buffer_store_b128 v[23:26], v1, s[0:3], 0 offen
	buffer_store_b128 v[27:30], v5, s[0:3], 0 offen
	buffer_store_b128 v[31:34], v4, s[0:3], 0 offen
	buffer_store_b128 v[35:38], v2, s[0:3], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9808
; TotalNumSgprs: 37
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 37
; NumVGPRsForWavesPerEU: 256
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
