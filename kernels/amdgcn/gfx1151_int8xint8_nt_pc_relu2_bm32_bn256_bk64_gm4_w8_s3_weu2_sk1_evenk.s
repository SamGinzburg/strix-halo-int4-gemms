	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v42, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v41, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v43, 15, v0
	v_lshlrev_b32_e32 v56, 5, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v5, 56, v41
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 0xc0, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 31
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
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s27, s23
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s26, s22
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
	v_and_b32_e32 v1, 48, v42
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
	v_lshl_add_u32 v53, s10, 6, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s9, s11
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v54, s10, 7, v9
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
	s_lshl_b32 s28, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s10, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s29, s28, s10
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s14, s2, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s14, s10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v55, v3, v5, s2
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s29, s31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s31, v55
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, s4, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s31, s31, 64
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v5, s4, v10
	v_add_nc_u32_e32 v3, s4, v53
	v_add_nc_u32_e32 v4, s4, v54
	s_add_i32 s4, s4, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s31, v55
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v12, 0x80000000, v2, s3
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, 64, v2
	v_add_nc_u32_e32 v11, s4, v53
	v_add_nc_u32_e32 v23, s4, v54
	v_add_nc_u32_e32 v24, 64, v5
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v15, 0x80000000, v4, s3
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b64 v[7:8], v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v6, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v13, 0x80000000, v3, s3
	v_cndmask_b32_e64 v19, 0x80000000, v5, s3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v27, 0x80000000, v11, s2
	v_cndmask_b32_e64 v31, 0x80000000, v23, s2
	v_cndmask_b32_e64 v35, 0x80000000, v24, s2
	s_clause 0x3
	buffer_load_b128 v[3:6], v12, s[24:27], 0 offen
	buffer_load_b128 v[11:14], v13, s[24:27], 0 offen
	buffer_load_b128 v[15:18], v15, s[24:27], 0 offen
	buffer_load_b128 v[19:22], v19, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[39:40], v1, s[20:23], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[23:26], v2, s[24:27], 0 offen
	buffer_load_b128 v[27:30], v27, s[24:27], 0 offen
	buffer_load_b128 v[31:34], v31, s[24:27], 0 offen
	buffer_load_b128 v[35:38], v35, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 48, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v2, 48, v44
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v57, v41, v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v58, v42, v2
	v_and_b32_e32 v2, 48, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, 0, v57
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v42, 0, v58
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v1, v[7:8] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v42, v[3:6]
	s_waitcnt vmcnt(7)
	ds_store_b128 v42, v[11:14] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v42, v[15:18] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v42, v[19:22] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v1, v[39:40] offset:34816
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v42, v[23:26] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v42, v[27:30] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v42, v[31:34] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v42, v[35:38] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v45, v43, 6, v2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v1, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v46, 16, v45
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v49, 0x1c00, v1, v45
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v48, 32, v45
	v_xor_b32_e32 v47, 48, v45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v50, 16, v49
	v_xor_b32_e32 v52, 32, v49
	v_xor_b32_e32 v51, 48, v49
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
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
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v18, 0
	s_add_i32 s30, 0, 0x8000
	s_add_i32 s0, 0, 0x8800
	s_add_i32 s1, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr51
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_lshl_or_b32 v45, v43, 6, v2
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s33, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_and_or_b32 v49, 0x1c00, v56, v45
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v1, s4
	v_xor_b32_e32 v46, 16, v45
	v_xor_b32_e32 v48, 32, v45
	v_xor_b32_e32 v47, 48, v45
	v_xor_b32_e32 v50, 16, v49
	v_xor_b32_e32 v52, 32, v49
	v_xor_b32_e32 v51, 48, v49
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	s_add_i32 s31, s31, 64
	s_add_i32 s30, 0, 0x8000
	s_add_i32 s0, 0, 0x8800
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s33, s33, -3
	s_mov_b32 s34, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s6, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s6, s31, s6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s7, s6, s29
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v59, s6, v55
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v60, s7, v9
	v_add_nc_u32_e32 v61, s7, v53
	v_add_nc_u32_e32 v62, s7, v54
	v_add_nc_u32_e32 v63, s7, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[163:164], v59, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[91:94], v60, s[24:27], 0 offen
	buffer_load_b128 v[95:98], v61, s[24:27], 0 offen
	buffer_load_b128 v[99:102], v62, s[24:27], 0 offen
	buffer_load_b128 v[103:106], v63, s[24:27], 0 offen
	s_mov_b32 s6, s30
	s_mov_b32 s30, s0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v59, s6, v45
	v_add_nc_u32_e32 v60, s6, v46
	s_mov_b32 s0, s4
	v_add_nc_u32_e32 v61, s6, v48
	v_add_nc_u32_e32 v62, s6, v47
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v63, s0, v49
	v_add_nc_u32_e32 v64, s0, v50
	v_add_nc_u32_e32 v65, s0, v52
	v_add_nc_u32_e32 v66, s0, v51
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[75:78], v59
	ds_load_b128 v[107:110], v59 offset:1024
	ds_load_b128 v[111:114], v60
	ds_load_b128 v[115:118], v60 offset:1024
	ds_load_b128 v[119:122], v61
	ds_load_b128 v[123:126], v61 offset:1024
	ds_load_b128 v[127:130], v62
	ds_load_b128 v[131:134], v62 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[83:86], v63
	ds_load_b128 v[135:138], v63 offset:8192
	ds_load_b128 v[139:142], v64
	ds_load_b128 v[143:146], v64 offset:8192
	ds_load_b128 v[147:150], v65
	ds_load_b128 v[151:154], v65 offset:8192
	ds_load_b128 v[155:158], v66
	ds_load_b128 v[159:162], v66 offset:8192
	s_mov_b32 s4, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s34, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s1, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s34, s1, 0
	s_add_i32 s6, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s0, s34, 11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s1, s34, 14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s7, s0, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s1, s1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s0, s7, 0x8000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[59:66], v[83:86], v[75:78], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[135:138], v[75:78], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[83:86], v[107:110], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[135:138], v[107:110], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[139:142], v[111:114], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[143:146], v[111:114], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[139:142], v[115:118], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[143:146], v[115:118], v[83:90] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[59:66], v[147:150], v[119:122], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[151:154], v[119:122], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[147:150], v[123:126], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[151:154], v[123:126], v[83:90] neg_lo:[1,1,0]
	s_mov_b32 s5, s6
	v_wmma_i32_16x16x16_iu8 v[59:66], v[155:158], v[127:130], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[159:162], v[127:130], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[155:158], v[131:134], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[159:162], v[131:134], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
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
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v30, v30, v72 :: v_dual_add_nc_u32 v165, s7, v57
	v_dual_add_f32 v31, v31, v71 :: v_dual_add_nc_u32 v166, s1, v58
	v_add_f32_e32 v18, v18, v59
	v_dual_add_f32 v42, v42, v60 :: v_dual_add_f32 v41, v41, v61
	v_dual_add_f32 v40, v40, v62 :: v_dual_add_f32 v39, v39, v63
	v_dual_add_f32 v38, v38, v64 :: v_dual_add_f32 v37, v37, v65
	v_dual_add_f32 v36, v36, v66 :: v_dual_add_f32 v35, v35, v67
	v_dual_add_f32 v34, v34, v68 :: v_dual_add_f32 v33, v33, v69
	v_dual_add_f32 v32, v32, v70 :: v_dual_add_f32 v29, v29, v73
	v_dual_add_f32 v28, v28, v74 :: v_dual_add_f32 v27, v27, v75
	v_dual_add_f32 v26, v26, v76 :: v_dual_add_f32 v25, v25, v77
	v_dual_add_f32 v24, v24, v78 :: v_dual_add_f32 v23, v23, v79
	v_dual_add_f32 v22, v22, v80 :: v_dual_add_f32 v21, v21, v81
	v_dual_add_f32 v20, v20, v82 :: v_dual_add_f32 v19, v19, v83
	v_dual_add_f32 v17, v17, v84 :: v_dual_add_f32 v16, v16, v85
	v_dual_add_f32 v15, v15, v86 :: v_dual_add_f32 v14, v14, v87
	v_dual_add_f32 v13, v13, v88 :: v_dual_add_f32 v12, v12, v89
	v_add_f32_e32 v11, v11, v90
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(4)
	ds_store_b64 v165, v[163:164] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v166, v[91:94]
	s_waitcnt vmcnt(2)
	ds_store_b128 v166, v[95:98] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v166, v[99:102] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v166, v[103:106] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v56
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
	v_add_nc_u32_e32 v10, s4, v52
	v_add_nc_u32_e32 v2, s4, v50
	v_add_nc_u32_e32 v61, s4, v51
	v_add_nc_u32_e32 v3, s4, v49
	s_mov_b32 s4, 0
	ds_load_b128 v[77:80], v10
	ds_load_b128 v[81:84], v2 offset:8192
	ds_load_b128 v[85:88], v2
	ds_load_b128 v[89:92], v3 offset:8192
	ds_load_b128 v[93:96], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v4, s30, v45
	v_add_nc_u32_e32 v2, s30, v46
	ds_load_b128 v[97:100], v4 offset:1024
	ds_load_b128 v[69:72], v4
	v_add_nc_u32_e32 v53, s30, v48
	ds_load_b128 v[101:104], v2 offset:1024
	ds_load_b128 v[105:108], v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v2, s4
	v_mov_b32_e32 v6, s8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v62, s30, v47
	ds_load_b128 v[109:112], v53
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[113:116], v61
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v3, s5 :: v_dual_mov_b32 v4, s6
	v_mov_b32_e32 v5, s7
	v_dual_mov_b32 v7, s9 :: v_dual_mov_b32 v8, s10
	v_mov_b32_e32 v9, s11
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[117:120], v62
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[121:124], v10 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[125:128], v53 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[93:96], v[69:72], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[85:88], v[105:108], v[53:60] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[77:80], v[109:112], v[53:60] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[113:116], v[117:120], v[53:60] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v54, v55
	v_cvt_f32_i32_e32 v55, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v42, v42, v10
	v_add_f32_e32 v41, v41, v54
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v54, v57
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[129:132], v61 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[133:136], v62 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v56
	v_cvt_f32_i32_e32 v56, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v38, v38, v55 :: v_dual_add_f32 v39, v39, v54
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[61:68], v[89:92], v[69:72], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[93:96], v[97:100], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[89:92], v[97:100], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[81:84], v[105:108], v[61:68] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v57, v60
	v_wmma_i32_16x16x16_iu8 v[69:76], v[85:88], v[101:104], v[69:76] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v37, v37, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[2:9], v[81:84], v[101:104], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[121:124], v[109:112], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[77:80], v[125:128], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[121:124], v[125:128], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[129:132], v[117:120], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[113:116], v[133:136], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[129:132], v[133:136], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v55, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v40, v40, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v61
	v_cvt_f32_i32_e32 v54, v62
	v_cvt_f32_i32_e32 v56, v64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v33, v33, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v55, v68
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v35, v35, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v66
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v34, v34, v54
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v54, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v36, v36, v57
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v57, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v30, v30, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v32, v32, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v56, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v31, v31, v57
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v57, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v29, v29, v54
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v54, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v27, v27, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v56, v74
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v25, v25, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v76
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v26, v26, v57
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v57, v75
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v28, v28, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v55, v73
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v24, v24, v54 :: v_dual_add_f32 v17, v17, v3
	v_dual_add_f32 v22, v22, v56 :: v_dual_add_f32 v19, v19, v2
	v_dual_add_f32 v20, v20, v10 :: v_dual_add_f32 v15, v15, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v3, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v16, v16, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v5, v9
	v_cvt_f32_i32_e32 v6, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v23, v23, v55
	v_dual_add_f32 v21, v21, v57 :: v_dual_add_f32 v14, v14, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v11, v11, v5
	v_dual_add_f32 v13, v13, v3 :: v_dual_add_f32 v12, v12, v4
	v_add_f32_e32 v18, v18, v6
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v53, 0
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
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v6, s1, v52
	v_add_nc_u32_e32 v10, s1, v50
	v_add_nc_u32_e32 v49, s1, v49
	ds_load_b128 v[2:5], v6 offset:8192
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[77:80], v10 offset:8192
	ds_load_b128 v[81:84], v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v10, s0, v45
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[85:88], v49 offset:8192
	ds_load_b128 v[89:92], v49
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v46, s0, v46
	ds_load_b128 v[93:96], v10 offset:1024
	ds_load_b128 v[69:72], v10
	v_add_nc_u32_e32 v45, s0, v48
	ds_load_b128 v[105:108], v46 offset:1024
	ds_load_b128 v[109:112], v46
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v53, s1, v51
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v10, s0, v47
	ds_load_b128 v[97:100], v45 offset:1024
	ds_load_b128 v[101:104], v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v52, s11 :: v_dual_mov_b32 v51, s10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[113:116], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v50, s9 :: v_dual_mov_b32 v49, s8
	v_dual_mov_b32 v48, s7 :: v_dual_mov_b32 v47, s6
	v_dual_mov_b32 v46, s5 :: v_dual_mov_b32 v45, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[117:120], v53
	ds_load_b128 v[121:124], v53 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[125:128], v10 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[89:92], v[69:72], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[85:88], v[69:72], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[89:92], v[93:96], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[85:88], v[93:96], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[81:84], v[109:112], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[77:80], v[109:112], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[81:84], v[105:108], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[77:80], v[105:108], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[6:9], v[101:104], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[2:5], v[101:104], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[6:9], v[97:100], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[2:5], v[97:100], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[117:120], v[113:116], v[53:60] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[121:124], v[113:116], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[117:120], v[125:128], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[121:124], v[125:128], v[45:52] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v4, v53
	v_cvt_f32_i32_e32 v5, v54
	v_cvt_f32_i32_e32 v6, v55
	v_cvt_f32_i32_e32 v7, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v9, v58
	v_cvt_f32_i32_e32 v10, v59
	v_cvt_f32_i32_e32 v53, v60
	v_cvt_f32_i32_e32 v54, v61
	v_cvt_f32_i32_e32 v55, v62
	v_cvt_f32_i32_e32 v56, v63
	v_cvt_f32_i32_e32 v57, v64
	v_cvt_f32_i32_e32 v58, v65
	v_cvt_f32_i32_e32 v59, v66
	v_cvt_f32_i32_e32 v60, v67
	v_cvt_f32_i32_e32 v61, v68
	v_cvt_f32_i32_e32 v62, v69
	v_cvt_f32_i32_e32 v63, v70
	v_cvt_f32_i32_e32 v64, v71
	v_cvt_f32_i32_e32 v65, v72
	v_cvt_f32_i32_e32 v66, v73
	v_cvt_f32_i32_e32 v67, v74
	v_cvt_f32_i32_e32 v68, v75
	v_cvt_f32_i32_e32 v69, v76
	v_cvt_f32_i32_e32 v70, v45
	v_cvt_f32_i32_e32 v71, v46
	v_cvt_f32_i32_e32 v72, v47
	v_cvt_f32_i32_e32 v73, v48
	v_cvt_f32_i32_e32 v74, v49
	v_cvt_f32_i32_e32 v75, v50
	v_cvt_f32_i32_e32 v76, v51
	v_cvt_f32_i32_e32 v77, v52
