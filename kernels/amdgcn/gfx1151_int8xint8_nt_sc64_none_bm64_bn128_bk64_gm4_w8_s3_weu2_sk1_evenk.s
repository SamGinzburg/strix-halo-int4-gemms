	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[30:31], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v4, 4, v0
	s_load_b256 s[20:27], s[0:1], 0x0
	v_lshrrev_b32_e32 v2, 2, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s31, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s30, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s5, s5, 2
	s_mov_b64 s[16:17], s[22:23]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s5
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s19, s23
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s18, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s7, s6, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s6, s6, s5
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s8, s9, s7
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s6
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s8, s8, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s6, s2
	s_abs_i32 s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s9
	s_sub_i32 s11, 0, s9
	v_rcp_iflag_f32_e32 v1, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s10, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s10, s10, 0x4f7ffffe
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[9:10], null, s4, v2, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s10
	s_mul_i32 s11, s11, s10
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v71, s4, 6, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s5, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s5
	s_mul_hi_u32 s5, s6, s10
	s_xor_b32 s10, s2, s8
	s_mul_i32 s11, s5, s9
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s5, 1
	s_sub_i32 s12, s6, s9
	s_cmp_ge_u32 s6, s9
	s_cselect_b32 s5, s11, s5
	s_cselect_b32 s6, s12, s6
	s_add_i32 s11, s5, 1
	s_cmp_ge_u32 s6, s9
	s_mov_b64 s[12:13], s[26:27]
	s_cselect_b32 s5, s11, s5
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s14, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s10
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s6, s5, s8
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s30, s5, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s4, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s7
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s15, s30, s4
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s2, s6, 31
.Ltmp15:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[10:11], null, s33, s4, v[9:10]
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s2, s2, 26
	s_mov_b32 s4, 0
	s_add_i32 s5, s6, s2
