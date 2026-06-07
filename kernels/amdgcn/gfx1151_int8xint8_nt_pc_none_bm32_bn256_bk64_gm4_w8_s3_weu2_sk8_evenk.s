	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
	v_lshlrev_b32_e32 v23, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v42, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 2, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v5, 56, v42
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 0xc0, v2
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
	s_mov_b64 s[20:21], s[18:19]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s19, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s23, s19
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
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
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s10, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	v_readfirstlane_b32 s9, v1
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v1, 48, v23
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[9:10], null, s10, v2, v[1:2]
	v_mad_u64_u32 v[10:11], null, s10, v4, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v52, s10, 6, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s9, s11
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v53, s10, 7, v9
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
	s_lshl_b32 s26, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s10, 0x1ff
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s29, s26, s10
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s24, s2, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x1ff
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s24, s10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v54, v3, v5, s2
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s29, s31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x3ff
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s31, v54
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, s4, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_addk_i32 s31, 0x200
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v5, s4, v10
	v_add_nc_u32_e32 v3, s4, v52
	v_add_nc_u32_e32 v4, s4, v53
	s_addk_i32 s4, 0x200
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s31, v54
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v12, 0x80000000, v2, s3
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, 0x200, v2
	v_add_nc_u32_e32 v11, s4, v52
	v_add_nc_u32_e32 v24, s4, v53
	v_add_nc_u32_e32 v25, 0x200, v5
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v15, 0x80000000, v4, s3
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b64 v[7:8], v1, s[16:19], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v6, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v13, 0x80000000, v3, s3
	v_cndmask_b32_e64 v19, 0x80000000, v5, s3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v28, 0x80000000, v11, s2
	v_cndmask_b32_e64 v32, 0x80000000, v24, s2
	v_cndmask_b32_e64 v36, 0x80000000, v25, s2
	s_clause 0x3
	buffer_load_b128 v[3:6], v12, s[20:23], 0 offen
	buffer_load_b128 v[11:14], v13, s[20:23], 0 offen
	buffer_load_b128 v[15:18], v15, s[20:23], 0 offen
	buffer_load_b128 v[19:22], v19, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[40:41], v1, s[16:19], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[24:27], v2, s[20:23], 0 offen
	buffer_load_b128 v[28:31], v28, s[20:23], 0 offen
	buffer_load_b128 v[32:35], v32, s[20:23], 0 offen
	buffer_load_b128 v[36:39], v36, s[20:23], 0 offen
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 48, v0
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x5ff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v1, 48, v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v55, v42, v2
	v_and_b32_e32 v2, 48, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v56, v23, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v23, 15, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v43, 0, v55
	v_lshlrev_b32_e32 v1, 5, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v44, 0, v56
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v43, v[7:8] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v44, v[3:6]
	s_waitcnt vmcnt(7)
	ds_store_b128 v44, v[11:14] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v44, v[15:18] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v44, v[19:22] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v43, v[40:41] offset:34816
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v44, v[24:27] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v44, v[28:31] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v44, v[32:35] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v44, v[36:39] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v44, v23, 6, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v48, 0x1c00, v1, v44
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v45, 16, v44
	v_xor_b32_e32 v47, 32, v44
	v_xor_b32_e32 v46, 48, v44
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v49, 16, v48
	v_xor_b32_e32 v51, 32, v48
	v_xor_b32_e32 v50, 48, v48
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v18, 0
	s_add_i32 s30, 0, 0x8000
	s_add_i32 s27, 0, 0x8800
	s_add_i32 s28, 0, 0x4000
	s_branch .LBB0_6