.LBB0_11:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v2, s14, v43
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v3, s28, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v42, v5 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s4, s16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v9, v38, v9 :: v_dual_lshlrev_b32 v46, 1, v3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v45, 32, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v18, v4 :: v_dual_add_f32 v47, v36, v53
	v_dual_add_f32 v6, v41, v6 :: v_dual_add_f32 v49, v34, v55
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v3, v2, s[4:7], 0 offen
	buffer_load_u16 v2, v45, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s19, 0xffff
	s_mov_b32 s4, s18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v7, v40, v7
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v45, v46, s[4:7], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v46, 0xf0, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v48, v35, v54 :: v_dual_add_f32 v55, v28, v61
	v_add_f32_e32 v52, v31, v58
	v_dual_add_f32 v54, v29, v60 :: v_dual_add_f32 v61, v22, v67
	v_dual_add_f32 v58, v25, v64 :: v_dual_add_f32 v67, v15, v73
	v_add_f32_e32 v60, v23, v66
	v_add_f32_e32 v64, v19, v70
	v_dual_add_f32 v66, v16, v72 :: v_dual_mov_b32 v73, 0x5410
	v_add_f32_e32 v70, v12, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v18, v4, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v4, v46, 2, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v8, v39, v8 :: v_dual_add_f32 v51, v32, v57
	v_dual_add_f32 v10, v37, v10 :: v_dual_add_f32 v53, v30, v59
	v_dual_add_f32 v50, v33, v56 :: v_dual_add_f32 v57, v26, v63
	v_dual_add_f32 v56, v27, v62 :: v_dual_add_f32 v63, v20, v69
	v_dual_add_f32 v59, v24, v65 :: v_dual_add_f32 v62, v21, v68
	v_dual_add_f32 v65, v17, v71 :: v_dual_add_f32 v68, v14, v74
	v_add_f32_e32 v71, v11, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v5, s2
	v_cndmask_b32_e64 v34, v34, v49, s2
	v_cndmask_b32_e64 v49, v16, v66, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v16, v46, 1, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v69, v13, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v6, s2
	v_cndmask_b32_e64 v40, v40, v7, s2
	v_cndmask_b32_e64 v39, v39, v8, s2
	v_cndmask_b32_e64 v38, v38, v9, s2
	v_cndmask_b32_e64 v37, v37, v10, s2
	v_cndmask_b32_e64 v29, v29, v54, s2
	v_cndmask_b32_e64 v54, v11, v71, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v47, s2
	v_cndmask_b32_e64 v35, v35, v48, s2
	v_cndmask_b32_e64 v33, v33, v50, s2
	v_cndmask_b32_e64 v32, v32, v51, s2
	v_cndmask_b32_e64 v31, v31, v52, s2
	v_cndmask_b32_e64 v30, v30, v53, s2
	v_cndmask_b32_e64 v47, v19, v64, s2
	v_cndmask_b32_e64 v48, v17, v65, s2
	v_cndmask_b32_e64 v50, v15, v67, s2
	v_cndmask_b32_e64 v52, v13, v69, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v43, s15, v43
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v75, 1, v46
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s14, s15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v58, s2
	v_cndmask_b32_e64 v20, v20, v63, s2
	v_cndmask_b32_e64 v28, v28, v55, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v66, s1, s28, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v56, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v67, s15, 4, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v61, s2
	v_cndmask_b32_e64 v24, v24, v59, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v43, v66, v43, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v62, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v66, v66, v67, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v57, s2
	v_cndmask_b32_e64 v23, v23, v60, s2
	s_mov_b32 s0, 0x76543210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v44, 28, v44
	v_and_b32_e32 v72, 32, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v12, v70, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.h, 0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v14, v68, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add3_u32 v4, v4, v72, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.h, v1.h
	v_mov_b16_e32 v61.h, v1.h
	v_mov_b16_e32 v55.h, v1.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v4, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v16
	ds_load_b128 v[8:11], v16 offset:16
	ds_load_b128 v[12:15], v16 offset:512
	ds_load_b128 v[16:19], v16 offset:528
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v74, 0x7632
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v56.h, v1.h
	v_mov_b16_e32 v57.h, v1.h
	v_mov_b16_e32 v63.h, v1.h
	v_mov_b16_e32 v44.h, v1.h
	v_mov_b16_e32 v58.h, v1.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v45.h, v1.h
	v_mov_b16_e32 v60.h, v1.h
	v_mov_b16_e32 v59.h, v1.h
	v_mov_b16_e32 v69.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	v_mov_b16_e32 v64.h, v1.h
	v_mov_b16_e32 v68.h, v1.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v67, v4, v3
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v79, v11, v3
	v_mul_f32_e32 v70, v5, v3
	v_mul_f32_e32 v71, v6, v3
	v_dual_mul_f32 v72, v7, v3 :: v_dual_mul_f32 v5, v5, v2
	v_mul_f32_e32 v77, v9, v3
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v80, v12, v3 :: v_dual_mul_f32 v11, v11, v2
	v_mul_f32_e32 v82, v14, v3
	v_dual_mul_f32 v83, v15, v3 :: v_dual_mul_f32 v6, v6, v2
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v84, v16, v3 :: v_dual_mul_f32 v15, v15, v2
	v_mul_f32_e32 v85, v17, v3
	v_mul_f32_e32 v7, v7, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v42, v42, v70 :: v_dual_mul_f32 v31, v31, v84
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v75, v8, v3
	v_dual_mul_f32 v78, v10, v3 :: v_dual_mul_f32 v9, v9, v2
	v_dual_mul_f32 v81, v13, v3 :: v_dual_mul_f32 v4, v4, v2
	v_dual_mul_f32 v86, v18, v3 :: v_dual_mul_f32 v17, v17, v2
	v_dual_mul_f32 v3, v19, v3 :: v_dual_mul_f32 v10, v10, v2
	v_mul_f32_e32 v8, v8, v2
	v_dual_mul_f32 v12, v12, v2 :: v_dual_mul_f32 v41, v41, v71
	v_mul_f32_e32 v13, v13, v2
	v_mul_f32_e32 v14, v14, v2
	v_dual_mul_f32 v16, v16, v2 :: v_dual_mul_f32 v39, v39, v75
	v_dual_mul_f32 v18, v18, v2 :: v_dual_mul_f32 v35, v35, v80
	v_dual_mul_f32 v2, v19, v2 :: v_dual_mul_f32 v3, v28, v3
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v19, v76, v67
	v_dual_mul_f32 v40, v40, v72 :: v_dual_mul_f32 v37, v37, v78
	v_dual_mul_f32 v38, v38, v77 :: v_dual_mul_f32 v33, v33, v82
	v_dual_mul_f32 v30, v30, v85 :: v_dual_mul_f32 v11, v20, v11
	v_dual_mul_f32 v6, v25, v6 :: v_dual_mul_f32 v13, v48, v13
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_dual_max_f32 v20, 0, v42 :: v_dual_max_f32 v33, 0, v33
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v4, v27, v4 :: v_dual_mul_f32 v9, v22, v9
	v_dual_mul_f32 v12, v47, v12 :: v_dual_max_f32 v19, 0, v19
	v_dual_mul_f32 v2, v54, v2 :: v_dual_max_f32 v27, 0, v35
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v22, 0, v40 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v13, 0, v13
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v20, v20, v20 :: v_dual_mul_f32 v33, v33, v33
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v36, v36, v79 :: v_dual_mul_f32 v29, v29, v86
	v_dual_mul_f32 v34, v34, v81 :: v_dual_mul_f32 v7, v24, v7
	v_dual_mul_f32 v10, v21, v10 :: v_dual_mul_f32 v17, v52, v17
	v_dual_mul_f32 v14, v49, v14 :: v_dual_max_f32 v21, 0, v41
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v24, 0, v38 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v12, 0, v12 :: v_dual_mul_f32 v19, v19, v19
	v_dual_max_f32 v2, 0, v2 :: v_dual_mul_f32 v27, v27, v27
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v22, v22, v22 :: v_dual_mul_f32 v31, v31, v31
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v13, v13, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v20.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v32, v32, v83 :: v_dual_mul_f32 v5, v26, v5
	v_dual_mul_f32 v8, v23, v8 :: v_dual_mul_f32 v15, v50, v15
	v_dual_mul_f32 v16, v51, v16 :: v_dual_max_f32 v23, 0, v39
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v26, 0, v36 :: v_dual_max_f32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v28, 0, v34 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v21, v21, v21
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v24, v24, v24 :: v_dual_mul_f32 v29, v29, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v19.h
	v_mov_b16_e32 v61.l, v6.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v34, v2, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v2, 1, v1
	v_mov_b16_e32 v1.l, v22.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v18, v53, v18 :: v_dual_max_f32 v25, 0, v37
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v16, 0, v16 :: v_dual_mul_f32 v23, v23, v23
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v26, v26, v26 :: v_dual_mul_f32 v3, v3, v3
	v_dual_mul_f32 v12, v12, v12 :: v_dual_and_b32 v35, 1, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v55.l, v21.h
	v_add3_u32 v2, v20, v2, 0x7fff
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v24.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v18, 0, v18 :: v_dual_mul_f32 v25, v25, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v56.l, v23.h
	v_and_b32_e32 v36, 1, v55
	v_add3_u32 v19, v19, v35, 0x7fff
	v_and_b32_e32 v35, 1, v1
	v_mov_b16_e32 v1.l, v26.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v17, 0, v17
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v28, v28, v28 :: v_dual_mul_f32 v5, v5, v5
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v37, 1, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v57.l, v25.h
	v_add3_u32 v21, v21, v36, 0x7fff
	v_mov_b16_e32 v2.l, v19.h
	v_add3_u32 v19, v22, v20, 0x7fff
	v_and_b32_e32 v20, 1, v1
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v9, 0, v9
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v32, v32, v32 :: v_dual_mul_f32 v7, v7, v7
	v_dual_mul_f32 v10, v10, v10 :: v_dual_mul_f32 v17, v17, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v23, v37, 0x7fff
	v_mov_b16_e32 v19.l, v21.h
	v_mov_b16_e32 v1.l, v28.h
	v_add3_u32 v0, v26, v20, 0x7fff
	v_and_b32_e32 v38, 1, v57
	v_add3_u32 v21, v24, v35, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v30, v30, v30 :: v_dual_mul_f32 v9, v9, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.l, v10.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v25, v25, v38, 0x7fff
	v_mov_b16_e32 v21.l, v23.h
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v32.h
	v_mov_b16_e32 v44.l, v27.h
	v_mov_b16_e32 v58.l, v31.h
	v_mov_b16_e32 v65.l, v14.h
	v_dual_cndmask_b32 v22, v21, v2 :: v_dual_and_b32 v47, 1, v63
	v_mov_b16_e32 v0.l, v25.h
	v_cndmask_b32_e32 v2, v2, v21, vcc_lo
	v_cndmask_b32_e32 v21, 0x1054, v73, vcc_lo
	v_dual_cndmask_b32 v23, 0x3276, v74 :: v_dual_and_b32 v24, 1, v1
	v_mov_b16_e32 v1.l, v30.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v16, v16, v16 :: v_dual_and_b32 v41, 1, v58
	v_dual_mul_f32 v18, v18, v18 :: v_dual_and_b32 v39, 1, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v49, 1, v65
	v_dual_cndmask_b32 v25, v0, v19 :: v_dual_cndmask_b32 v0, v19, v0
	v_permlanex16_b32 v19, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v21, 8, v21
	v_lshl_or_b32 v21, v23, 8, v23
	v_add3_u32 v23, v32, v24, 0x7fff
	v_and_b32_e32 v24, 1, v1
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v11, 0, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.l, v33.h
	v_add3_u32 v27, v27, v39, 0x7fff
	v_add3_u32 v31, v31, v41, 0x7fff
	v_add3_u32 v20, v28, v20, 0x7fff
	v_add3_u32 v24, v30, v24, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v4, v4, v4 :: v_dual_mul_f32 v11, v11, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.l, v27.h
	v_mov_b16_e32 v1.l, v3.h
	v_mov_b16_e32 v24.l, v31.h
	v_and_b32_e32 v40, 1, v45
	v_mov_b16_e32 v60.l, v4.h
	v_mov_b16_e32 v59.l, v29.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v27, v24, v20 :: v_dual_and_b32 v26, 1, v1
	v_add3_u32 v33, v33, v40, 0x7fff
	v_mov_b16_e32 v1.l, v5.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v15, 0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v3, v26, 0x7fff
	v_mov_b16_e32 v23.l, v33.h
	v_and_b32_e32 v44, 1, v60
	v_and_b32_e32 v26, 1, v1
	v_and_b32_e32 v2, 0x540054, v2
	v_and_b32_e32 v21, 0x760076, v21
	v_mov_b16_e32 v1.l, v7.h
	v_add3_u32 v4, v4, v44, 0x7fff
	v_add3_u32 v26, v5, v26, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_mul_f32 v15, v15, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v18.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v26.l, v4.h
	v_and_b32_e32 v42, 1, v59
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v21, v21, 4, v21
	v_and_b32_e32 v28, 1, v1
	v_mov_b16_e32 v1.l, v9.h
	v_add3_u32 v29, v29, v42, 0x7fff
	v_mov_b16_e32 v62.l, v8.h
	v_and_b32_e32 v45, 1, v61
	v_dual_cndmask_b32 v20, v20, v24 :: v_dual_and_b32 v51, 1, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v3.l, v29.h
	v_and_b32_e32 v24, 0x5040504, v2
	v_and_b32_e32 v21, 0x7060706, v21
	v_and_b32_e32 v30, 1, v1
	v_mov_b16_e32 v1.l, v11.h
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v46, 1, v62
	v_add3_u32 v6, v6, v45, 0x7fff
	v_cndmask_b32_e32 v29, v3, v23, vcc_lo
	v_cndmask_b32_e32 v23, v23, v3, vcc_lo
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v19, v22, v24
	v_perm_b32 v3, v19, v22, v21
	v_and_b32_e32 v19, 1, v1
	v_mov_b16_e32 v1.l, v13.h
	v_perm_b32 v4, v0, v25, v24
	v_perm_b32 v5, v0, v25, v21
	v_add3_u32 v0, v7, v28, 0x7fff
	v_add3_u32 v8, v8, v46, 0x7fff
	v_mov_b16_e32 v0.l, v6.h
	v_permlanex16_b32 v22, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v20, v27, v24
	v_perm_b32 v7, v20, v27, v21
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v15.h
	v_add3_u32 v23, v9, v30, 0x7fff
	v_add3_u32 v10, v10, v47, 0x7fff
	v_mov_b16_e32 v23.l, v8.h
	v_perm_b32 v8, v22, v29, v24
	v_perm_b32 v9, v22, v29, v21
	v_and_b32_e32 v22, 1, v1
	v_mov_b16_e32 v1.l, v17.h
	v_add3_u32 v11, v11, v19, 0x7fff
	v_mov_b16_e32 v11.l, v10.h
	v_dual_cndmask_b32 v19, v23, v26 :: v_dual_cndmask_b32 v10, v26, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v23, 1, v1
	v_mov_b16_e32 v1.l, v34.h
	v_mov_b16_e32 v64.l, v12.h
	v_mov_b16_e32 v68.l, v16.h
	v_add3_u32 v14, v14, v49, 0x7fff
	v_add3_u32 v18, v18, v51, 0x7fff
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v15, v15, v22, 0x7fff
	v_add3_u32 v13, v13, v20, 0x7fff
	v_mov_b16_e32 v15.l, v14.h
	v_add3_u32 v14, v17, v23, 0x7fff
	v_add3_u32 v1, v34, v1, 0x7fff
	v_mov_b16_e32 v1.l, v18.h
	v_and_b32_e32 v48, 1, v64
	v_and_b32_e32 v50, 1, v68
	v_permlanex16_b32 v20, v10, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v17, v15, v1, vcc_lo
	v_add3_u32 v12, v12, v48, 0x7fff
	v_cndmask_b32_e32 v1, v1, v15, vcc_lo
	v_add3_u32 v16, v16, v50, 0x7fff
	v_perm_b32 v10, v20, v19, v24
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v13.l, v12.h
	v_cndmask_b32_e32 v12, v0, v11, vcc_lo
	v_mov_b16_e32 v14.l, v16.h
	v_cndmask_b32_e32 v0, v11, v0, vcc_lo
	v_perm_b32 v11, v20, v19, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v16, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v12, v13, v14, vcc_lo
	v_cndmask_b32_e32 v18, v14, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v13, v16, v0, v21
	v_permlanex16_b32 v19, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v16, v0, v24
	v_perm_b32 v16, v17, v1, v24
	v_perm_b32 v17, v17, v1, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v14, v19, v18, v24
	v_perm_b32 v15, v19, v18, v21
	s_clause 0x3
	buffer_store_b128 v[2:5], v43, s[12:15], 0 offen
	buffer_store_b128 v[6:9], v43, s[12:15], 0 offen offset:256
	buffer_store_b128 v[10:13], v66, s[12:15], 0 offen
	buffer_store_b128 v[14:17], v66, s[12:15], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_inst_pref_size 48
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 167
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6096
; TotalNumSgprs: 37
; NumVgprs: 167
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     167
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