.Ltmp17:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s6, 63
	s_cselect_b32 s2, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s3, s15, s14
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s14, v10
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0x7f
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, s3, v9
	v_add_nc_u32_e32 v3, s3, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s14, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v5, s34, v10
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v6, 0x80000000, v2, s2
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, 64, v2
	v_add_nc_u32_e32 v7, 64, v3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b128 v[22:25], v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v5, s3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v5, 0x80000000, v7, s3
	s_clause 0x1
	buffer_load_b128 v[26:29], v6, s[16:19], 0 offen
	buffer_load_b128 v[30:33], v3, s[16:19], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[34:37], v1, s[20:23], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[38:41], v2, s[16:19], 0 offen
	buffer_load_b128 v[47:50], v5, s[16:19], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v7, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 15, v0
	v_lshrrev_b32_e32 v5, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v8, 1, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v7, 48, v7
	v_lshlrev_b32_e32 v1, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v45, v5, 16, v2
	v_lshlrev_b32_e32 v2, 6, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v5, v6, 1, v8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v72, v4, v7
	v_lshlrev_b32_e32 v3, 5, v3
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v46, 32, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0xbf
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 2, v5
	v_or_b32_e32 v11, 4, v5
	v_or_b32_e32 v12, 6, v5
	v_or_b32_e32 v13, 8, v5
	v_or_b32_e32 v14, 10, v5
	v_or_b32_e32 v15, 12, v5
	v_or_b32_e32 v16, 14, v5
	v_or_b32_e32 v17, 64, v5
	v_or_b32_e32 v18, 0x42, v5
	v_or_b32_e32 v19, 0x44, v5
	v_or_b32_e32 v20, 0x46, v5
	v_or_b32_e32 v21, 0x48, v5
	v_or_b32_e32 v4, 0x4a, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v42, 0, v72
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 0x4c, v5
	v_or_b32_e32 v7, 0x4e, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v42, v[22:25] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v42, v[26:29]
	s_waitcnt vmcnt(3)
	ds_store_b128 v42, v[30:33] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v42, v[34:37] offset:20480
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v42, v[38:41] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v42, v[47:50] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v22, 48, v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_or_b32 v63, 0x430, v1, v2
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or3_b32 v67, v3, v22, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v64, 16, v63
	v_xor_b32_e32 v66, 32, v63
	v_xor_b32_e32 v65, 48, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v68, 16, v67
	v_xor_b32_e32 v69, 32, v67
	v_xor_b32_e32 v70, 48, v67
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr70
.LBB0_3:                                ; %Flow161
	s_load_b64 s[28:29], s[0:1], 0x20
	v_or_b32_e32 v22, s33, v45
	v_or_b32_e32 v23, s33, v46
	s_ashr_i32 s0, s5, 6
	v_or_b32_e32 v60, s30, v5
	v_or_b32_e32 v59, s30, v8
	v_mul_lo_u32 v61, v22, s0
	v_mul_lo_u32 v62, v23, s0
	v_or_b32_e32 v58, s30, v11
	v_or_b32_e32 v57, s30, v12
	v_or_b32_e32 v56, s30, v13
	v_or_b32_e32 v55, s30, v14
	v_or_b32_e32 v54, s30, v15
	v_or_b32_e32 v53, s30, v16
	v_or_b32_e32 v52, s30, v17
	v_or_b32_e32 v51, s30, v18
	v_or_b32_e32 v50, s30, v19
	v_or_b32_e32 v49, s30, v20
	v_or_b32_e32 v47, s30, v21
	v_or_b32_e32 v48, s30, v4
	v_or_b32_e32 v19, s30, v6
	v_or_b32_e32 v20, s30, v7
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v21, 0 :: v_dual_and_b32 v4, 48, v1
	v_and_or_b32 v63, 0x430, v1, v2
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_or3_b32 v67, v3, v4, v2
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_xor_b32_e32 v64, 16, v63
	v_xor_b32_e32 v66, 32, v63
	v_xor_b32_e32 v65, 48, v63
	v_xor_b32_e32 v68, 16, v67
	v_xor_b32_e32 v69, 32, v67
	v_xor_b32_e32 v70, 48, v67
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v12, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s44, s0, 3
	s_add_i32 s27, s34, 64
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_add_i32 s26, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s35, 0, 0x2000
	s_add_i32 s44, s44, -3
	s_mov_b32 s45, 1
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s6, s14
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s7, s5, 6
	s_mov_b32 s14, s34
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s27, s7
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s6, 31
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v73, s34, v10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s7, s7, 26
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s8, s34, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s6, s6, 6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[105:108], v73, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v73, v61, s6, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s7, s6, s31
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s6, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v74, v62, s6, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v75, v60, s7, 1
	v_add_lshl_u32 v76, v59, s7, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v77, v58, s7, 1
	v_add_lshl_u32 v78, v57, s7, 1
	v_add_lshl_u32 v79, v56, s7, 1
	v_add_lshl_u32 v80, v55, s7, 1
	v_add_lshl_u32 v81, v54, s7, 1
	v_add_lshl_u32 v82, v53, s7, 1
	v_add_lshl_u32 v83, v52, s7, 1
	v_add_lshl_u32 v84, v51, s7, 1
	v_add_lshl_u32 v85, v50, s7, 1
	v_add_lshl_u32 v86, v49, s7, 1
	v_add_lshl_u32 v87, v47, s7, 1
	v_add_lshl_u32 v88, v48, s7, 1
	v_add_lshl_u32 v89, v19, s7, 1
	v_add_lshl_u32 v90, v20, s7, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v75, 0x80000000, v75 :: v_dual_cndmask_b32 v76, 0x80000000, v76
	v_dual_cndmask_b32 v77, 0x80000000, v77 :: v_dual_cndmask_b32 v78, 0x80000000, v78
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v79, 0x80000000, v79 :: v_dual_cndmask_b32 v80, 0x80000000, v80
	v_dual_cndmask_b32 v81, 0x80000000, v81 :: v_dual_cndmask_b32 v82, 0x80000000, v82
	v_dual_cndmask_b32 v83, 0x80000000, v83 :: v_dual_cndmask_b32 v84, 0x80000000, v84
	v_dual_cndmask_b32 v85, 0x80000000, v85 :: v_dual_cndmask_b32 v86, 0x80000000, v86
	v_dual_cndmask_b32 v87, 0x80000000, v87 :: v_dual_cndmask_b32 v88, 0x80000000, v88
	v_dual_cndmask_b32 v89, 0x80000000, v89 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v173, v73, s[36:39], 0 offen
	buffer_load_u16 v174, v74, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v175, v76, s[40:43], 0 offen
	buffer_load_u16 v176, v75, s[40:43], 0 offen
	buffer_load_u16 v177, v78, s[40:43], 0 offen
	buffer_load_u16 v178, v77, s[40:43], 0 offen
	buffer_load_u16 v179, v80, s[40:43], 0 offen
	buffer_load_u16 v180, v79, s[40:43], 0 offen
	buffer_load_u16 v181, v82, s[40:43], 0 offen
	buffer_load_u16 v182, v81, s[40:43], 0 offen
	buffer_load_u16 v183, v84, s[40:43], 0 offen
	buffer_load_u16 v184, v83, s[40:43], 0 offen
	buffer_load_u16 v185, v86, s[40:43], 0 offen
	buffer_load_u16 v186, v85, s[40:43], 0 offen
	buffer_load_u16 v187, v88, s[40:43], 0 offen
	buffer_load_u16 v188, v87, s[40:43], 0 offen
	buffer_load_u16 v189, v90, s[40:43], 0 offen
	buffer_load_u16 v190, v89, s[40:43], 0 offen
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v73, s8, v9
	v_add_nc_u32_e32 v74, s8, v71
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[109:112], v73, s[16:19], 0 offen
	buffer_load_b128 v[113:116], v74, s[16:19], 0 offen
	s_mov_b32 s6, s26
	s_mov_b32 s26, s1
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v73, s6, v63
	v_add_nc_u32_e32 v74, s6, v64
	s_mov_b32 s1, s4
	v_add_nc_u32_e32 v75, s6, v66
	v_add_nc_u32_e32 v76, s6, v65
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v77, s1, v67
	v_add_nc_u32_e32 v78, s1, v68
	v_add_nc_u32_e32 v79, s1, v69
	v_add_nc_u32_e32 v80, s1, v70
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[89:92], v73
	ds_load_b128 v[117:120], v73 offset:2048
	ds_load_b128 v[121:124], v74
	ds_load_b128 v[125:128], v74 offset:2048
	ds_load_b128 v[129:132], v75
	ds_load_b128 v[133:136], v75 offset:2048
	ds_load_b128 v[137:140], v76
	ds_load_b128 v[141:144], v76 offset:2048
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[97:100], v77
	ds_load_b128 v[145:148], v77 offset:4096
	ds_load_b128 v[149:152], v78
	ds_load_b128 v[153:156], v78 offset:4096
	ds_load_b128 v[157:160], v79
	ds_load_b128 v[161:164], v79 offset:4096
	ds_load_b128 v[165:168], v80
	ds_load_b128 v[169:172], v80 offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s45, 1
	s_mov_b32 s4, s35
	s_cmp_lt_i32 s1, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s45, s1, 0
	s_add_i32 s6, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s7, s45, 12
	s_barrier
	s_add_i32 s8, s7, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s35, s8, s7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s8, 0x4000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[73:80], v[97:100], v[89:92], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[145:148], v[89:92], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[97:100], v[117:120], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[145:148], v[117:120], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[149:152], v[121:124], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[153:156], v[121:124], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[149:152], v[125:128], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[153:156], v[125:128], v[97:104] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[73:80], v[157:160], v[129:132], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[161:164], v[129:132], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[157:160], v[133:136], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[161:164], v[133:136], v[97:104] neg_lo:[1,1,0]
	s_mov_b32 s5, s6
	v_wmma_i32_16x16x16_iu8 v[73:80], v[165:168], v[137:140], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[169:172], v[137:140], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[165:168], v[141:144], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[169:172], v[141:144], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v73, v73
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
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v132, 16, v188
	v_lshlrev_b32_e32 v130, 16, v186
	v_lshlrev_b32_e32 v126, 16, v182
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v118, 16, v174
	v_lshlrev_b32_e32 v117, 16, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v141, v126, v117
	v_mul_f32_e32 v126, v118, v126
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v134, 16, v190
	v_lshlrev_b32_e32 v131, 16, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v148, v131, v117 :: v_dual_lshlrev_b32 v127, 16, v183
	v_dual_mul_f32 v144, v127, v117 :: v_dual_lshlrev_b32 v119, 16, v175
	v_mul_f32_e32 v131, v118, v131
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v129, 16, v185
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v127, v118, v127 :: v_dual_lshlrev_b32 v124, 16, v180
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v136, v119, v117
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v133, 16, v189
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v147, v132, v117
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v125, 16, v181
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v145, v130, v117
	v_mul_f32_e32 v130, v118, v130
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v120, 16, v176
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v132, v118, v132 :: v_dual_lshlrev_b32 v123, 16, v179
	v_mul_f32_e32 v146, v129, v117
	v_dual_mul_f32 v129, v118, v129 :: v_dual_lshlrev_b32 v128, 16, v184
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v121, 16, v177
	v_lshlrev_b32_e32 v122, 16, v178
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v142, v125, v117 :: v_dual_add_nc_u32 v191, s8, v72
	v_dual_mul_f32 v139, v124, v117 :: v_dual_add_nc_u32 v192, s35, v72
	v_dual_mul_f32 v119, v118, v119 :: v_dual_mul_f32 v140, v123, v117
	v_mul_f32_e32 v123, v118, v123
	v_mul_f32_e32 v124, v118, v124
	v_mul_f32_e32 v125, v118, v125
	v_dual_mul_f32 v135, v120, v117 :: v_dual_mul_f32 v120, v118, v120
	v_mul_f32_e32 v143, v128, v117
	v_mul_f32_e32 v137, v122, v117
	v_mul_f32_e32 v122, v118, v122
	v_mul_f32_e32 v128, v118, v128
	v_mul_f32_e32 v138, v121, v117
	v_mul_f32_e32 v121, v118, v121
	v_dual_mul_f32 v149, v134, v117 :: v_dual_fmac_f32 v40, v137, v75
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v44, v136, v74 :: v_dual_mul_f32 v117, v133, v117
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v133, v118, v133 :: v_dual_fmac_f32 v38, v140, v78
	v_dual_mul_f32 v118, v118, v134 :: v_dual_fmac_f32 v21, v135, v73
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v42, v138, v76
	v_dual_fmac_f32 v36, v139, v77 :: v_dual_fmac_f32 v17, v148, v86
	v_dual_fmac_f32 v32, v141, v79 :: v_dual_fmac_f32 v43, v120, v89
	v_dual_fmac_f32 v34, v142, v80 :: v_dual_fmac_f32 v13, v149, v87
	v_dual_fmac_f32 v28, v143, v81 :: v_dual_fmac_f32 v11, v117, v88
	v_dual_fmac_f32 v30, v144, v82 :: v_dual_fmac_f32 v39, v122, v91
	v_dual_fmac_f32 v24, v145, v83 :: v_dual_fmac_f32 v41, v119, v90
	v_dual_fmac_f32 v26, v146, v84 :: v_dual_fmac_f32 v35, v124, v93
	v_dual_fmac_f32 v18, v147, v85 :: v_dual_fmac_f32 v37, v121, v92
	v_dual_fmac_f32 v33, v123, v94 :: v_dual_fmac_f32 v22, v129, v100
	v_dual_fmac_f32 v31, v126, v95 :: v_dual_fmac_f32 v16, v132, v101
	v_dual_fmac_f32 v29, v125, v96 :: v_dual_fmac_f32 v14, v118, v103
	v_dual_fmac_f32 v27, v128, v97 :: v_dual_fmac_f32 v12, v133, v104
	v_fmac_f32_e32 v25, v127, v98
	v_fmac_f32_e32 v23, v130, v99
	v_fmac_f32_e32 v15, v131, v102
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b128 v191, v[105:108] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v192, v[109:112]
	s_waitcnt vmcnt(0)
	ds_store_b128 v192, v[113:116] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v21, 0
	s_add_i32 s26, 0, 0x4000
	s_add_i32 s1, 0, 0x5000
	s_add_i32 s35, 0, 0x2000
