	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v63, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s19, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_lshr_b32 s6, s6, 27
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_lshr_b32 s7, s7, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s4, s4, 5
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s5, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s5, s4
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s8, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s6
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s6, s10, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s9, s5
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s6, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s7, s9
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s20, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s6, 0, s9
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s20, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s5
	s_ashr_i32 s10, s10, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s7
	s_mul_hi_u32 s4, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s7, s4
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s4, s8, s4
	s_mul_i32 s11, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s8, s9
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s8, s9
	s_mov_b32 s9, 0
	s_cselect_b32 s4, s11, s4
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s21, s20, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s10
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[10:11], s[20:21], 2
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s5, s4, s5
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s4, s4, 5
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s8, s2, s5
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s10
	s_addc_u32 s7, s7, s11
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v1, s4, v63
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s21, s[6:7], 0x0
	.loc	1 1125 43                       ; ragged.py:1125:43
	s_mul_i32 s5, s20, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v2, 16, v1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s6, s18, v1
	v_cmp_gt_i32_e64 s2, s18, v2
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s21, s21, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s21, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge4_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s28, s4, s5
	s_lshl_b32 s7, s19, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr28
                                        ; implicit-def: $sgpr7
.LBB0_3:                                ; %Flow153
	s_load_b64 s[16:17], s[0:1], 0x28
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v69, 0x70, v0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_mov_b32_e32 v92, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s29, s8, 7
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1118 23 is_stmt 1             ; ragged.py:1118:23
	s_lshl_b32 s3, s3, 5
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s26, s21, 1
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v5, 3, v0
	s_cmp_lt_i32 s3, 64
	v_dual_mov_b32 v95, 0 :: v_dual_lshlrev_b32 v4, 4, v0
	s_cselect_b32 s27, -1, 0
	s_add_i32 s28, s4, s5
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v6, s4, v3
	v_dual_mov_b32 v93, 0 :: v_dual_and_b32 v2, 24, v5
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v3, s28, v3
	v_dual_mov_b32 v92, 0 :: v_dual_and_b32 v1, 0x70, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s18, v6
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v6, 3, v0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[49:50], null, v3, s24, v[2:3]
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v7, s29, v1
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v10, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[50:51], null, s19, v6, v[1:2]
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s4, s19, v7
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v3, 24, v2
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v7, s28, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v6, 24, v1
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v1, 48, v1
	v_lshl_or_b32 v3, v63, 5, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v11, 16, v7
	v_add3_u32 v97, 0, v63, v1
	v_mul_lo_u32 v98, v7, s25
	v_dual_mov_b32 v80, 0 :: v_dual_lshlrev_b32 v1, 2, v69
	v_dual_mov_b32 v78, 0 :: v_dual_and_b32 v7, 32, v10
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v91, s29, v0
	v_xor_b32_e32 v5, v5, v6
	v_xor_b32_e32 v6, 8, v3
	v_xor_b32_e32 v8, 16, v3
	v_xor_b32_e32 v9, 24, v3
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v2, 28, v2
	v_add3_u32 v1, 0, v1, v7
	v_cndmask_b32_e64 v7, 0, 1, s27
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v10, 1, v69
	v_mul_lo_u32 v99, v11, s25
	s_lshl_b32 s7, s19, 4
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s19, v91
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v96, s7, v50
	v_cmp_ne_u32_e64 s5, 1, v7
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v100, 0, v5
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v101, 0, v3
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v102, 0, v6
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v103, 0, v8
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v104, 0, v9
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v105, 0, v4
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v106, v1, v2
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v107, 0, v10
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_mov_b32_e32 v62, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s26, s26, -1
	.loc	1 1129 43                       ; ragged.py:1129:43
	s_mul_i32 s18, s20, s24
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s30, s20, s25
	s_mov_b32 s31, 0
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	s_and_b32 s9, s11, 0xffff
	s_mov_b32 s8, s10
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshr_b32 s33, s26, 6
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s34, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s10, s31, s30
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v17, v98, s31, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s10, s10, s19
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v18, v99, s31, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v19, v91, s10, 1
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s10, s31, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s6
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s34, s10, 6
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_lg_u32 s31, s33
	s_mov_b32 s31, s10
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[24:27], 0 offen
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 1218 21                       ; ragged.py:1218:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v29, 16, v18
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v31, v47, v17 :: v_dual_lshlrev_b32 v18, 16, v19
	v_mul_f32_e32 v30, v48, v17
	v_mul_f32_e32 v32, v46, v17
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_store_b32 v106, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v46, v14, v29
	v_mul_f32_e32 v3, v3, v29
	v_mul_f32_e32 v47, v13, v29
	v_mul_f32_e32 v48, v12, v29
	v_mul_f32_e32 v2, v2, v29
	v_mul_f32_e32 v51, v11, v29
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[11:14], v107 offset:256
	ds_load_b128 v[25:28], v107 offset:272
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v9, v9, v29
	v_mul_f32_e32 v8, v8, v29
	v_mul_f32_e32 v35, v35, v17
	v_mul_f32_e32 v39, v39, v17
	v_mul_f32_e32 v38, v38, v17
	v_mul_f32_e32 v7, v7, v29
	v_mul_f32_e32 v33, v33, v17
	v_mul_f32_e32 v5, v5, v29
	v_mul_f32_e32 v15, v15, v29
	v_mul_f32_e32 v4, v4, v29
	v_mul_f32_e32 v1, v1, v29
	v_mul_f32_e32 v6, v6, v29
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[21:24], v107 offset:16
	.loc	1 1219 17                       ; ragged.py:1219:17
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v70, v8, v11
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v34, v34, v17 :: v_dual_fmac_f32 v81, v35, v26
	v_dual_mul_f32 v41, v41, v17 :: v_dual_fmac_f32 v62, v2, v27
	v_mul_f32_e32 v10, v10, v29
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_fmac_f32_e32 v80, v34, v27
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v40, v40, v17
	v_mul_f32_e32 v43, v43, v17
	v_mul_f32_e32 v37, v37, v17
	v_mul_f32_e32 v36, v36, v17
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_fmac_f32_e32 v68, v7, v12
	v_fmac_f32_e32 v86, v40, v11
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v42, v42, v17 :: v_dual_fmac_f32 v89, v43, v22
	v_mul_f32_e32 v45, v45, v17
	v_mul_f32_e32 v44, v44, v17
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[17:20], v107
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v16, v16, v29 :: v_dual_fmac_f32 v79, v33, v28
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v88, v42, v23 :: v_dual_fmac_f32 v87, v41, v24
	v_dual_fmac_f32 v73, v51, v22 :: v_dual_fmac_f32 v72, v10, v23
	v_dual_fmac_f32 v83, v37, v14 :: v_dual_fmac_f32 v82, v36, v25
	v_fmac_f32_e32 v71, v9, v24
	v_dual_fmac_f32 v66, v5, v14 :: v_dual_fmac_f32 v65, v4, v25
	v_dual_fmac_f32 v64, v3, v26 :: v_dual_fmac_f32 v61, v1, v28
	v_fmac_f32_e32 v67, v6, v13
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v92, v30, v17 :: v_dual_fmac_f32 v95, v31, v18
	v_dual_fmac_f32 v94, v32, v19 :: v_dual_fmac_f32 v93, v45, v20
	v_fmac_f32_e32 v90, v44, v21
	v_dual_fmac_f32 v78, v16, v17 :: v_dual_fmac_f32 v77, v15, v18
	v_dual_fmac_f32 v76, v46, v19 :: v_dual_fmac_f32 v85, v39, v12
	v_dual_fmac_f32 v84, v38, v13 :: v_dual_fmac_f32 v75, v47, v20
	v_fmac_f32_e32 v74, v48, v21
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	.loc	1 1120 27 is_stmt 1             ; ragged.py:1120:27
	s_and_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s35, s3
	s_delay_alu instid0(VALU_DEP_1)
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
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1121 30 is_stmt 1             ; ragged.py:1121:30
	s_add_i32 s10, s35, s34
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_mov_b32 s11, s23
	.loc	1 1130 46                       ; ragged.py:1130:46
	v_add_nc_u32_e32 v33, s10, v49
	.loc	1 1131 46                       ; ragged.py:1131:46
	s_add_i32 s10, s10, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s19
	s_add_i32 s10, s10, s29
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1130 38                       ; ragged.py:1130:38
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_add_nc_u32_e32 v35, s10, v50
	v_add_nc_u32_e32 v36, s10, v96
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_mov_b32 s10, s22
	.loc	1 1130 38                       ; ragged.py:1130:38
	buffer_load_b64 v[33:34], v33, s[20:23], 0 offen
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_cndmask_b32_e64 v35, 0x80000000, v35, s4
	buffer_load_b128 v[51:54], v35, s[8:11], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v36, s4
	buffer_load_b128 v[55:58], v35, s[8:11], 0 offen
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1142 25                       ; ragged.py:1142:25
	s_add_i32 s10, s35, 32
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cmp_lt_i32 s35, 32
	s_mov_b32 s35, s10
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt vmcnt(2)
	ds_store_b64 v100, v[33:34]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[45:48], v101 offset1:1
	ds_load_2addr_stride64_b64 v[41:44], v102 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v103 offset1:1
	ds_load_2addr_stride64_b64 v[33:36], v104 offset1:1
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b128 v105, v[51:54]
	s_waitcnt vmcnt(0)
	ds_store_b128 v105, v[55:58] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1132 35                       ; ragged.py:1132:35
	ds_load_u8 v51, v97 offset:640
	ds_load_u8 v52, v97 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v97 offset:896
	ds_load_u8 v53, v97 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v52, 16, v51
	ds_load_u8 v51, v97 offset:128
	ds_load_u8 v53, v97
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v53, v51, 0xc0c0004
	ds_load_u8 v53, v97 offset:384
	ds_load_u8 v54, v97 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v53, 16, v51
	ds_load_u8 v53, v97 offset:1664
	ds_load_u8 v54, v97 offset:1536
	v_wmma_i32_16x16x16_iu4 v[1:8], v[51:52], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[51:52], v[47:48], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v97 offset:1920
	ds_load_u8 v55, v97 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v97 offset:1152
	ds_load_u8 v55, v97 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v55, v53, 0xc0c0004
	ds_load_u8 v55, v97 offset:1408
	ds_load_u8 v56, v97 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v55, 16, v53
	ds_load_u8 v55, v97 offset:2688
	ds_load_u8 v56, v97 offset:2560
	v_wmma_i32_16x16x16_iu4 v[1:8], v[53:54], v[41:42], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[43:44], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v97 offset:2944
	ds_load_u8 v57, v97 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v56, 16, v55
	ds_load_u8 v55, v97 offset:2176
	ds_load_u8 v57, v97 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v57, v55, 0xc0c0004
	ds_load_u8 v57, v97 offset:2432
	ds_load_u8 v58, v97 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v57, 16, v55
	ds_load_u8 v57, v97 offset:3712
	ds_load_u8 v58, v97 offset:3584
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[37:38], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[55:56], v[39:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v97 offset:3968
	ds_load_u8 v59, v97 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v97 offset:3200
	ds_load_u8 v59, v97 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	ds_load_u8 v59, v97 offset:3456
	ds_load_u8 v60, v97 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v59, 16, v57
	ds_load_u8 v59, v97 offset:704
	ds_load_u8 v60, v97 offset:576
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[35:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v97 offset:960
	ds_load_u8 v108, v97 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v108, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v60, 16, v59
	ds_load_u8 v59, v97 offset:192
	ds_load_u8 v108, v97 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v108, v59, 0xc0c0004
	ds_load_u8 v108, v97 offset:448
	ds_load_u8 v109, v97 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v108, 16, v59
	v_wmma_i32_16x16x16_iu4 v[9:16], v[59:60], v[45:46], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v97 offset:1728
	ds_load_u8 v46, v97 offset:1600
	v_wmma_i32_16x16x16_iu4 v[25:32], v[59:60], v[47:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v97 offset:1984
	ds_load_u8 v108, v97 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v108, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v97 offset:1216
	ds_load_u8 v108, v97 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v108, v45, 0xc0c0004
	ds_load_u8 v108, v97 offset:1472
	ds_load_u8 v109, v97 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v108, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[41:42], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v41, v97 offset:2752
	ds_load_u8 v42, v97 offset:2624
	v_wmma_i32_16x16x16_iu4 v[25:32], v[45:46], v[43:44], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v97 offset:3008
	ds_load_u8 v108, v97 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v108, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v97 offset:2240
	ds_load_u8 v108, v97 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v108, v41, 0xc0c0004
	ds_load_u8 v108, v97 offset:2496
	ds_load_u8 v109, v97 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v108, 16, v41
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[37:38], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v37, v97 offset:3776
	ds_load_u8 v38, v97 offset:3648
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[39:40], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v97 offset:4032
	ds_load_u8 v108, v97 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v108, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v97 offset:3264
	ds_load_u8 v108, v97 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v108, v37, 0xc0c0004
	ds_load_u8 v108, v97 offset:3520
	ds_load_u8 v109, v97 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v108, 16, v37
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[37:38], v[35:36], v[25:32] neg_lo:[1,1,0]
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v48, v1
	v_cvt_f32_i32_e32 v47, v2
	v_cvt_f32_i32_e32 v46, v3
	v_cvt_f32_i32_e32 v45, v4
	v_cvt_f32_i32_e32 v44, v5
	v_cvt_f32_i32_e32 v43, v6
	v_cvt_f32_i32_e32 v42, v7
	v_cvt_f32_i32_e32 v41, v8
	v_cvt_f32_i32_e32 v40, v9
	v_cvt_f32_i32_e32 v39, v10
	v_cvt_f32_i32_e32 v38, v11
	v_cvt_f32_i32_e32 v37, v12
	v_cvt_f32_i32_e32 v36, v13
	v_cvt_f32_i32_e32 v35, v14
	v_cvt_f32_i32_e32 v34, v15
	v_cvt_f32_i32_e32 v33, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	v_cvt_f32_i32_e32 v12, v21
	v_cvt_f32_i32_e32 v11, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v9, v24
	v_cvt_f32_i32_e32 v8, v25
	v_cvt_f32_i32_e32 v7, v26
	v_cvt_f32_i32_e32 v6, v27
	v_cvt_f32_i32_e32 v5, v28
	v_cvt_f32_i32_e32 v4, v29
	v_cvt_f32_i32_e32 v3, v30
	v_cvt_f32_i32_e32 v2, v31
	v_cvt_f32_i32_e32 v1, v32
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge4
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mul_lo_u32 v2, s19, v63
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v1, 1, v69
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v3, v92, 16, 1
	v_bfe_u32 v5, v95, 16, 1
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	s_mul_i32 s0, s28, s19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s0, s0, s29
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v4, s29, v1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v6, v94, 16, 1
	v_add3_u32 v3, v92, v3, 0x7fff
	v_bfe_u32 v8, v93, 16, 1
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_add3_u32 v16, s0, v1, v2
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v2, v95, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v95, v95
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v7, 64, v4
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s19, v4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b16 v1.l, 0x7fff, v3.h, vcc_lo
	v_add3_u32 v3, v94, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v94, v94
	v_add3_u32 v4, v93, v8, 0x7fff
	v_cmp_o_f32_e64 s4, v93, v93
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v90, 16, 1
	v_bfe_u32 v5, v89, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s3
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s4
	v_bfe_u32 v4, v88, 16, 1
	v_add3_u32 v2, v90, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v90, v90
	v_add3_u32 v5, v89, v5, 0x7fff
	v_cmp_o_f32_e64 s3, v89, v89
	v_bfe_u32 v6, v87, 16, 1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v4, v88, v4, 0x7fff
	v_cmp_o_f32_e64 s4, v88, v88
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s1
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s3
	v_bfe_u32 v5, v86, 16, 1
	v_bfe_u32 v7, v85, 16, 1
	v_add3_u32 v6, v87, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v87, v87
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s4
	v_add3_u32 v5, v86, v5, 0x7fff
	v_cmp_o_f32_e64 s3, v86, v86
	v_add3_u32 v7, v85, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v85, v85
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v84, 16, 1
	v_bfe_u32 v8, v83, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s3
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s4
	v_bfe_u32 v7, v82, 16, 1
	v_add3_u32 v6, v84, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v84, v84
	v_add3_u32 v8, v83, v8, 0x7fff
	v_cmp_o_f32_e64 s3, v83, v83
	v_bfe_u32 v9, v81, 16, 1
	v_add3_u32 v7, v82, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v82, v82
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s1
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s3
	v_bfe_u32 v8, v80, 16, 1
	v_bfe_u32 v10, v79, 16, 1
	v_add3_u32 v9, v81, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v81, v81
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s4
	v_add3_u32 v8, v80, v8, 0x7fff
	v_cmp_o_f32_e64 s3, v80, v80
	v_add3_u32 v10, v79, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v79, v79
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s1
	v_bfe_u32 v9, v78, 16, 1
	v_bfe_u32 v11, v77, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s3
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s4
	v_bfe_u32 v10, v76, 16, 1
	v_add3_u32 v9, v78, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v78, v78
	v_add3_u32 v11, v77, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v77, v77
	v_bfe_u32 v12, v75, 16, 1
	v_add3_u32 v10, v76, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v76, v76
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s1
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s3
	v_bfe_u32 v11, v74, 16, 1
	v_bfe_u32 v13, v73, 16, 1
	v_add3_u32 v12, v75, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v75, v75
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_add3_u32 v11, v74, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v74, v74
	v_add3_u32 v13, v73, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v73, v73
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s1
	v_bfe_u32 v12, v72, 16, 1
	v_bfe_u32 v14, v71, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s3
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v70, 16, 1
	v_add3_u32 v12, v72, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v72, v72
	v_add3_u32 v14, v71, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v71, v71
	v_bfe_u32 v15, v68, 16, 1
	v_add3_u32 v13, v70, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v70, v70
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s1
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s3
	v_bfe_u32 v14, v67, 16, 1
	v_bfe_u32 v17, v66, 16, 1
	v_add3_u32 v15, v68, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v68, v68
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s4
	v_add3_u32 v14, v67, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v67, v67
	v_add3_u32 v17, v66, v17, 0x7fff
	v_cmp_o_f32_e64 s4, v66, v66
	v_bfe_u32 v18, v65, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s1
	v_bfe_u32 v15, v64, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s3
	v_cndmask_b16 v14.h, 0x7fff, v17.h, s4
	v_add3_u32 v17, v65, v18, 0x7fff
	v_bfe_u32 v18, v62, 16, 1
	v_cmp_o_f32_e64 s1, v65, v65
	v_bfe_u32 v19, v61, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v15, v64, v15, 0x7fff
	v_add3_u32 v18, v62, v18, 0x7fff
	v_cmp_o_f32_e64 s4, v62, v62
	v_add3_u32 v19, v61, v19, 0x7fff
	v_cmp_o_f32_e64 s5, v61, v61
	v_cndmask_b16 v15.l, 0x7fff, v17.h, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v18.h, s4
	v_cmp_o_f32_e64 s3, v64, v64
	v_cndmask_b16 v0.h, 0x7fff, v19.h, s5
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e64 v17, v2, v1, s1
	v_cndmask_b32_e64 v1, v1, v2, s1
	v_cndmask_b32_e64 v18, v4, v3, s1
	v_cndmask_b32_e64 v2, v3, v4, s1
	v_cndmask_b32_e64 v19, v7, v5, s1
	v_cndmask_b32_e64 v3, v5, v7, s1
	v_mov_b32_e32 v4, 0x5410
	v_mov_b32_e32 v5, 0x7632
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s3
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v7, v8, v6, s1
	v_cndmask_b32_e64 v4, 0x1054, v4, s1
	v_cndmask_b32_e64 v5, 0x3276, v5, s1
	v_cndmask_b32_e64 v6, v6, v8, s1
	v_cndmask_b32_e64 v20, v11, v9, s1
	v_cndmask_b32_e64 v8, v9, v11, s1
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v5, v5, 8, v5
	v_cndmask_b32_e64 v11, v12, v10, s1
	v_cndmask_b32_e64 v9, v10, v12, s1
	v_permlanex16_b32 v12, v2, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v5, 0x760076, v5
	v_cndmask_b32_e64 v21, v15, v13, s1
	v_cndmask_b32_e64 v10, v13, v15, s1
	v_cndmask_b32_e64 v15, v0, v14, s1
	v_lshl_or_b32 v2, v4, 4, v4
	v_lshl_or_b32 v4, v5, 4, v5
	v_cndmask_b32_e64 v0, v14, v0, s1
	v_permlanex16_b32 v1, v1, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v3, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 0x5040504, v2
	v_and_b32_e32 v23, 0x7060706, v4
	v_permlanex16_b32 v26, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v6, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v17, v22
	v_perm_b32 v1, v1, v17, v23
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_lshlrev_b32_e32 v17, 1, v16
	v_add_lshl_u32 v16, v16, s7, 1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v2, v12, v18, v22
	v_perm_b32 v3, v12, v18, v23
	v_permlanex16_b32 v24, v9, s3, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v18, 0x80, v17
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s1, s6, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_permlanex16_b32 v25, v10, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v5, v19, v22
	v_perm_b32 v5, v5, v19, v23
	v_add_nc_u32_e32 v19, 0x80, v16
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s6, vcc_lo
	s_and_b32 s0, s2, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v6, v13, v7, v22
	v_perm_b32 v7, v13, v7, v23
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v8, v14, v20, v22
	v_perm_b32 v9, v14, v20, v23
	v_perm_b32 v10, v24, v11, v22
	v_perm_b32 v11, v24, v11, v23
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_perm_b32 v12, v25, v21, v22
	v_perm_b32 v13, v25, v21, v23
	v_perm_b32 v14, v26, v15, v22
	v_perm_b32 v15, v26, v15, v23
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v17, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v18, s[16:19], 0 offen
	buffer_store_b128 v[8:11], v16, s[16:19], 0 offen
	buffer_store_b128 v[12:15], v19, s[16:19], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 110
		.amdhsa_next_free_sgpr 36
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
		.amdhsa_inst_pref_size 44
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 110
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5564
; TotalNumSgprs: 38
; NumVgprs: 110
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 38
; NumVGPRsForWavesPerEU: 110
; Occupancy: 12
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
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	995                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	996                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
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
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
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
      - .offset:         60
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     110
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