.LBB0_3:
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr50
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_lshl_or_b32 v44, v23, 6, v2
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s33, s5, 9
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_and_or_b32 v48, 0x1c00, v1, v44
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v1, s4
	v_xor_b32_e32 v45, 16, v44
	v_xor_b32_e32 v47, 32, v44
	v_xor_b32_e32 v46, 48, v44
	v_xor_b32_e32 v49, 16, v48
	v_xor_b32_e32 v51, 32, v48
	v_xor_b32_e32 v50, 48, v48
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	s_addk_i32 s31, 0x200
	s_add_i32 s30, 0, 0x8000
	s_add_i32 s27, 0, 0x8800
	s_add_i32 s28, 0, 0x4000
	s_add_i32 s33, s33, -3
	s_mov_b32 s34, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s6, s5, 9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s8, s34, 1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s6, s31, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s7, s6, s29
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v57, s6, v54
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v58, s7, v9
	v_add_nc_u32_e32 v59, s7, v52
	v_add_nc_u32_e32 v60, s7, v53
	v_add_nc_u32_e32 v61, s7, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[161:162], v57, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[89:92], v58, s[20:23], 0 offen
	buffer_load_b128 v[93:96], v59, s[20:23], 0 offen
	buffer_load_b128 v[97:100], v60, s[20:23], 0 offen
	buffer_load_b128 v[101:104], v61, s[20:23], 0 offen
	s_mov_b32 s6, s30
	s_mov_b32 s7, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v57, s6, v44
	v_add_nc_u32_e32 v58, s6, v45
	v_add_nc_u32_e32 v59, s6, v47
	v_add_nc_u32_e32 v60, s6, v46
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v61, s7, v48
	v_add_nc_u32_e32 v62, s7, v49
	v_add_nc_u32_e32 v63, s7, v51
	v_add_nc_u32_e32 v64, s7, v50
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[73:76], v57
	ds_load_b128 v[105:108], v57 offset:1024
	ds_load_b128 v[109:112], v58
	ds_load_b128 v[113:116], v58 offset:1024
	ds_load_b128 v[117:120], v59
	ds_load_b128 v[121:124], v59 offset:1024
	ds_load_b128 v[125:128], v60
	ds_load_b128 v[129:132], v60 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[81:84], v61
	ds_load_b128 v[133:136], v61 offset:8192
	ds_load_b128 v[137:140], v62
	ds_load_b128 v[141:144], v62 offset:8192
	ds_load_b128 v[145:148], v63
	ds_load_b128 v[149:152], v63 offset:8192
	ds_load_b128 v[153:156], v64
	ds_load_b128 v[157:160], v64 offset:8192
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s8, 2
	s_mov_b32 s4, s28
	s_cselect_b32 s34, s8, 0
	s_add_i32 s6, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s7, s34, 11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s8, s34, 14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s7, s7, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s28, s8, 0
	s_mov_b32 s30, s27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s27, s7, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s33
	s_mov_b32 s5, s6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[133:136], v[73:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[81:84], v[105:108], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[133:136], v[105:108], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[137:140], v[109:112], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[141:144], v[109:112], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[137:140], v[113:116], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[141:144], v[113:116], v[81:88] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[145:148], v[117:120], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[149:152], v[117:120], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[145:148], v[121:124], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[149:152], v[121:124], v[81:88] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[153:156], v[125:128], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[157:160], v[125:128], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[153:156], v[129:132], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[157:160], v[129:132], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
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
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v28, v28, v73 :: v_dual_add_nc_u32 v163, s7, v55
	v_dual_add_f32 v31, v31, v70 :: v_dual_add_nc_u32 v164, s28, v56
	v_dual_add_f32 v18, v18, v57 :: v_dual_add_f32 v43, v43, v58
	v_dual_add_f32 v42, v42, v59 :: v_dual_add_f32 v41, v41, v60
	v_dual_add_f32 v40, v40, v61 :: v_dual_add_f32 v39, v39, v62
	v_dual_add_f32 v38, v38, v63 :: v_dual_add_f32 v37, v37, v64
	v_dual_add_f32 v36, v36, v65 :: v_dual_add_f32 v35, v35, v66
	v_dual_add_f32 v34, v34, v67 :: v_dual_add_f32 v33, v33, v68
	v_add_f32_e32 v32, v32, v69
	v_dual_add_f32 v30, v30, v71 :: v_dual_add_f32 v29, v29, v72
	v_dual_add_f32 v27, v27, v74 :: v_dual_add_f32 v26, v26, v75
	v_dual_add_f32 v25, v25, v76 :: v_dual_add_f32 v24, v24, v77
	v_dual_add_f32 v22, v22, v78 :: v_dual_add_f32 v21, v21, v79
	v_dual_add_f32 v20, v20, v80 :: v_dual_add_f32 v19, v19, v81
	v_dual_add_f32 v17, v17, v82 :: v_dual_add_f32 v16, v16, v83
	v_dual_add_f32 v15, v15, v84 :: v_dual_add_f32 v14, v14, v85
	v_dual_add_f32 v13, v13, v86 :: v_dual_add_f32 v12, v12, v87
	v_add_f32_e32 v11, v11, v88
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(4)
	ds_store_b64 v163, v[161:162] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v164, v[89:92]
	s_waitcnt vmcnt(2)
	ds_store_b128 v164, v[93:96] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v164, v[97:100] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v164, v[101:104] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v9, s4, v51
	v_add_nc_u32_e32 v1, s4, v49
	v_add_nc_u32_e32 v10, s4, v50
	v_add_nc_u32_e32 v2, s4, v48
	s_mov_b32 s4, 0
	ds_load_b128 v[76:79], v9
	ds_load_b128 v[80:83], v1 offset:8192
	ds_load_b128 v[84:87], v1
	ds_load_b128 v[88:91], v2 offset:8192
	ds_load_b128 v[92:95], v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s30, v44
	v_add_nc_u32_e32 v1, s30, v45
	ds_load_b128 v[96:99], v3 offset:1024
	ds_load_b128 v[68:71], v3
	v_add_nc_u32_e32 v52, s30, v47
	ds_load_b128 v[100:103], v1 offset:1024
	ds_load_b128 v[104:107], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v1, s4
	v_dual_mov_b32 v5, s8 :: v_dual_add_nc_u32 v60, s30, v46
	v_mov_b32_e32 v7, s10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[108:111], v52
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[112:115], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v6, s9
	v_mov_b32_e32 v8, s11
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[116:119], v60
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[120:123], v9 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[124:127], v52 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[128:131], v10 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[132:135], v60 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[92:95], v[68:71], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[88:91], v[68:71], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[92:95], v[96:99], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[84:87], v[104:107], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[80:83], v[104:107], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[88:91], v[96:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[84:87], v[100:103], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[76:79], v[108:111], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[120:123], v[108:111], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[80:83], v[100:103], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[76:79], v[124:127], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[112:115], v[116:119], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[128:131], v[116:119], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[120:123], v[124:127], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[112:115], v[132:135], v[68:75] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v53
	v_cvt_f32_i32_e32 v10, v54
	v_cvt_f32_i32_e32 v53, v57
	v_cvt_f32_i32_e32 v54, v58
	v_wmma_i32_16x16x16_iu8 v[1:8], v[128:131], v[132:135], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v43, v43, v9 :: v_dual_add_f32 v42, v42, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v55
	v_cvt_f32_i32_e32 v10, v56
	v_cvt_f32_i32_e32 v55, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v39, v39, v53 :: v_dual_add_f32 v38, v38, v54
	v_dual_add_f32 v41, v41, v9 :: v_dual_add_f32 v40, v40, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v37, v37, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v61
	v_cvt_f32_i32_e32 v54, v63
	v_cvt_f32_i32_e32 v55, v64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v36, v36, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v65
	v_cvt_f32_i32_e32 v53, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v35, v35, v10
	v_dual_add_f32 v33, v33, v54 :: v_dual_add_f32 v32, v32, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v66
	v_cvt_f32_i32_e32 v55, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v31, v31, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v34, v34, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v67
	v_cvt_f32_i32_e32 v54, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v27, v27, v55 :: v_dual_add_f32 v26, v26, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v75
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v30, v30, v10 :: v_dual_add_f32 v29, v29, v53
	v_add_f32_e32 v28, v28, v54
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v71
	v_cvt_f32_i32_e32 v53, v72
	v_cvt_f32_i32_e32 v54, v73
	v_cvt_f32_i32_e32 v55, v74
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v20, v20, v9 :: v_dual_add_f32 v17, v17, v2
	v_dual_add_f32 v19, v19, v1 :: v_dual_add_f32 v16, v16, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v15, v15, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v5, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v25, v25, v10 :: v_dual_add_f32 v24, v24, v53
	v_dual_add_f32 v22, v22, v54 :: v_dual_add_f32 v21, v21, v55
	v_dual_add_f32 v14, v14, v1 :: v_dual_add_f32 v13, v13, v2
	v_dual_add_f32 v12, v12, v3 :: v_dual_add_f32 v11, v11, v4
	v_add_f32_e32 v18, v18, v5
.LBB0_8:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
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
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, s28, v51
	v_add_nc_u32_e32 v2, s28, v49
	v_add_nc_u32_e32 v4, s28, v48
	ds_load_b128 v[68:71], v1 offset:8192
	ds_load_b128 v[72:75], v1
	ds_load_b128 v[76:79], v2 offset:8192
	ds_load_b128 v[80:83], v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s27, v44
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[84:87], v4 offset:8192
	ds_load_b128 v[88:91], v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v4, s27, v45
	ds_load_b128 v[92:95], v1 offset:1024
	ds_load_b128 v[60:63], v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v3, s28, v50
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v2, s27, v47
	v_add_nc_u32_e32 v1, s27, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v51, s11
	v_mov_b32_e32 v45, s5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[104:107], v4 offset:1024
	ds_load_b128 v[108:111], v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v47, s7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[96:99], v2 offset:1024
	ds_load_b128 v[100:103], v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v50, s10 :: v_dual_mov_b32 v49, s9
	v_mov_b32_e32 v48, s8
	v_mov_b32_e32 v46, s6
	v_mov_b32_e32 v44, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[112:115], v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[116:119], v3
	ds_load_b128 v[120:123], v3 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[124:127], v1 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[88:91], v[60:63], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[84:87], v[60:63], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[88:91], v[92:95], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[84:87], v[92:95], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[80:83], v[108:111], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[76:79], v[108:111], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[80:83], v[104:107], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[76:79], v[104:107], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[72:75], v[100:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[68:71], v[100:103], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[72:75], v[96:99], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[68:71], v[96:99], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[116:119], v[112:115], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[120:123], v[112:115], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[116:119], v[124:127], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[120:123], v[124:127], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v52
	v_cvt_f32_i32_e32 v10, v53
	v_cvt_f32_i32_e32 v52, v54
	v_cvt_f32_i32_e32 v53, v55
	v_cvt_f32_i32_e32 v54, v56
	v_cvt_f32_i32_e32 v55, v57
	v_cvt_f32_i32_e32 v56, v58
	v_cvt_f32_i32_e32 v57, v59
	v_cvt_f32_i32_e32 v58, v60
	v_cvt_f32_i32_e32 v59, v61
	v_cvt_f32_i32_e32 v60, v62
	v_cvt_f32_i32_e32 v61, v63
	v_cvt_f32_i32_e32 v62, v64
	v_cvt_f32_i32_e32 v63, v65
	v_cvt_f32_i32_e32 v64, v66
	v_cvt_f32_i32_e32 v65, v67
	v_cvt_f32_i32_e32 v66, v44
	v_cvt_f32_i32_e32 v67, v45
	v_cvt_f32_i32_e32 v68, v46
	v_cvt_f32_i32_e32 v69, v47
	v_cvt_f32_i32_e32 v70, v48
	v_cvt_f32_i32_e32 v71, v49
	v_cvt_f32_i32_e32 v72, v50
	v_cvt_f32_i32_e32 v73, v51
.LBB0_10:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v23, s24, v23
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s12
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v1, v18, v1 :: v_dual_lshlrev_b32 v44, 1, v23
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	v_or_b32_e32 v23, s26, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v8, v37, v8 :: v_dual_add_f32 v49, v32, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v45, 32, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v40, v5 :: v_dual_lshlrev_b32 v46, 1, v23
	v_dual_add_f32 v10, v35, v10 :: v_dual_add_f32 v47, v34, v52
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v52, v29, v57
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v54, v27, v59 :: v_dual_add_f32 v57, v24, v62
	v_dual_add_f32 v2, v43, v2 :: v_dual_add_f32 v3, v42, v3
	v_dual_add_f32 v48, v33, v53 :: v_dual_add_f32 v51, v30, v56
	v_dual_add_f32 v50, v31, v55 :: v_dual_add_f32 v53, v28, v58
	v_dual_add_f32 v56, v25, v61 :: v_dual_add_f32 v61, v19, v66
	v_dual_add_f32 v58, v22, v63 :: v_dual_add_f32 v59, v21, v64
	v_dual_add_f32 v62, v17, v67 :: v_dual_add_f32 v63, v16, v68
	v_dual_add_f32 v64, v15, v69 :: v_dual_add_f32 v67, v12, v72
	v_dual_add_f32 v66, v13, v71 :: v_dual_and_b32 v69, 0xf0, v0
	v_dual_add_f32 v68, v11, v73 :: v_dual_and_b32 v71, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v57, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v41, v4 :: v_dual_add_f32 v7, v38, v7
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_bfe_i32 v72, v0, 0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v2, s2
	v_cndmask_b32_e64 v42, v42, v3, s2
	v_cndmask_b32_e64 v28, v28, v53, s2
	v_cndmask_b32_e64 v53, v19, v61, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v3, 5, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v55, v26, v60 :: v_dual_add_f32 v60, v20, v65
	v_add_f32_e32 v65, v14, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v18, v1, s2
	v_cndmask_b32_e64 v41, v41, v4, s2
	v_cndmask_b32_e64 v22, v22, v58, s2
	v_cndmask_b32_e64 v58, v13, v66, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v13, v69, 1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v50, s2
	v_cndmask_b32_e64 v50, v27, v54, s2
	v_cndmask_b32_e64 v54, v17, v62, s2
	v_cndmask_b32_e64 v57, v14, v65, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v39, v6 :: v_dual_add_f32 v9, v36, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v10, s2
	v_cndmask_b32_e64 v48, v33, v48, s2
	v_cndmask_b32_e64 v32, v32, v49, s2
	v_cndmask_b32_e64 v49, v29, v52, s2
	v_cndmask_b32_e64 v36, v36, v9, s2
	v_cndmask_b32_e64 v52, v21, v59, s2
	v_cndmask_b32_e64 v20, v20, v60, s2
	v_cndmask_b32_e64 v59, v12, v67, s2
	v_cndmask_b32_e64 v60, v11, v68, s2
	v_cndmask_b32_e64 v40, v40, v5, s2
	v_cndmask_b32_e64 v39, v39, v6, s2
	v_cndmask_b32_e64 v38, v38, v7, s2
	v_cndmask_b32_e64 v37, v37, v8, s2
	v_cndmask_b32_e64 v30, v30, v51, s2
	v_cndmask_b32_e64 v26, v26, v55, s2
	v_cndmask_b32_e64 v51, v25, v56, s2
	v_cndmask_b32_e64 v55, v16, v63, s2
	v_cndmask_b32_e64 v56, v15, v64, s2
	v_cndmask_b32_e64 v47, v34, v47, s2
	s_mov_b32 s2, 0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v44
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v73, 2, v0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v2, 2, v69
	v_and_b32_e32 v70, 14, v0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s24, s25, v[23:24]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_and_b32_e32 v1, 0x3f8, v73
	v_and_b32_e32 v4, 0x840, v72
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_add3_u32 v2, 0, v2, v3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v3, v4, v1
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v2, v70, 1, v2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v46
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v14, v70, 11, v3
	v_lshlrev_b64 v[17:18], 2, v[0:1]
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v2, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v13
	ds_load_b128 v[5:8], v13 offset:16
	ds_load_b128 v[9:12], v13 offset:512
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v33, vcc_lo, s0, v17
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v17, 16, v45
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v61, v14, 8, 0
	v_xad_u32 v62, v14, 16, 0
	v_xad_u32 v63, v14, 24, 0
	v_xad_u32 v64, v14, 32, 0
	v_xad_u32 v65, v14, 40, 0
	v_xad_u32 v66, v14, 48, 0
	v_xad_u32 v67, v14, 56, 0
	v_add_co_ci_u32_e64 v34, null, s1, v18, vcc_lo
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v82, v3, v17
	v_dual_mul_f32 v25, v4, v19 :: v_dual_add_nc_u32 v46, 0, v14
	ds_load_b128 v[13:16], v13 offset:528
	v_mul_f32_e32 v18, v1, v19
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v68, v9, v19
	v_dual_mul_f32 v73, v11, v19 :: v_dual_mul_f32 v88, v9, v17
	v_dual_mul_f32 v80, v1, v17 :: v_dual_mul_f32 v21, v2, v19
	v_mul_f32_e32 v27, v5, v19
	v_dual_mul_f32 v72, v10, v19 :: v_dual_mul_f32 v83, v4, v17
	v_mul_f32_e32 v81, v2, v17
	v_mul_f32_e32 v87, v8, v17
	v_dual_mul_f32 v89, v10, v17 :: v_dual_mul_f32 v2, v28, v80
	v_mul_f32_e32 v23, v3, v19
	v_mul_f32_e32 v85, v6, v17
	v_dual_mul_f32 v90, v11, v17 :: v_dual_mul_f32 v29, v6, v19
	v_dual_mul_f32 v45, v8, v19 :: v_dual_mul_f32 v84, v5, v17
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v76, v13, v19
	v_mul_f32_e32 v77, v14, v19
	v_mul_f32_e32 v78, v15, v19
	v_dual_mul_f32 v75, v12, v19 :: v_dual_mul_f32 v86, v7, v17
	v_dual_mul_f32 v91, v12, v17 :: v_dual_mul_f32 v8, v51, v83
	v_dual_mul_f32 v79, v16, v19 :: v_dual_mul_f32 v92, v13, v17
	v_dual_mul_f32 v44, v7, v19 :: v_dual_mul_f32 v93, v14, v17
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v10, v24, v84
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v94, v15, v17 :: v_dual_mul_f32 v1, v74, v18
	v_dual_mul_f32 v95, v16, v17 :: v_dual_mul_f32 v18, v53, v88
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v17, v36, v68 :: v_dual_mul_f32 v12, v22, v85
	v_dual_mul_f32 v3, v43, v21 :: v_dual_mul_f32 v14, v52, v86
	v_dual_mul_f32 v9, v40, v27 :: v_dual_mul_f32 v4, v50, v81
	v_dual_mul_f32 v19, v35, v72 :: v_dual_mul_f32 v6, v26, v82
	v_dual_mul_f32 v7, v41, v25 :: v_dual_mul_f32 v16, v20, v87
	v_mul_f32_e32 v20, v54, v89
	v_dual_mul_f32 v5, v42, v23 :: v_dual_mul_f32 v22, v55, v90
	v_dual_mul_f32 v21, v47, v73 :: v_dual_mul_f32 v26, v57, v92
	v_dual_mul_f32 v11, v39, v29 :: v_dual_mul_f32 v24, v56, v91
	v_dual_mul_f32 v23, v48, v75 :: v_dual_mul_f32 v28, v58, v93
	v_mul_f32_e32 v25, v32, v76
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v13, v38, v44
	v_dual_mul_f32 v15, v37, v45 :: v_dual_mul_f32 v32, v60, v95
	v_mul_f32_e32 v27, v31, v77
	v_mul_f32_e32 v29, v30, v78
	v_dual_mul_f32 v31, v49, v79 :: v_dual_mul_f32 v30, v59, v94
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b64 v46, v[1:2], v[17:18] offset1:2
	ds_store_2addr_stride64_b64 v61, v[3:4], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v62, v[5:6], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v63, v[7:8], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v64, v[9:10], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v65, v[11:12], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v66, v[13:14], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v67, v[15:16], v[31:32] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v36, v[33:34], off
	v_lshlrev_b32_e32 v1, 3, v69
	v_lshlrev_b32_e32 v2, 2, v70
	v_lshlrev_b32_e32 v3, 6, v71
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
	v_lshl_add_u32 v33, s25, 4, v0
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_vgpr, 165
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8348
; TotalNumSgprs: 37
; NumVgprs: 165
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.kd
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