.LBB0_7:                                ; %._crit_edge
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v3, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v5, s4, v69
	v_add_nc_u32_e32 v10, s4, v68
	v_add_nc_u32_e32 v83, s4, v70
	v_add_nc_u32_e32 v84, s4, v67
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s11, s4
	s_mov_b32 s10, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	v_dual_mov_b32 v103, s11 :: v_dual_mov_b32 v102, s10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[1:4], v5 offset:4096
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[71:74], v10 offset:4096
	ds_load_b128 v[75:78], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v99, s7 :: v_dual_add_nc_u32 v10, s26, v63
	v_dual_mov_b32 v98, s6 :: v_dual_add_nc_u32 v85, s26, v64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[120:123], v10 offset:2048
	ds_load_b128 v[112:115], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v101, s9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[79:82], v84 offset:4096
	ds_load_b128 v[91:94], v84
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v97, s5 :: v_dual_add_nc_u32 v84, s26, v66
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[132:135], v85 offset:2048
	ds_load_b128 v[136:139], v85
	v_add_nc_u32_e32 v10, s26, v65
	ds_load_b128 v[124:127], v84 offset:2048
	ds_load_b128 v[128:131], v84
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v100, s8
	v_mov_b32_e32 v96, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[140:143], v10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[144:147], v83
	ds_load_b128 v[148:151], v83 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[152:155], v10 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[79:82], v[112:115], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[91:94], v[112:115], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[91:94], v[120:123], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[79:82], v[120:123], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[75:78], v[136:139], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[71:74], v[136:139], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[75:78], v[132:135], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[71:74], v[132:135], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[5:8], v[128:131], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[1:4], v[128:131], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[5:8], v[124:127], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[1:4], v[124:127], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[144:147], v[140:143], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[148:151], v[140:143], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[144:147], v[152:155], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[148:151], v[152:155], v[96:103] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v77, v84
	v_cvt_f32_i32_e32 v72, v85
	v_cvt_f32_i32_e32 v78, v86
	v_cvt_f32_i32_e32 v73, v87
	v_cvt_f32_i32_e32 v79, v88
	v_cvt_f32_i32_e32 v74, v89
	v_cvt_f32_i32_e32 v80, v90
	v_cvt_f32_i32_e32 v75, v104
	v_cvt_f32_i32_e32 v81, v105
	v_cvt_f32_i32_e32 v76, v106
	v_cvt_f32_i32_e32 v82, v107
	v_cvt_f32_i32_e32 v6, v108
	v_cvt_f32_i32_e32 v5, v109
	v_cvt_f32_i32_e32 v2, v110
	v_cvt_f32_i32_e32 v1, v111
	v_cvt_f32_i32_e32 v85, v112
	v_cvt_f32_i32_e32 v91, v113
	v_cvt_f32_i32_e32 v89, v114
	v_cvt_f32_i32_e32 v95, v115
	v_cvt_f32_i32_e32 v84, v116
	v_cvt_f32_i32_e32 v88, v117
	v_cvt_f32_i32_e32 v86, v118
	v_cvt_f32_i32_e32 v92, v119
	v_cvt_f32_i32_e32 v87, v96
	v_cvt_f32_i32_e32 v93, v97
	v_cvt_f32_i32_e32 v90, v98
	v_cvt_f32_i32_e32 v96, v99
	v_cvt_f32_i32_e32 v8, v100
	v_cvt_f32_i32_e32 v7, v101
	v_cvt_f32_i32_e32 v4, v102
	v_cvt_f32_i32_e32 v3, v103
	v_cvt_f32_i32_e32 v83, v83
.LBB0_9:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s14, 31
	s_mov_b32 s27, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s26, 0x7ffffffe
	s_add_i32 s4, s14, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s14, s26
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s15, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v10, v61, s4, 1
	v_add_lshl_u32 v71, v62, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v94, v60, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v71, 0x80000000, v71
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v97, v59, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s25, s25, 0xffff
	s_clause 0x1
	buffer_load_u16 v139, v10, s[24:27], 0 offen
	buffer_load_u16 v140, v71, s[24:27], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v10, v58, s4, 1
	v_dual_cndmask_b32 v71, 0x80000000, v94 :: v_dual_cndmask_b32 v94, 0x80000000, v97
	v_add_lshl_u32 v97, v57, s4, 1
	v_add_lshl_u32 v98, v56, s4, 1
	v_add_lshl_u32 v99, v55, s4, 1
	v_add_lshl_u32 v100, v54, s4, 1
	v_add_lshl_u32 v101, v53, s4, 1
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v97, 0x80000000, v97
	v_add_lshl_u32 v102, v52, s4, 1
	s_and_b32 s13, s13, 0xffff
	v_add_lshl_u32 v103, v51, s4, 1
	v_dual_cndmask_b32 v98, 0x80000000, v98 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	v_add_lshl_u32 v104, v50, s4, 1
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	s_clause 0x7
	buffer_load_u16 v141, v71, s[12:15], 0 offen
	buffer_load_u16 v142, v94, s[12:15], 0 offen
	buffer_load_u16 v137, v10, s[12:15], 0 offen
	buffer_load_u16 v138, v97, s[12:15], 0 offen
	buffer_load_u16 v135, v98, s[12:15], 0 offen
	buffer_load_u16 v136, v99, s[12:15], 0 offen
	buffer_load_u16 v133, v100, s[12:15], 0 offen
	buffer_load_u16 v134, v101, s[12:15], 0 offen
	v_add_lshl_u32 v97, v49, s4, 1
	v_add_lshl_u32 v98, v47, s4, 1
	v_dual_cndmask_b32 v10, 0x80000000, v102 :: v_dual_cndmask_b32 v71, 0x80000000, v103
	v_add_lshl_u32 v99, v48, s4, 1
	v_add_lshl_u32 v100, v19, s4, 1
	v_add_lshl_u32 v101, v20, s4, 1
	v_dual_cndmask_b32 v94, 0x80000000, v104 :: v_dual_cndmask_b32 v97, 0x80000000, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v98, 0x80000000, v98 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	s_clause 0x7
	buffer_load_u16 v131, v10, s[12:15], 0 offen
	buffer_load_u16 v132, v71, s[12:15], 0 offen
	buffer_load_u16 v129, v94, s[12:15], 0 offen
	buffer_load_u16 v130, v97, s[12:15], 0 offen
	buffer_load_u16 v127, v98, s[12:15], 0 offen
	buffer_load_u16 v128, v99, s[12:15], 0 offen
	buffer_load_u16 v71, v100, s[12:15], 0 offen
	buffer_load_u16 v10, v101, s[12:15], 0 offen
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v99, 0
	v_mov_b32_e32 v98, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v9, s35, v69
	v_add_nc_u32_e32 v67, s35, v67
	ds_load_b128 v[97:100], v9 offset:4096
	ds_load_b128 v[101:104], v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v9, s1, v63
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v68, s35, v68
	ds_load_b128 v[151:154], v67 offset:4096
	ds_load_b128 v[155:158], v67
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v63, s1, v66
	v_add_nc_u32_e32 v64, s1, v64
	ds_load_b128 v[159:162], v9 offset:2048
	ds_load_b128 v[143:146], v9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[163:166], v68 offset:4096
	ds_load_b128 v[167:170], v68
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v63 offset:2048
	ds_load_b128 v[175:178], v63
	ds_load_b128 v[179:182], v64 offset:2048
	ds_load_b128 v[183:186], v64
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v94, s35, v70
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v9, s1, v65
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v70, s11 :: v_dual_mov_b32 v69, s10
	v_dual_mov_b32 v68, s9 :: v_dual_mov_b32 v67, s8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[187:190], v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v66, s7 :: v_dual_mov_b32 v65, s6
	v_dual_mov_b32 v64, s5 :: v_dual_mov_b32 v63, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[191:194], v94
	ds_load_b128 v[195:198], v94 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[199:202], v9 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[108:115], v[155:158], v[143:146], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[151:154], v[143:146], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[155:158], v[159:162], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[151:154], v[159:162], v[63:70] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[108:115], v[167:170], v[183:186], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[163:166], v[183:186], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[167:170], v[179:182], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[163:166], v[179:182], v[63:70] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[108:115], v[101:104], v[175:178], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[97:100], v[175:178], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[101:104], v[171:174], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[97:100], v[171:174], v[63:70] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[108:115], v[191:194], v[187:190], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[116:123], v[195:198], v[187:190], v[116:123] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[191:194], v[199:202], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[195:198], v[199:202], v[63:70] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v104, v110
	v_cvt_f32_i32_e32 v110, v111
	v_cvt_f32_i32_e32 v105, v112
	v_cvt_f32_i32_e32 v111, v113
	v_cvt_f32_i32_e32 v106, v114
	v_cvt_f32_i32_e32 v112, v115
	v_cvt_f32_i32_e32 v107, v116
	v_cvt_f32_i32_e32 v113, v117
	v_cvt_f32_i32_e32 v108, v118
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v100, v120
	v_cvt_f32_i32_e32 v101, v121
	v_cvt_f32_i32_e32 v97, v122
	v_cvt_f32_i32_e32 v94, v123
	v_cvt_f32_i32_e32 v116, v143
	v_cvt_f32_i32_e32 v122, v144
	v_cvt_f32_i32_e32 v120, v145
	v_cvt_f32_i32_e32 v125, v146
	v_cvt_f32_i32_e32 v115, v147
	v_cvt_f32_i32_e32 v119, v148
	v_cvt_f32_i32_e32 v117, v149
	v_cvt_f32_i32_e32 v123, v150
	v_cvt_f32_i32_e32 v118, v63
	v_cvt_f32_i32_e32 v124, v64
	v_cvt_f32_i32_e32 v121, v65
	v_cvt_f32_i32_e32 v126, v66
	v_cvt_f32_i32_e32 v102, v67
	v_cvt_f32_i32_e32 v103, v68
	v_cvt_f32_i32_e32 v98, v69
	v_cvt_f32_i32_e32 v99, v70
.LBB0_11:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s34, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s14, s26
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s15, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s1, s34, s1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v66, 1, v0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s1, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v69.h, v137.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v61, v61, s1, 1
	v_add_lshl_u32 v62, v62, s1, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s1, s31
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v60, v60, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v59, v59, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_cndmask_b32 v62, 0x80000000, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v63, 0x80000000, v60, vcc_lo
	v_add_lshl_u32 v58, v58, s0, 1
	v_cndmask_b32_e32 v64, 0x80000000, v59, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v59, v61, s[24:27], 0 offen
	buffer_load_u16 v60, v62, s[24:27], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v57, v57, s0, 1
	v_add_lshl_u32 v56, v56, s0, 1
	v_add_lshl_u32 v55, v55, s0, 1
	v_add_lshl_u32 v54, v54, s0, 1
	v_add_lshl_u32 v53, v53, s0, 1
	v_add_lshl_u32 v52, v52, s0, 1
	v_add_lshl_u32 v51, v51, s0, 1
	v_add_lshl_u32 v50, v50, s0, 1
	v_add_lshl_u32 v49, v49, s0, 1
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v51, 0x80000000, v51
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_cndmask_b32 v49, 0x80000000, v49
	s_clause 0xb
	buffer_load_u16 v61, v64, s[12:15], 0 offen
	buffer_load_u16 v62, v63, s[12:15], 0 offen
	buffer_load_u16 v57, v57, s[12:15], 0 offen
	buffer_load_u16 v58, v58, s[12:15], 0 offen
	buffer_load_u16 v55, v55, s[12:15], 0 offen
	buffer_load_u16 v56, v56, s[12:15], 0 offen
	buffer_load_u16 v53, v53, s[12:15], 0 offen
	buffer_load_u16 v54, v54, s[12:15], 0 offen
	buffer_load_u16 v51, v51, s[12:15], 0 offen
	buffer_load_u16 v52, v52, s[12:15], 0 offen
	buffer_load_u16 v63, v49, s[12:15], 0 offen
	buffer_load_u16 v64, v50, s[12:15], 0 offen
	v_add_lshl_u32 v47, v47, s0, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v49.l, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v50, v48, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v49.h, v140.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v65, 0x80000000, v47 :: v_dual_and_b32 v66, 56, v66
	v_mov_b16_e32 v69.l, v49.l
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v67, 0x80000000, v50, vcc_lo
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v47, s31, v45
	v_mul_lo_u32 v45, s31, v46
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v50, v65, s[12:15], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v150, v49, v69
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v46, v67, s[12:15], 0 offen
	v_add_lshl_u32 v19, v19, s0, 1
	v_add_lshl_u32 v20, v20, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v48.h, v139.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v67.h, v141.l
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v48.l, v49.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	v_mov_b16_e32 v67.l, v49.l
	s_waitcnt vmcnt(28)
	v_mov_b16_e64 v68.h, v138.l
	s_waitcnt vmcnt(18)
	v_mov_b16_e64 v128.h, v134.l
	s_clause 0x1
	buffer_load_u16 v152, v19, s[12:15], 0 offen
	buffer_load_u16 v153, v20, s[12:15], 0 offen
	v_mov_b16_e64 v65.h, v142.l
	v_mov_b16_e32 v65.l, v49.l
	v_mov_b16_e64 v130.h, v132.l
	v_mov_b16_e64 v132.h, v130.l
	v_mov_b16_e64 v134.h, v128.l
	v_mov_b16_e32 v68.l, v49.l
	v_mov_b16_e64 v128.l, v49.l
	v_mov_b16_e64 v130.l, v49.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v148, v49, v67 :: v_dual_mul_f32 v67, v67, v48
	v_mul_f32_e32 v149, v49, v65
	v_mul_f32_e32 v65, v65, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v127.h, v135.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v85, v148, v85, v43
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v129.h, v133.l
	v_mov_b16_e64 v131.h, v131.l
	v_mov_b16_e64 v133.h, v129.l
	v_mov_b16_e64 v135.h, v127.l
	v_mov_b16_e32 v127.l, v49.l
	v_mov_b16_e64 v129.l, v49.l
	v_mov_b16_e64 v131.l, v49.l
	v_mov_b16_e64 v132.l, v49.l
	v_mov_b16_e64 v133.l, v49.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v151, v49, v68
	v_mul_f32_e32 v68, v68, v48
	v_mul_f32_e32 v69, v69, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v85, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s33, s31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v154, v49, v127 :: v_dual_mul_f32 v127, v127, v48
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s1, s1, s30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v156, v49, v129
	v_mul_f32_e32 v158, v49, v131
	v_mul_f32_e32 v160, v49, v133
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v20, s1, v66
	v_add3_u32 v19, s1, v66, 64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v149, v91, v41
	v_fma_f32 v67, v67, v83, v21
	v_fma_f32 v68, v68, v78, v42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v70.h, v136.l
	v_mov_b16_e32 v70.l, v49.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v73, v127, v73, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v66, s2
	v_cndmask_b32_e64 v21, v21, v67, s2
	v_cndmask_b32_e64 v42, v42, v68, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v137.h, v49.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v155, v49, v70 :: v_dual_mul_f32 v70, v70, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v73, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v136.h, v49.l
	v_mov_b16_e64 v138.h, v49.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v131, v131, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v70, v70, v79, v38
	v_fma_f32 v78, v154, v84, v35
	v_fma_f32 v84, v156, v86, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v140.h, v49.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v75, v131, v75, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v70, s2
	v_cndmask_b32_e64 v35, v35, v78, s2
	v_cndmask_b32_e64 v31, v31, v84, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v83, v150, v89, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v75, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v141.h, v49.l
	v_mov_b16_e64 v142.h, v49.l
	v_mov_b16_e64 v144.h, v49.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v83, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v145.h, v49.l
	v_mov_b16_e64 v146.h, v49.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v135.l, v49.l
	v_mov_b16_e64 v134.l, v49.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v143.h, v49.l
	v_mov_b16_e64 v147.h, v49.l
	v_mov_b16_e64 v139.h, v49.l
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v159, v49, v130 :: v_dual_mul_f32 v130, v130, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v86, v159, v93, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v86, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v81, v130, v81, v30
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v81, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v61, 16, v61
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v62, 16, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v77, v44
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v60, 16, v60
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v157, v49, v128
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v128, v128, v48 :: v_dual_lshlrev_b32 v57, 16, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v65, v62, v59 :: v_dual_mul_f32 v62, v60, v62
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v129, v129, v48 :: v_dual_lshlrev_b32 v58, 16, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v77, v151, v95, v37
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v161, v49, v132
	v_mul_f32_e32 v132, v132, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v69, v72, v40
	v_fma_f32 v62, v62, v116, v43
	v_fma_f32 v87, v158, v87, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v77, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v56, 16, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v69, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v66, v61, v59 :: v_dual_lshlrev_b32 v53, 16, v53
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v67, v58, v59 :: v_dual_lshlrev_b32 v52, 16, v52
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v61, v60, v61 :: v_dual_lshlrev_b32 v64, 16, v64
	v_mul_f32_e32 v68, v57, v59
	v_mul_f32_e32 v58, v60, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v74, v129, v74, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v60, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v62, s3
	v_cndmask_b32_e64 v27, v27, v87, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v73, v53, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v74, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v65, v9, v21
	v_fma_f32 v65, v66, v109, v44
	v_fma_f32 v61, v61, v122, v41
	v_fma_f32 v66, v67, v104, v40
	v_fma_f32 v57, v57, v125, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v137.l, v43.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v74, v52, v59
	v_mul_f32_e32 v52, v60, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v72, v155, v88, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v21, v9, s3
	v_cndmask_b32_e64 v41, v41, v61, s3
	v_cndmask_b32_e64 v40, v40, v66, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v52, v52, v118, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v57, s3
	v_cndmask_b32_e64 v33, v33, v72, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v70, v55, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v44, v65, s3
	v_cndmask_b32_e64 v27, v27, v52, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v44, v9, 16, 1
	v_mov_b16_e64 v136.l, v41.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v56, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v52, v40, 16, 1
	v_mov_b16_e64 v138.l, v37.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v55, v60, v55
	v_dual_mul_f32 v133, v133, v48 :: v_dual_mul_f32 v72, v54, v59
	v_dual_mul_f32 v54, v60, v54 :: v_dual_lshlrev_b32 v63, 16, v63
	v_mul_f32_e32 v53, v60, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v68, v110, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_cmp_o_f32_e64 s5, v40, v40
	v_add3_u32 v9, v9, v44, 0x7fff
	v_and_b32_e32 v44, 1, v136
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v69, v105, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v40, v40, v52, 0x7fff
	v_and_b32_e32 v52, 1, v138
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v55, v55, v119, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v56, v60, v56 :: v_dual_lshlrev_b32 v51, 16, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v54, v117, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v68, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v33, v33, v55, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v75, v51, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v157, v92, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v54, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v54, v36, 16, 1
	v_mov_b16_e64 v140.l, v33.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v51, v60, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v80, v128, v80, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s9, v36, v36
	v_add3_u32 v36, v36, v54, 0x7fff
	v_and_b32_e32 v54, 1, v140
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v51, v51, v124, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v79, s2
	v_cndmask_b32_e64 v34, v34, v80, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v56, v115, v35
	v_fma_f32 v76, v133, v76, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v51, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v51, v21, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v70, v111, v38
	v_fma_f32 v70, v72, v106, v32
	v_fma_f32 v72, v73, v112, v34
	v_fma_f32 v53, v53, v123, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v56, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v21, v21
	v_add3_u32 v21, v21, v51, 0x7fff
	v_and_b32_e32 v51, 1, v137
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v73, v74, v107, v28
	v_fma_f32 v88, v161, v96, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v76, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v58, v58, v120, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v69, s3
	v_cndmask_b32_e64 v29, v29, v53, s3
	v_cndmask_b32_e64 v28, v28, v73, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v141.l, v35.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v76, v64, v59
	v_mul_f32_e32 v64, v60, v64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v74, v75, v113, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v88, s2
	v_cndmask_b32_e64 v39, v39, v58, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v55, v38, 16, 1
	v_mov_b16_e64 v142.l, v29.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v77, v63, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v74, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v58, v28, 16, 1
	v_mov_b16_e64 v144.l, v25.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v63, v60, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s10, v38, v38
	v_cmp_o_f32_e64 s17, v28, v28
	v_bfe_u32 v61, v30, 16, 1
	v_mov_b16_e64 v145.l, v27.h
	v_add3_u32 v38, v38, v55, 0x7fff
	v_and_b32_e32 v55, 1, v141
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v75, v76, v108, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v28, v58, 0x7fff
	v_and_b32_e32 v58, 1, v144
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v63, v63, v126, v22
	v_fma_f32 v82, v132, v82, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v70, s3
	v_cndmask_b32_e64 v24, v24, v75, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s18, v30, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v63, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v30, v61, 0x7fff
	v_and_b32_e32 v61, 1, v145
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v82, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v56, v32, 16, 1
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s20, v27, v27
	v_bfe_u32 v62, v24, 16, 1
	v_mov_b16_e64 v146.l, v22.h
	v_add3_u32 v35, v35, v55, 0x7fff
	v_add3_u32 v27, v27, v61, 0x7fff
	v_cmp_o_f32_e64 s13, v32, v32
	v_cmp_o_f32_e64 s19, v25, v25
	v_add3_u32 v32, v32, v56, 0x7fff
	v_and_b32_e32 v56, 1, v142
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v76, v77, v114, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v25, v58, 0x7fff
	v_cmp_o_f32_e64 s11, v33, v33
	v_cmp_o_f32_e64 s21, v24, v24
	v_add3_u32 v24, v24, v62, 0x7fff
	v_and_b32_e32 v62, 1, v146
	v_add3_u32 v33, v33, v54, 0x7fff
	v_cndmask_b16 v30.l, 0x7fff, v35.h, s12
	v_cndmask_b16 v25.l, 0x7fff, v27.h, s20
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v27, v135, v48
	v_mul_f32_e32 v35, v49, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v76, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s17
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s18
	v_cndmask_b16 v30.h, 0x7fff, v33.h, s11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v27, v6, v18
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v27, 16, v50
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v134, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v35, v8, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v63, v26, 16, 1
	v_cmp_o_f32_e64 s4, v43, v43
	v_cmp_o_f32_e64 s7, v37, v37
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v21.h, s0
	v_add3_u32 v21, v43, v51, 0x7fff
	v_add3_u32 v37, v37, v52, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v16, v8, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v60, v27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v33, v5, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v33, 16, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s22, v26, v26
	v_add3_u32 v26, v26, v63, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v89, v160, v90, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v26.l, 0x7fff, v21.h, s4
	v_cndmask_b16 v21.h, 0x7fff, v37.h, s7
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v49, v134
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v18, v6, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v18, v27, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v17, v5, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v33, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v89, s2
	v_cndmask_b32_e64 v42, v42, v67, s3
	v_cndmask_b32_e64 v34, v34, v72, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v18, v100, v6
	v_fma_f32 v7, v37, v7, v15
	v_fma_f32 v17, v17, v101, v5
	v_fma_f32 v64, v64, v121, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v53, v42, 16, 1
	v_bfe_u32 v57, v34, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v18, s3
	v_cndmask_b32_e64 v7, v15, v7, s2
	v_cndmask_b32_e64 v5, v5, v17, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v60, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v64, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v41, v41
	v_cmp_o_f32_e64 s6, v42, v42
	v_cmp_o_f32_e64 s14, v34, v34
	v_mov_b16_e64 v143.l, v31.h
	v_add3_u32 v42, v42, v53, 0x7fff
	v_add3_u32 v34, v34, v57, 0x7fff
	v_add3_u32 v41, v41, v44, 0x7fff
	v_bfe_u32 v17, v6, 16, 1
	v_bfe_u32 v18, v5, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v15, v103, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v147.l, v23.h
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s5
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s6
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s13
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s14
	v_and_b32_e32 v57, 1, v143
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s22
	v_cndmask_b16 v26.h, 0x7fff, v41.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v102, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v17, v6, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v6, v6
	v_add3_u32 v6, v5, v18, 0x7fff
	v_cmp_o_f32_e64 s1, v5, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v7, v15, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s16, v31, v31
	v_add3_u32 v31, v31, v57, 0x7fff
	v_add3_u32 v34, v22, v62, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v8, v16, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v6.l, 0x7fff, v17.h, s0
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	v_and_b32_e32 v63, 1, v147
	v_mov_b16_e32 v8.l, v5.h
	v_mov_b16_e32 v8.h, v49.l
	v_cmp_o_f32_e64 s15, v29, v29
	v_add3_u32 v29, v29, v56, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v31.h, s16
	v_add3_u32 v31, v23, v63, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v34.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_mov_b16_e32 v15.l, v7.h
	v_mov_b16_e32 v15.h, v49.l
	v_and_b32_e32 v8, 1, v8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v16.l, v49.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.l, 0x7fff, v31.h, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v16.h, v71.l
	v_mov_b16_e32 v17.l, v49.l
	v_mov_b16_e32 v17.h, v10.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v15
	v_add3_u32 v8, v5, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v49, v16
	v_mul_f32_e32 v5, v49, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v7, v10, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s19
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v15, v4, v14
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v16, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v5, v3, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v139.l, v39.h
	v_cndmask_b16 v8.l, 0x7fff, v10.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v17, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v14, v4, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v15, v2, v13
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v14, 16, v152
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v12, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v5, v1, v11
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v153
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v13, v2, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v14, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, v49.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v11, v1, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v60, v5
	v_mul_f32_e32 v5, v5, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v97, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s9
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v11, v99, v3
	v_fma_f32 v5, v5, v94, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v12, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s8, v39, v39
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v7, s3
	v_cndmask_b32_e64 v1, v1, v5, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v5, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_mov_b16_e32 v7.h, v49.l
	v_mov_b16_e32 v10.l, v3.h
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v5, v2, v5, 0x7fff
	v_bfe_u32 v11, v1, 16, 1
	v_cmp_o_f32_e64 s0, v1, v1
	v_and_b32_e32 v2, 1, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v10, v1, v11, 0x7fff
	v_mov_b32_e32 v11, 0x7632
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v53, 1, v139
	v_cndmask_b16 v3.h, 0x7fff, v10.h, s0
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_mov_b32_e32 v10, 0x5410
	v_cndmask_b32_e32 v2, v9, v36, vcc_lo
	v_add3_u32 v39, v39, v53, 0x7fff
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v5, v40, v32 :: v_dual_cndmask_b32 v10, 0x1054, v10
	v_cndmask_b32_e32 v16, v8, v25, vcc_lo
	v_cndmask_b16 v21.l, 0x7fff, v39.h, s8
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v13, v60, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v11, v11, 8, v11
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v8, v25, v8, vcc_lo
	v_cndmask_b32_e32 v14, v29, v21, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v98, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 0x760076, v11
	v_dual_cndmask_b32 v15, v21, v29 :: v_dual_and_b32 v10, 0x540054, v10
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v13, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v13, v26, v30, vcc_lo
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v11, v11, 4, v11
	v_cndmask_b32_e32 v12, v30, v26, vcc_lo
	v_mov_b16_e32 v7.l, v4.h
	v_cmp_o_f32_e64 s2, v4, v4
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 1, v7
	v_and_b32_e32 v21, 0x5040504, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v4, v7, 0x7fff
	v_dual_cndmask_b32 v7, v6, v28 :: v_dual_cndmask_b32 v6, v28, v6
	v_cndmask_b32_e32 v4, v32, v40, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v1, v36, v9, vcc_lo
	v_cndmask_b32_e32 v9, v3, v24, vcc_lo
	v_cndmask_b32_e32 v3, v24, v3, vcc_lo
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v17, v0, v22 :: v_dual_cndmask_b32 v0, v22, v0
	v_and_b32_e32 v22, 0x7060706, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_permlanex16_b32 v18, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v21
	v_perm_b32 v1, v2, v1, v22
	v_perm_b32 v2, v5, v4, v21
	v_perm_b32 v3, v5, v4, v22
	v_perm_b32 v4, v6, v7, v21
	v_perm_b32 v5, v6, v7, v22
	v_perm_b32 v6, v18, v9, v21
	v_perm_b32 v7, v18, v9, v22
	v_perm_b32 v8, v13, v12, v21
	v_perm_b32 v9, v13, v12, v22
	v_perm_b32 v12, v15, v16, v21
	v_perm_b32 v13, v15, v16, v22
	v_add_lshl_u32 v16, v20, v47, 1
	v_perm_b32 v10, v11, v14, v21
	v_perm_b32 v11, v11, v14, v22
	v_perm_b32 v14, v23, v17, v21
	v_perm_b32 v15, v23, v17, v22
	v_add_lshl_u32 v17, v19, v47, 1
	v_add_lshl_u32 v18, v20, v45, 1
	v_add_lshl_u32 v19, v19, v45, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[28:31], 0 offen
	buffer_store_b128 v[4:7], v17, s[28:31], 0 offen
	buffer_store_b128 v[8:11], v18, s[28:31], 0 offen
	buffer_store_b128 v[12:15], v19, s[28:31], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp18:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 203
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8884
; TotalNumSgprs: 48
; NumVgprs: 203
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 48
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     203
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
