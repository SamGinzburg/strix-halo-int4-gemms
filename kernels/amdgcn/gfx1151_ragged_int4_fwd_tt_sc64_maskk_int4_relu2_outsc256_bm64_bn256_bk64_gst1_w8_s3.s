	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v3, 63, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s41, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s41, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s41, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[36:37], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s34, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[1:2]
	v_add_nc_u32_e32 v1, s34, v3
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 0x80, v0
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v103, 15, v0
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v104, 0xf0, v0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_mov_b32_e32 v47, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s42, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s6, s34, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s35, 0, s6
	v_mov_b32_e32 v37, 0
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[2:3]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s2, s4
	s_addc_u32 s5, s3, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[2:3]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v2, s34, v103
	s_clause 0x1
	s_load_b32 s43, s[0:1], 0x58
	s_load_b32 s44, s[0:1], 0x50
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[4:5]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[4:5]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v3, v2, s40
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s3, s41, 8
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v5, 32, v2
	v_or_b32_e32 v35, s3, v0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v114, 0
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v3, off          ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 16, v2
	v_add_nc_u32_e32 v2, 48, v2
	v_bfe_i32 v42, v0, 7, 1
	v_dual_mov_b32 v110, 0 :: v_dual_lshlrev_b32 v43, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v3, v3, s40
	v_mul_lo_u32 v2, v2, s40
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v44, 0x7f, v0
	v_dual_mov_b32 v111, 0 :: v_dual_and_b32 v42, 0x88, v42
	v_dual_mov_b32 v108, 0 :: v_dual_lshlrev_b32 v45, 5, v103
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:4
	scratch_store_b32 off, v2, off offset:12
	v_dual_mov_b32 v115, 0 :: v_dual_and_b32 v2, 0xe0, v0
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v46, 24, v43
	.loc	1 1045 36 is_stmt 0             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v4, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v2, 4, v2
	v_xor_b32_e32 v42, v42, v44
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[38:39], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[8:9]
	v_or3_b32 v44, v45, v46, v2
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v2, 5, v0
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v3, s3, v4
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v4, v5, s40
	v_dual_mov_b32 v100, 0 :: v_dual_lshlrev_b32 v53, 2, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v2, 32, v2
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s43, s33
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s6
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s4, s7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[36:37], v[6:7]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	scratch_store_b32 off, v4, off offset:8 ; 4-byte Folded Spill
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v34, 0xf8, v3
	v_or_b32_e32 v33, 0xf0, v3
	v_or_b32_e32 v32, 0xe8, v3
	v_or_b32_e32 v31, 0xe0, v3
	v_or_b32_e32 v30, 0xd8, v3
	v_or_b32_e32 v29, 0xd0, v3
	v_or_b32_e32 v28, 0xc8, v3
	v_or_b32_e32 v27, 0xc0, v3
	v_or_b32_e32 v26, 0xb8, v3
	v_or_b32_e32 v25, 0xb0, v3
	v_or_b32_e32 v24, 0xa8, v3
	v_or_b32_e32 v23, 0xa0, v3
	v_or_b32_e32 v22, 0x98, v3
	v_or_b32_e32 v21, 0x90, v3
	v_or_b32_e32 v20, 0x88, v3
	v_or_b32_e32 v19, 0x80, v3
	v_or_b32_e32 v18, 0x78, v3
	v_or_b32_e32 v17, 0x70, v3
	v_or_b32_e32 v16, 0x68, v3
	v_or_b32_e32 v15, 0x60, v3
	v_or_b32_e32 v14, 0x58, v3
	v_or_b32_e32 v13, 0x50, v3
	v_or_b32_e32 v12, 0x48, v3
	v_or_b32_e32 v11, 64, v3
	v_or_b32_e32 v10, 56, v3
	v_or_b32_e32 v9, 48, v3
	v_or_b32_e32 v8, 40, v3
	v_or_b32_e32 v7, 32, v3
	v_or_b32_e32 v6, 24, v3
	v_or_b32_e32 v5, 16, v3
	v_or_b32_e32 v4, 8, v3
	v_add3_u32 v53, 0, v53, v2
	v_mad_u64_u32 v[2:3], null, v3, s43, s[6:7]
	scratch_store_b32 off, v35, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v47, 0x300, v0
	v_or_b32_e32 v48, 0x700, v0
	v_or_b32_e32 v45, 0x3f0, v0
	v_or_b32_e32 v46, 0x7f0, v0
	v_xor_b32_e32 v49, 0x110, v42
	scratch_store_b64 off, v[2:3], off offset:20 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v4, s43, s[6:7]
	v_xor_b32_e32 v50, 8, v44
	v_xor_b32_e32 v51, 16, v44
	v_xor_b32_e32 v52, 24, v44
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v43, 28, v43
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v54, 1, v104
	scratch_store_b64 off, v[2:3], off offset:28 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v5, s43, s[6:7]
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v57, 0, v103
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v93, 0, v0
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v95, 0, v47
	scratch_store_b64 off, v[2:3], off offset:36 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v6, s43, s[6:7]
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v97, 0, v48
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v99, 0, v45
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v101, 0, v46
	scratch_store_b64 off, v[2:3], off offset:44 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v7, s43, s[6:7]
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v103, 0, v42
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v104, 0, v49
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v105, 0, v44
	scratch_store_b64 off, v[2:3], off offset:52 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v8, s43, s[6:7]
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v106, 0, v50
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v107, 0, v51
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v109, 0, v52
	scratch_store_b64 off, v[2:3], off offset:60 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v9, s43, s[6:7]
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v116, v53, v43
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v118, 0, v54
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v73, 0
	scratch_store_b64 off, v[2:3], off offset:68 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v10, s43, s[6:7]
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	scratch_store_b64 off, v[2:3], off offset:76 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v11, s43, s[6:7]
	v_mad_u64_u32 v[11:12], null, v12, s43, s[6:7]
	v_mad_u64_u32 v[12:13], null, v13, s43, s[6:7]
	v_mad_u64_u32 v[13:14], null, v14, s43, s[6:7]
	v_mad_u64_u32 v[14:15], null, v15, s43, s[6:7]
	v_mad_u64_u32 v[15:16], null, v16, s43, s[6:7]
	v_mad_u64_u32 v[16:17], null, v17, s43, s[6:7]
	v_mad_u64_u32 v[17:18], null, v18, s43, s[6:7]
	v_mad_u64_u32 v[18:19], null, v19, s43, s[6:7]
	v_mad_u64_u32 v[19:20], null, v20, s43, s[6:7]
	v_mad_u64_u32 v[20:21], null, v21, s43, s[6:7]
	v_mad_u64_u32 v[21:22], null, v22, s43, s[6:7]
	v_mad_u64_u32 v[22:23], null, v23, s43, s[6:7]
	v_mad_u64_u32 v[23:24], null, v24, s43, s[6:7]
	v_mad_u64_u32 v[24:25], null, v25, s43, s[6:7]
	v_mad_u64_u32 v[25:26], null, v26, s43, s[6:7]
	v_mad_u64_u32 v[26:27], null, v27, s43, s[6:7]
	v_mad_u64_u32 v[27:28], null, v28, s43, s[6:7]
	v_mad_u64_u32 v[28:29], null, v29, s43, s[6:7]
	v_mad_u64_u32 v[29:30], null, v30, s43, s[6:7]
	v_mad_u64_u32 v[30:31], null, v31, s43, s[6:7]
	v_mad_u64_u32 v[31:32], null, v32, s43, s[6:7]
	v_mad_u64_u32 v[32:33], null, v33, s43, s[6:7]
	v_mad_u64_u32 v[33:34], null, v34, s43, s[6:7]
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v34, 0
	s_mov_b32 s4, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s45, s40, s7
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_mov_b32 s46, s4
	scratch_store_b64 off, v[2:3], off offset:84 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v119, 6, v0
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s14, s46, 5
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s30, s22
	v_or_b32_e32 v121, s14, v119
	s_mov_b32 s31, s23
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s15, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_mad_u64_u32 v[119:120], null, v121, s44, v[1:2]
	v_cmp_gt_i32_e64 s3, s43, v121
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v151, 0x80000000, v119, s3
	v_or_b32_e32 v119, 4, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s3, s43, v119
	v_mad_u64_u32 v[119:120], null, v119, s44, v[1:2]
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v152, 0x80000000, v119, s3
	v_or_b32_e32 v119, 8, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s3, s43, v119
	v_mad_u64_u32 v[119:120], null, v119, s44, v[1:2]
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v153, 0x80000000, v119, s3
	v_or_b32_e32 v119, 12, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s3, s43, v119
	v_mad_u64_u32 v[119:120], null, v119, s44, v[1:2]
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v154, 0x80000000, v119, s3
	v_or_b32_e32 v119, 16, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s3, s43, v119
	v_mad_u64_u32 v[119:120], null, v119, s44, v[1:2]
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v155, 0x80000000, v119, s3
	v_or_b32_e32 v119, 20, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s3, s43, v119
	v_mad_u64_u32 v[119:120], null, v119, s44, v[1:2]
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v156, 0x80000000, v119, s3
	v_or_b32_e32 v119, 24, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s3, s43, v119
	v_mad_u64_u32 v[119:120], null, v119, s44, v[1:2]
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v157, 0x80000000, v119, s3
	v_or_b32_e32 v119, 28, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s3, s43, v119
	v_mad_u64_u32 v[119:120], null, v119, s44, v[1:2]
	scratch_load_b64 v[2:3], off, off offset:20 ; 8-byte Folded Reload
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v158, 0x80000000, v119, s3
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v119, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b32_e32 v119, s14, v119
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s14, s22
	v_cmp_gt_i32_e64 s3, s43, v119
	v_add_nc_u32_e32 v129, v11, v119
	v_add_nc_u32_e32 v130, v12, v119
	v_add_nc_u32_e32 v131, v13, v119
	v_add_nc_u32_e32 v132, v14, v119
	v_add_nc_u32_e32 v133, v15, v119
	v_add_nc_u32_e32 v135, v17, v119
	v_add_nc_u32_e32 v150, v32, v119
	v_add_nc_u32_e32 v134, v16, v119
	v_add_nc_u32_e32 v136, v18, v119
	v_add_nc_u32_e32 v137, v19, v119
	v_add_nc_u32_e32 v138, v20, v119
	v_add_nc_u32_e32 v139, v21, v119
	v_add_nc_u32_e32 v140, v22, v119
	v_add_nc_u32_e32 v141, v23, v119
	v_add_nc_u32_e32 v142, v24, v119
	v_add_nc_u32_e32 v143, v25, v119
	v_add_nc_u32_e32 v144, v26, v119
	v_add_nc_u32_e32 v145, v27, v119
	v_add_nc_u32_e32 v146, v28, v119
	v_add_nc_u32_e32 v147, v29, v119
	v_add_nc_u32_e32 v148, v30, v119
	v_add_nc_u32_e32 v149, v31, v119
	v_cndmask_b32_e64 v129, 0x80000000, v129, s3
	v_cndmask_b32_e64 v130, 0x80000000, v130, s3
	v_cndmask_b32_e64 v131, 0x80000000, v131, s3
	v_cndmask_b32_e64 v132, 0x80000000, v132, s3
	v_cndmask_b32_e64 v133, 0x80000000, v133, s3
	v_cndmask_b32_e64 v135, 0x80000000, v135, s3
	v_cndmask_b32_e64 v150, 0x80000000, v150, s3
	v_cndmask_b32_e64 v159, 0x80000000, v134, s3
	v_cndmask_b32_e64 v160, 0x80000000, v136, s3
	v_cndmask_b32_e64 v161, 0x80000000, v137, s3
	v_cndmask_b32_e64 v162, 0x80000000, v138, s3
	v_cndmask_b32_e64 v163, 0x80000000, v139, s3
	v_cndmask_b32_e64 v164, 0x80000000, v140, s3
	v_cndmask_b32_e64 v165, 0x80000000, v141, s3
	v_cndmask_b32_e64 v166, 0x80000000, v142, s3
	v_cndmask_b32_e64 v167, 0x80000000, v143, s3
	v_cndmask_b32_e64 v168, 0x80000000, v144, s3
	v_cndmask_b32_e64 v169, 0x80000000, v145, s3
	v_cndmask_b32_e64 v170, 0x80000000, v146, s3
	v_cndmask_b32_e64 v171, 0x80000000, v147, s3
	v_cndmask_b32_e64 v172, 0x80000000, v148, s3
	v_cndmask_b32_e64 v173, 0x80000000, v149, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v120, v2, v119
	scratch_load_b64 v[2:3], off, off offset:28 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v120, 0x80000000, v120, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v121, v2, v119
	scratch_load_b64 v[2:3], off, off offset:36 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v121, 0x80000000, v121, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v122, v2, v119
	scratch_load_b64 v[2:3], off, off offset:44 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v122, 0x80000000, v122, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, v2, v119
	scratch_load_b64 v[2:3], off, off offset:52 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v123, 0x80000000, v123, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v124, v2, v119
	scratch_load_b64 v[2:3], off, off offset:60 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v124, 0x80000000, v124, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v125, v2, v119
	scratch_load_b64 v[2:3], off, off offset:68 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v125, 0x80000000, v125, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v126, v2, v119
	scratch_load_b64 v[2:3], off, off offset:76 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v126, 0x80000000, v126, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v127, v2, v119
	scratch_load_b64 v[2:3], off, off offset:84 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v127, 0x80000000, v127, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v128, v2, v119
	v_add_nc_u32_e32 v119, v33, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v128, 0x80000000, v128, s3
	v_cndmask_b32_e64 v174, 0x80000000, v119, s3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f
	buffer_load_u8 v134, v120, s[24:27], 0 offen
	buffer_load_u8 v119, v121, s[24:27], 0 offen
	buffer_load_u8 v136, v122, s[24:27], 0 offen
	buffer_load_u8 v120, v123, s[24:27], 0 offen
	buffer_load_u8 v137, v124, s[24:27], 0 offen
	buffer_load_u8 v121, v125, s[24:27], 0 offen
	buffer_load_u8 v138, v126, s[24:27], 0 offen
	buffer_load_u8 v122, v127, s[24:27], 0 offen
	buffer_load_u8 v139, v128, s[24:27], 0 offen
	buffer_load_u8 v123, v129, s[24:27], 0 offen
	buffer_load_u8 v140, v130, s[24:27], 0 offen
	buffer_load_u8 v124, v131, s[24:27], 0 offen
	buffer_load_u8 v141, v132, s[24:27], 0 offen
	buffer_load_u8 v125, v133, s[24:27], 0 offen
	buffer_load_u8 v142, v159, s[24:27], 0 offen
	buffer_load_u8 v126, v135, s[24:27], 0 offen
	buffer_load_u8 v143, v160, s[24:27], 0 offen
	buffer_load_u8 v127, v161, s[24:27], 0 offen
	buffer_load_u8 v144, v162, s[24:27], 0 offen
	buffer_load_u8 v128, v163, s[24:27], 0 offen
	buffer_load_u8 v145, v164, s[24:27], 0 offen
	buffer_load_u8 v129, v165, s[24:27], 0 offen
	buffer_load_u8 v146, v166, s[24:27], 0 offen
	buffer_load_u8 v130, v167, s[24:27], 0 offen
	buffer_load_u8 v147, v168, s[24:27], 0 offen
	buffer_load_u8 v131, v169, s[24:27], 0 offen
	buffer_load_u8 v148, v170, s[24:27], 0 offen
	buffer_load_u8 v132, v171, s[24:27], 0 offen
	buffer_load_u8 v149, v172, s[24:27], 0 offen
	buffer_load_u8 v133, v173, s[24:27], 0 offen
	buffer_load_u8 v150, v150, s[24:27], 0 offen
	buffer_load_u8 v135, v174, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v151, v151, s[20:23], 0 offen
	buffer_load_u8 v152, v152, s[20:23], 0 offen
	buffer_load_u8 v153, v153, s[20:23], 0 offen
	buffer_load_u8 v155, v155, s[20:23], 0 offen
	buffer_load_u8 v156, v156, s[20:23], 0 offen
	buffer_load_u8 v157, v157, s[20:23], 0 offen
	buffer_load_u8 v158, v158, s[20:23], 0 offen
	buffer_load_u8 v154, v154, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s46, s45
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(7)
	ds_store_b8 v93, v151
	s_waitcnt vmcnt(6)
	ds_store_b8 v93, v152 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v93, v153 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v93, v155 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v93, v156 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v95, v154
	ds_store_b8 v93, v157 offset:1536
	ds_store_b8 v97, v158
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v153, v57 offset:320
	ds_load_u8 v154, v57 offset:256
	ds_load_u8 v197, v57 offset:336
	ds_load_u8 v198, v57 offset:272
	ds_load_u8 v162, v57 offset:352
	ds_load_u8 v163, v57 offset:288
	ds_load_u8 v151, v57 offset:368
	ds_load_u8 v152, v57 offset:304
	ds_load_u8 v247, v57 offset:1168
	ds_load_u8 v248, v57 offset:1184
	ds_load_u8 v249, v57 offset:1040
	ds_load_u8 v250, v57 offset:1056
	ds_load_u8 v251, v57 offset:1424
	ds_load_u8 v252, v57 offset:1440
	ds_load_u8 v253, v57 offset:1296
	ds_load_u8 v254, v57 offset:1312
	ds_load_u8 v255, v57 offset:1680
	ds_load_u8 v36, v57 offset:1696
	ds_load_u8 v35, v57 offset:1552
	ds_load_u8 v38, v57 offset:1568
	ds_load_u8 v39, v57 offset:1936
	ds_load_u8 v40, v57 offset:1952
	ds_load_u8 v41, v57 offset:1808
	ds_load_u8 v72, v57 offset:1824
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s33
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v159, v154, v153, 0xc0c0004
	ds_load_u8 v155, v57 offset:448
	ds_load_u8 v156, v57 offset:384
	ds_load_u8 v199, v57 offset:464
	ds_load_u8 v200, v57 offset:400
	ds_load_u8 v166, v57 offset:480
	ds_load_u8 v167, v57 offset:416
	ds_load_u8 v153, v57 offset:496
	ds_load_u8 v154, v57 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v160, v156, v155, 0xc0c0004
	ds_load_u8 v157, v57 offset:64
	ds_load_u8 v158, v57
	ds_load_u8 v201, v57 offset:80
	ds_load_u8 v171, v57 offset:96
	ds_load_u8 v155, v57 offset:112
	ds_load_u8 v202, v57 offset:16
	ds_load_u8 v174, v57 offset:32
	ds_load_u8 v156, v57 offset:48
	v_lshl_or_b32 v190, v160, 16, v159
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v161, v158, v157, 0xc0c0004
	ds_load_u8 v164, v57 offset:192
	ds_load_u8 v165, v57 offset:128
	ds_load_u8 v203, v57 offset:208
	ds_load_u8 v204, v57 offset:144
	ds_load_u8 v177, v57 offset:224
	ds_load_u8 v178, v57 offset:160
	ds_load_u8 v157, v57 offset:240
	ds_load_u8 v158, v57 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v164, 16, v161
	ds_load_u8 v161, v57 offset:832
	ds_load_u8 v164, v57 offset:768
	ds_load_u8 v205, v57 offset:848
	ds_load_u8 v206, v57 offset:784
	ds_load_u8 v179, v57 offset:864
	ds_load_u8 v180, v57 offset:800
	ds_load_u8 v159, v57 offset:880
	ds_load_u8 v160, v57 offset:816
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v168, v164, v161, 0xc0c0004
	ds_load_u8 v164, v57 offset:960
	ds_load_u8 v165, v57 offset:896
	ds_load_u8 v207, v57 offset:976
	ds_load_u8 v208, v57 offset:912
	ds_load_u8 v209, v57 offset:992
	ds_load_u8 v210, v57 offset:928
	ds_load_u8 v161, v57 offset:944
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v172, v165, v164, 0xc0c0004
	ds_load_u8 v169, v57 offset:576
	ds_load_u8 v170, v57 offset:512
	ds_load_u8 v211, v57 offset:592
	ds_load_u8 v212, v57 offset:528
	ds_load_u8 v213, v57 offset:608
	ds_load_u8 v214, v57 offset:544
	ds_load_u8 v164, v57 offset:624
	ds_load_u8 v165, v57 offset:560
	v_lshl_or_b32 v192, v172, 16, v168
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v173, v170, v169, 0xc0c0004
	ds_load_u8 v175, v57 offset:704
	ds_load_u8 v176, v57 offset:640
	ds_load_u8 v215, v57 offset:720
	ds_load_u8 v216, v57 offset:656
	ds_load_u8 v217, v57 offset:736
	ds_load_u8 v218, v57 offset:672
	ds_load_u8 v169, v57 offset:752
	ds_load_u8 v170, v57 offset:688
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v175, 16, v173
	ds_load_u8 v175, v57 offset:1344
	ds_load_u8 v176, v57 offset:1280
	ds_load_u8 v168, v57 offset:1264
	ds_load_u8 v219, v57 offset:1360
	ds_load_u8 v220, v57 offset:1376
	ds_load_u8 v172, v57 offset:1392
	ds_load_u8 v173, v57 offset:1328
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v181, v176, v175, 0xc0c0004
	ds_load_u8 v182, v57 offset:1408
	ds_load_u8 v183, v57 offset:1472
	ds_load_u8 v221, v57 offset:1488
	ds_load_u8 v222, v57 offset:1504
	ds_load_u8 v175, v57 offset:1520
	ds_load_u8 v176, v57 offset:1456
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v182, v182, v183, 0xc0c0004
	ds_load_u8 v183, v57 offset:1024
	ds_load_u8 v184, v57 offset:1088
	ds_load_u8 v223, v57 offset:1104
	ds_load_u8 v224, v57 offset:1120
	ds_load_u8 v225, v57 offset:1136
	ds_load_u8 v226, v57 offset:1072
	v_lshl_or_b32 v194, v182, 16, v181
	ds_load_u8 v181, v57 offset:1792
	ds_load_u8 v182, v57 offset:1856
	ds_load_u8 v230, v57 offset:1872
	ds_load_u8 v231, v57 offset:1888
	ds_load_u8 v232, v57 offset:1904
	ds_load_u8 v233, v57 offset:1840
	ds_load_u8 v234, v57 offset:1776
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v183, v183, v184, 0xc0c0004
	ds_load_u8 v184, v57 offset:1152
	ds_load_u8 v185, v57 offset:1216
	ds_load_u8 v227, v57 offset:1232
	ds_load_u8 v228, v57 offset:1248
	ds_load_u8 v229, v57 offset:1200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v181, v181, v182, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v41, v41, v230, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v72, v72, v231, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v184, v184, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v193, v184, 16, v183
	ds_load_u8 v182, v57 offset:1920
	ds_load_u8 v183, v57 offset:1984
	ds_load_u8 v235, v57 offset:2000
	ds_load_u8 v236, v57 offset:2016
	ds_load_u8 v237, v99
	ds_load_u8 v238, v101
	ds_load_u8 v239, v57 offset:1968
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v182, v182, v183, 0xc0c0004
	ds_load_u8 v183, v57 offset:1536
	ds_load_u8 v184, v57 offset:1600
	ds_load_u8 v240, v57 offset:1616
	ds_load_u8 v241, v57 offset:1632
	ds_load_u8 v242, v57 offset:1648
	ds_load_u8 v243, v57 offset:1584
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v39, v39, v235, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v40, v40, v236, 0xc0c0004
	v_lshl_or_b32 v196, v182, 16, v181
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v183, v183, v184, 0xc0c0004
	ds_load_u8 v184, v57 offset:1664
	ds_load_u8 v185, v57 offset:1728
	ds_load_u8 v244, v57 offset:1744
	ds_load_u8 v245, v57 offset:1760
	ds_load_u8 v246, v57 offset:1712
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v103, v134
	ds_store_b8 v103, v136 offset:512
	ds_store_b8 v103, v137 offset:1024
	ds_store_b8 v103, v138 offset:1536
	ds_store_b8 v103, v139 offset:2048
	ds_store_b8 v103, v140 offset:2560
	ds_store_b8 v103, v141 offset:3072
	ds_store_b8 v103, v142 offset:3584
	ds_store_b8 v103, v143 offset:4096
	ds_store_b8 v103, v144 offset:4608
	ds_store_b8 v103, v145 offset:5120
	ds_store_b8 v103, v146 offset:5632
	ds_store_b8 v103, v147 offset:6144
	ds_store_b8 v103, v148 offset:6656
	ds_store_b8 v103, v149 offset:7168
	ds_store_b8 v103, v150 offset:7680
	ds_store_b8 v104, v119
	ds_store_b8 v104, v120 offset:512
	ds_store_b8 v104, v121 offset:1024
	ds_store_b8 v104, v122 offset:1536
	ds_store_b8 v104, v123 offset:2048
	ds_store_b8 v104, v124 offset:2560
	ds_store_b8 v104, v125 offset:3072
	ds_store_b8 v104, v126 offset:3584
	ds_store_b8 v104, v127 offset:4096
	ds_store_b8 v104, v128 offset:4608
	ds_store_b8 v104, v129 offset:5120
	ds_store_b8 v104, v130 offset:5632
	ds_store_b8 v104, v131 offset:6144
	ds_store_b8 v104, v132 offset:6656
	ds_store_b8 v104, v133 offset:7168
	ds_store_b8 v104, v135 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[142:145], v105 offset1:8
	ds_load_2addr_stride64_b64 v[146:149], v106 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v133, s11 :: v_dual_mov_b32 v132, s10
	v_dual_mov_b32 v131, s9 :: v_dual_mov_b32 v130, s8
	v_dual_mov_b32 v129, s7 :: v_dual_mov_b32 v128, s6
	v_dual_mov_b32 v127, s5 :: v_dual_mov_b32 v126, s4
	v_perm_b32 v35, v35, v240, 0xc0c0004
	v_perm_b32 v38, v38, v241, 0xc0c0004
	v_perm_b32 v184, v184, v185, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[185:188], v109 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v36, v36, v245, 0xc0c0004
	v_lshl_or_b32 v195, v184, 16, v183
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[181:184], v107 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[142:143], v[189:190], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[146:147], v[191:192], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[181:182], v[193:194], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[185:186], v[195:196], v[134:141] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v2, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v135
	v_cvt_f32_i32_e32 v4, v136
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v137
	v_cvt_f32_i32_e32 v6, v138
	v_cvt_f32_i32_e32 v7, v139
	v_cvt_f32_i32_e32 v8, v140
	v_cvt_f32_i32_e32 v9, v141
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[134:141], v[144:145], v[189:190], v[126:133] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[148:149], v[191:192], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[183:184], v[193:194], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[187:188], v[195:196], v[134:141] neg_lo:[1,1,0]
	v_lshl_or_b32 v196, v39, 16, v41
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v10, v134
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v125, v135
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v134, v198, v197, 0xc0c0004
	v_perm_b32 v135, v200, v199, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v124, v136
	v_cvt_f32_i32_e32 v123, v137
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v136, v202, v201, 0xc0c0004
	v_perm_b32 v137, v204, v203, 0xc0c0004
	v_lshl_or_b32 v190, v135, 16, v134
	v_perm_b32 v134, v206, v205, 0xc0c0004
	v_perm_b32 v135, v208, v207, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v119, v138
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v189, v137, 16, v136
	v_perm_b32 v136, v212, v211, 0xc0c0004
	v_perm_b32 v137, v216, v215, 0xc0c0004
	v_lshl_or_b32 v192, v135, 16, v134
	v_perm_b32 v134, v253, v219, 0xc0c0004
	v_perm_b32 v135, v251, v221, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v120, v139
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v191, v137, 16, v136
	v_perm_b32 v136, v249, v223, 0xc0c0004
	v_perm_b32 v137, v247, v227, 0xc0c0004
	v_lshl_or_b32 v194, v135, 16, v134
	v_perm_b32 v134, v255, v244, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v121, v140
	v_cvt_f32_i32_e32 v122, v141
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v193, v137, 16, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v195, v134, 16, v35
	v_wmma_i32_16x16x16_iu4 v[134:141], v[142:143], v[189:190], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[146:147], v[191:192], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[181:182], v[193:194], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[185:186], v[195:196], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v35, v134
	v_cvt_f32_i32_e32 v39, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v41, v136
	v_cvt_f32_i32_e32 v197, v137
	v_cvt_f32_i32_e32 v198, v138
	v_cvt_f32_i32_e32 v199, v139
	v_cvt_f32_i32_e32 v200, v140
	v_cvt_f32_i32_e32 v201, v141
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[134:141], v[144:145], v[189:190], v[126:133] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[148:149], v[191:192], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[183:184], v[193:194], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[187:188], v[195:196], v[134:141] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v189, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v190, v135
	v_cvt_f32_i32_e32 v191, v136
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v192, v137
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v134, v163, v162, 0xc0c0004
	v_perm_b32 v135, v167, v166, 0xc0c0004
	v_perm_b32 v136, v174, v171, 0xc0c0004
	v_perm_b32 v137, v178, v177, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v193, v138
	v_cvt_f32_i32_e32 v194, v139
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v163, v135, 16, v134
	v_perm_b32 v134, v180, v179, 0xc0c0004
	v_lshl_or_b32 v162, v137, 16, v136
	v_perm_b32 v135, v210, v209, 0xc0c0004
	v_perm_b32 v136, v214, v213, 0xc0c0004
	v_perm_b32 v137, v218, v217, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v195, v140
	v_cvt_f32_i32_e32 v196, v141
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v167, v135, 16, v134
	v_perm_b32 v134, v254, v220, 0xc0c0004
	v_lshl_or_b32 v166, v137, 16, v136
	v_perm_b32 v135, v252, v222, 0xc0c0004
	v_perm_b32 v136, v250, v224, 0xc0c0004
	v_perm_b32 v137, v248, v228, 0xc0c0004
	v_lshl_or_b32 v180, v40, 16, v72
	v_lshl_or_b32 v179, v36, 16, v38
	v_lshl_or_b32 v178, v135, 16, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v177, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[134:141], v[142:143], v[162:163], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[146:147], v[166:167], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[181:182], v[177:178], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[185:186], v[179:180], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v36, v134
	v_cvt_f32_i32_e32 v38, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v40, v136
	v_cvt_f32_i32_e32 v72, v137
	v_cvt_f32_i32_e32 v171, v138
	v_cvt_f32_i32_e32 v174, v139
	v_cvt_f32_i32_e32 v202, v140
	v_cvt_f32_i32_e32 v203, v141
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[134:141], v[144:145], v[162:163], v[126:133] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[148:149], v[166:167], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[183:184], v[177:178], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[187:188], v[179:180], v[134:141] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v162, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v163, v135
	v_cvt_f32_i32_e32 v166, v136
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v167, v137
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v134, v152, v151, 0xc0c0004
	v_perm_b32 v135, v154, v153, 0xc0c0004
	v_perm_b32 v136, v156, v155, 0xc0c0004
	v_perm_b32 v137, v158, v157, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v177, v138
	v_cvt_f32_i32_e32 v178, v139
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v151, v135, 16, v134
	v_perm_b32 v134, v165, v164, 0xc0c0004
	v_lshl_or_b32 v150, v137, 16, v136
	v_perm_b32 v135, v170, v169, 0xc0c0004
	v_perm_b32 v136, v160, v159, 0xc0c0004
	v_perm_b32 v137, v161, v237, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v179, v140
	v_cvt_f32_i32_e32 v180, v141
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v152, v135, 16, v134
	v_perm_b32 v134, v173, v172, 0xc0c0004
	v_lshl_or_b32 v153, v137, 16, v136
	v_perm_b32 v135, v176, v175, 0xc0c0004
	v_perm_b32 v136, v226, v225, 0xc0c0004
	v_perm_b32 v137, v229, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v155, v135, 16, v134
	v_perm_b32 v134, v243, v242, 0xc0c0004
	v_lshl_or_b32 v154, v137, 16, v136
	v_perm_b32 v135, v246, v234, 0xc0c0004
	v_perm_b32 v136, v233, v232, 0xc0c0004
	v_perm_b32 v137, v239, v238, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v156, v135, 16, v134
	v_lshl_or_b32 v157, v137, 16, v136
	v_wmma_i32_16x16x16_iu4 v[134:141], v[142:143], v[150:151], v[126:133] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[146:147], v[152:153], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[181:182], v[154:155], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[185:186], v[156:157], v[134:141] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v142, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v143, v135
	v_cvt_f32_i32_e32 v146, v136
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v147, v137
	v_cvt_f32_i32_e32 v158, v138
	v_cvt_f32_i32_e32 v159, v139
	v_cvt_f32_i32_e32 v160, v140
	v_cvt_f32_i32_e32 v161, v141
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[134:141], v[144:145], v[150:151], v[126:133] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v126, off, off
	scratch_load_b32 v127, off, off offset:4
	scratch_load_b32 v128, off, off offset:8
	scratch_load_b32 v129, off, off offset:12
	scratch_load_b32 v130, off, off offset:16
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[134:141], v[148:149], v[152:153], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[183:184], v[154:155], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[187:188], v[156:157], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v140, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v139, v139
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v126, s46, v126, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v127, s46, v127, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v128, s46, v128, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v129, s46, v129, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v130, v130, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v126, 0x80000000, v126, vcc_lo
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	v_cndmask_b32_e64 v128, 0x80000000, v128, s1
	v_cndmask_b32_e64 v129, 0x80000000, v129, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v130, v130, s[28:31], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v126, v126, s[12:15], 0 offen
	buffer_load_u16 v144, v127, s[12:15], 0 offen
	buffer_load_u16 v145, v128, s[12:15], 0 offen
	buffer_load_u16 v148, v129, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s46, s46, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s46, s40
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v127, 16, v130
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v149, 16, v126
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v116, v127
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[126:129], v118
	ds_load_b128 v[130:133], v118 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v2, v2, v149
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v37, v2, v126 :: v_dual_mul_f32 v2, v3, v149
	v_dual_fmac_f32 v117, v2, v127 :: v_dual_mul_f32 v2, v4, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v115, v2, v128 :: v_dual_mul_f32 v2, v5, v149
	v_fmac_f32_e32 v114, v2, v129
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v3, v35, v2
	v_mul_f32_e32 v35, v195, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v3, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v3, v39, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v3, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v3, v41, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v88, v3, v128 :: v_dual_mul_f32 v3, v197, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v3, v129
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v3, 16, v145
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v36, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v74, v4, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v38, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v4, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v40, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v71, v4, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v72, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v4, v129
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v142, v4
	v_mul_f32_e32 v40, v138, v4
	v_mul_f32_e32 v72, v140, v4
	v_dual_mul_f32 v41, v139, v4 :: v_dual_fmac_f32 v56, v5, v126
	v_mul_f32_e32 v5, v143, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v55, v5, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v146, v4
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v54, v5, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v5, v147, v4 :: v_dual_mul_f32 v36, v177, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v38, v178, v3 :: v_dual_fmac_f32 v53, v5, v129
	v_mul_f32_e32 v5, v6, v149
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v6, v120, v149 :: v_dual_fmac_f32 v113, v5, v130
	v_mul_f32_e32 v5, v7, v149
	v_mul_f32_e32 v7, v121, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v112, v5, v131 :: v_dual_mul_f32 v5, v8, v149
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v8, v122, v149 :: v_dual_fmac_f32 v111, v5, v132
	v_mul_f32_e32 v5, v9, v149
	v_mul_f32_e32 v9, v193, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v5, v133 :: v_dual_mul_f32 v5, v198, v2
	v_fmac_f32_e32 v86, v5, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v199, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v5, v131
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v200, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v5, v132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v201, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v83, v5, v133
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v171, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v69, v5, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v174, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v68, v5, v131
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v202, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v67, v5, v132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v203, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v66, v5, v133 :: v_dual_mul_f32 v5, v158, v4
	v_dual_fmac_f32 v52, v5, v130 :: v_dual_mul_f32 v5, v159, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v5, v131
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v160, v4
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v50, v5, v132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v161, v4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v49, v5, v133
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[126:129], v118 offset:512
	ds_load_b128 v[130:133], v118 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v10, v149
	v_mul_f32_e32 v10, v194, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v108, v5, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v5, v125, v149 :: v_dual_fmac_f32 v94, v6, v131
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v92, v7, v132 :: v_dual_fmac_f32 v91, v8, v133
	v_fmac_f32_e32 v78, v9, v130
	v_dual_fmac_f32 v102, v5, v127 :: v_dual_mul_f32 v5, v124, v149
	v_dual_fmac_f32 v77, v10, v131 :: v_dual_fmac_f32 v76, v35, v132
	v_dual_fmac_f32 v61, v36, v130 :: v_dual_fmac_f32 v60, v38, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v100, v5, v128 :: v_dual_mul_f32 v5, v123, v149
	v_dual_fmac_f32 v44, v40, v130 :: v_dual_fmac_f32 v43, v41, v131
	v_fmac_f32_e32 v42, v72, v132
	v_fmac_f32_e32 v98, v5, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v189, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v82, v5, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v190, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v81, v5, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v191, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v80, v5, v128 :: v_dual_mul_f32 v5, v192, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v2, v196, v2 :: v_dual_fmac_f32 v79, v5, v129
	v_mul_f32_e32 v5, v162, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v75, v2, v133
	v_fmac_f32_e32 v65, v5, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v163, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v64, v5, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v166, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v63, v5, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v167, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v62, v5, v129 :: v_dual_mul_f32 v5, v134, v4
	v_dual_fmac_f32 v48, v5, v126 :: v_dual_mul_f32 v5, v135, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v5, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v136, v4
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v46, v5, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v137, v4
	v_mul_f32_e32 v4, v141, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v45, v5, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v119, v149
	v_mul_f32_e32 v39, v179, v3
	v_mul_f32_e32 v3, v180, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v34, v4, v133
	v_dual_fmac_f32 v96, v5, v130 :: v_dual_fmac_f32 v59, v39, v132
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v58, v3, v133
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v2, v37, v37 :: v_dual_max_f32 v5, v114, v114
	v_dual_max_f32 v37, v71, v71 :: v_dual_max_f32 v38, v70, v70
	v_dual_max_f32 v39, v69, v69 :: v_dual_max_f32 v40, v68, v68
	v_max_f32_e32 v41, v67, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v37, 0, v37
	v_dual_max_f32 v63, v63, v63 :: v_dual_max_f32 v26, v82, v82
	v_max_f32_e32 v27, v81, v81
	v_dual_max_f32 v71, 0, v40 :: v_dual_max_f32 v62, v62, v62
	v_max_f32_e32 v40, v66, v66
	v_dual_max_f32 v28, v80, v80 :: v_dual_max_f32 v29, v79, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v30, v78, v78 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v39, 0, v39
	v_dual_max_f32 v78, 0, v41 :: v_dual_max_f32 v79, 0, v40
	v_max_f32_e32 v58, v58, v58
	v_max_f32_e32 v40, v61, v61
	v_dual_max_f32 v41, v65, v65 :: v_dual_max_f32 v82, 0, v63
	v_max_f32_e32 v57, v64, v64
	v_max_f32_e32 v56, v56, v56
	v_dual_max_f32 v16, v92, v92 :: v_dual_max_f32 v17, v91, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v80, 0, v41
	v_dual_max_f32 v81, 0, v57 :: v_dual_max_f32 v18, v90, v90
	v_dual_max_f32 v19, v89, v89 :: v_dual_max_f32 v20, v88, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v17, 0, v17
	v_dual_max_f32 v57, v59, v59 :: v_dual_max_f32 v88, 0, v56
	v_dual_max_f32 v41, v60, v60 :: v_dual_max_f32 v18, 0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v21, v87, v87 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v23, v85, v85 :: v_dual_max_f32 v22, v86, v86
	v_dual_max_f32 v25, v83, v83 :: v_dual_max_f32 v24, v84, v84
	v_max_f32_e32 v21, 0, v21
	v_dual_max_f32 v83, 0, v62 :: v_dual_max_f32 v84, 0, v40
	v_max_f32_e32 v86, 0, v57
	v_dual_max_f32 v85, 0, v41 :: v_dual_max_f32 v40, v55, v55
	v_dual_max_f32 v87, 0, v58 :: v_dual_max_f32 v52, v52, v52
	v_max_f32_e32 v41, v54, v54
	v_dual_max_f32 v53, v53, v53 :: v_dual_max_f32 v8, v111, v111
	v_max_f32_e32 v9, v110, v110
	v_dual_max_f32 v89, 0, v40 :: v_dual_max_f32 v46, v46, v46
	v_dual_max_f32 v92, 0, v52 :: v_dual_max_f32 v51, v51, v51
	v_max_f32_e32 v90, 0, v41
	v_dual_max_f32 v40, v50, v50 :: v_dual_max_f32 v91, 0, v53
	v_dual_max_f32 v48, v48, v48 :: v_dual_max_f32 v41, v49, v49
	v_dual_max_f32 v47, v47, v47 :: v_dual_max_f32 v46, 0, v46
	v_dual_max_f32 v3, v117, v117 :: v_dual_max_f32 v4, v115, v115
	v_dual_max_f32 v6, v113, v113 :: v_dual_max_f32 v7, v112, v112
	v_max_f32_e32 v10, v108, v108
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v11, v102, v102
	v_dual_max_f32 v12, v100, v100 :: v_dual_max_f32 v13, v98, v98
	v_dual_max_f32 v14, v96, v96 :: v_dual_max_f32 v15, v94, v94
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v31, v77, v77
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v33, v75, v75
	v_dual_max_f32 v32, v76, v76 :: v_dual_max_f32 v35, v74, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v36, v73, v73 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v93, 0, v51 :: v_dual_max_f32 v94, 0, v40
	v_dual_max_f32 v96, 0, v48 :: v_dual_max_f32 v95, 0, v41
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v97, 0, v47
	v_dual_max_f32 v40, v45, v45 :: v_dual_max_f32 v41, v44, v44
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v43, v43, v43
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v32, 0, v32
	v_max_f32_e32 v33, 0, v33
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v98, 0, v40 :: v_dual_max_f32 v99, 0, v41
	v_dual_max_f32 v100, 0, v43 :: v_dual_max_f32 v101, 0, v42
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v50, v3, v3
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v102, 0, v34 :: v_dual_mul_f32 v53, v4, v4
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v47, v2, v2 :: v_dual_mul_f32 v54, v5, v5
	v_dual_mul_f32 v55, v6, v6 :: v_dual_mul_f32 v56, v7, v7
	v_dual_mul_f32 v61, v8, v8 :: v_dual_mul_f32 v62, v9, v9
	v_dual_mul_f32 v64, v10, v10 :: v_dual_mul_f32 v65, v11, v11
	v_dual_mul_f32 v67, v12, v12 :: v_dual_mul_f32 v70, v13, v13
	v_dual_mul_f32 v72, v14, v14 :: v_dual_mul_f32 v73, v15, v15
	v_dual_mul_f32 v76, v16, v16 :: v_dual_mul_f32 v77, v17, v17
	v_dual_mul_f32 v75, v18, v18 :: v_dual_mul_f32 v74, v19, v19
	v_dual_mul_f32 v69, v20, v20 :: v_dual_mul_f32 v68, v21, v21
	v_dual_mul_f32 v66, v22, v22 :: v_dual_mul_f32 v63, v23, v23
	v_dual_mul_f32 v60, v24, v24 :: v_dual_mul_f32 v59, v25, v25
	v_dual_mul_f32 v58, v26, v26 :: v_dual_mul_f32 v57, v27, v27
	v_dual_mul_f32 v52, v28, v28 :: v_dual_mul_f32 v51, v29, v29
	v_dual_mul_f32 v49, v30, v30 :: v_dual_mul_f32 v48, v31, v31
	v_dual_mul_f32 v45, v32, v32 :: v_dual_mul_f32 v44, v33, v33
	v_dual_mul_f32 v43, v35, v35 :: v_dual_mul_f32 v42, v36, v36
	v_dual_mul_f32 v41, v37, v37 :: v_dual_mul_f32 v40, v38, v38
	v_dual_mul_f32 v39, v39, v39 :: v_dual_mul_f32 v32, v81, v81
	v_dual_mul_f32 v38, v71, v71 :: v_dual_mul_f32 v37, v78, v78
	v_dual_mul_f32 v34, v79, v79 :: v_dual_mul_f32 v33, v80, v80
	v_dual_mul_f32 v31, v82, v82 :: v_dual_mul_f32 v30, v83, v83
	v_dual_mul_f32 v29, v84, v84 :: v_dual_mul_f32 v28, v85, v85
	v_dual_mul_f32 v27, v86, v86 :: v_dual_mul_f32 v26, v87, v87
	v_dual_mul_f32 v25, v88, v88 :: v_dual_mul_f32 v24, v89, v89
	v_dual_mul_f32 v23, v90, v90 :: v_dual_mul_f32 v22, v91, v91
	v_dual_mul_f32 v21, v92, v92 :: v_dual_mul_f32 v20, v93, v93
	v_dual_mul_f32 v19, v94, v94 :: v_dual_mul_f32 v18, v95, v95
	v_dual_mul_f32 v17, v96, v96 :: v_dual_mul_f32 v16, v97, v97
	v_dual_mul_f32 v13, v46, v46 :: v_dual_and_b32 v2, 0x80, v0
	v_dual_mul_f32 v6, v98, v98 :: v_dual_mul_f32 v9, v99, v99
	v_dual_mul_f32 v8, v100, v100 :: v_dual_mul_f32 v7, v101, v101
	v_dual_mul_f32 v4, v102, v102 :: v_dual_mov_b32 v3, v1
	v_and_b32_e32 v103, 15, v0
	v_and_b32_e32 v104, 0xf0, v0
.LBB0_7:                                ; %._crit_edge
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v50, v50 :: v_dual_max_f32 v14, v75, v75
	v_max_f32_e32 v5, v47, v47
	v_max3_f32 v10, v54, v55, v56
	v_max3_f32 v11, v65, v67, v70
	v_max3_f32 v12, v72, v73, v76
	v_max3_f32 v15, v61, v62, v64
	v_max_f32_e32 v1, v5, v1
	v_max_f32_e32 v5, v74, v74
	v_max3_f32 v36, v57, v52, v51
	v_max3_f32 v11, v11, v12, v77
	v_max_f32_e32 v12, v43, v43
	v_max3_f32 v1, v1, v53, v10
	v_max_f32_e32 v10, v42, v42
	v_max_f32_e32 v5, v14, v5
	v_max3_f32 v14, v68, v66, v63
	v_max3_f32 v46, v49, v48, v45
	v_max3_f32 v71, v32, v31, v30
	v_max_f32_e32 v10, v12, v10
	v_max3_f32 v12, v40, v39, v38
	v_max3_f32 v78, v29, v28, v27
	v_max3_f32 v35, v60, v59, v58
	v_max3_f32 v5, v5, v69, v14
	v_max3_f32 v14, v36, v46, v44
	v_max3_f32 v36, v37, v34, v33
	v_max3_f32 v10, v10, v41, v12
	v_max3_f32 v12, v71, v78, v26
	v_max3_f32 v1, v1, v15, v11
	s_mov_b32 s0, 0x76543210
	v_dual_max_f32 v46, v24, v24 :: v_dual_max_f32 v71, v25, v25
	v_max3_f32 v5, v5, v35, v14
	v_max3_f32 v10, v10, v36, v12
	v_max3_f32 v15, v16, v13, v6
	v_max3_f32 v35, v9, v8, v7
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v36, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v12, v22, v21, v20
	v_max3_f32 v14, v19, v18, v17
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v82, 3, v2
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v15, v15, v35, v4
	v_max_f32_e32 v35, v36, v36
	v_max_f32_e32 v11, v71, v46
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v46, v10, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v36, v46, v46
	v_max_f32_e32 v78, v1, v35
	v_max3_f32 v11, v11, v23, v12
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v12, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v1, 3, v0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v10, v36
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v35, 4, v0
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v14, v11, v14, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v12, v12, v12 :: v_dual_lshlrev_b32 v11, 5, v1
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v15, 0x60, v0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v5, v12
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v5, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 4, v0
	v_lshl_add_u32 v12, v1, 9, 0
	v_and_or_b32 v35, 0x680, v35, v11
	v_xor_b32_e32 v71, v11, v15
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_and_b32 v36, 8, v0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v46, v10, 2, v12
	v_lshlrev_b32_e32 v12, 1, v2
	v_xor_b32_e32 v35, v35, v15
	v_lshl_add_u32 v83, v10, 6, 0
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v14, v5
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v46, v36, 4, v46
	v_lshlrev_b32_e32 v36, 3, v36
	v_add_nc_u32_e32 v2, 0, v2
	v_add3_u32 v14, v83, v82, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v5, v46, v12, v71
	ds_store_b128 v5, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v14
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v14, v79 :: v_dual_mov_b32 v5, v78
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v46, v78, v78 :: v_dual_max_f32 v71, v79, v79
	v_max_f32_e32 v78, v81, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v81, v81 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_lshl_add_u32 v1, v1, 4, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_mov_b32 v35, v80
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v14, v71, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v46, v5 :: v_dual_max_f32 v46, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v80, v14 :: v_dual_max_f32 v35, v35, v35
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v35, v46, v35 :: v_dual_max_f32 v80, v80, v80
	v_dual_max_f32 v71, v81, v81 :: v_dual_max_f32 v14, v14, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v79, v5 :: v_dual_max_f32 v46, v78, v71
	v_mov_b32_e32 v80, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v78, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v79, v79 :: v_dual_max_f32 v78, v78, v78
	v_dual_max_f32 v5, v5, v79 :: v_dual_max_f32 v46, v46, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v5
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v81, v46 :: v_dual_max_f32 v78, v79, v79
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v80, v80
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v78, v5, v78 :: v_dual_mov_b32 v71, v35
	v_dual_max_f32 v79, v14, v79 :: v_dual_max_f32 v14, v81, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v46, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v71, v71, v71
	v_max_f32_e32 v35, v35, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v71, v35
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v71, v71
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v71, 1, v15
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v80, v35, v5 :: v_dual_lshlrev_b32 v5, 5, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v2, v71, v36
.Ltmp43:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 4, v104
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v1, v5, v36
	ds_store_b128 v2, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp45:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v36, 32, v10
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[78:81], v1
.Ltmp47:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v46, 16, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v78, v78
	v_max_f32_e32 v71, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v5, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v10
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v1
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v35, v14
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s0, s34, v36
	v_add_co_ci_u32_e64 v83, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v80, vcc_lo, v5, 0x40e00000, v5
	v_max_f32_e32 v36, v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[38:39], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[82:83]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v78, -v14, v35, 1.0
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v82.h, 0
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[1:2]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v36, 0x2b8cbccc, v36 :: v_dual_fmac_f32 v35, v78, v35
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s0, s34, v46
	v_add_co_ci_u32_e64 v79, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v86, v80, v35
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, v81, v81
	v_div_scale_f32 v46, null, 0x40e00000, 0x40e00000, v36
	v_fma_f32 v1, -v14, v86, v80
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[38:39], v[78:79]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v87, 0x2b8cbccc, v2
	v_rcp_f32_e32 v88, v46
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[36:37], v[78:79]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v86, v1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v1, -v14, v86, v80
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v87
	v_div_fmas_f32 v1, v1, v35, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v80, v14
	v_fma_f32 v83, -v14, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v71, 0x2b8cbccc, v71 :: v_dual_fmac_f32 v80, v83, v80
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v71
	v_div_scale_f32 v2, s6, v71, 0x40e00000, v71
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v85, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v84, v85, 1.0
	v_fmac_f32_e32 v85, v81, v85
	v_fma_f32 v81, -v46, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v35, v2, v85 :: v_dual_fmac_f32 v88, v81, v88
	v_div_scale_f32 v81, s7, v36, 0x40e00000, v36
	v_mul_f32_e32 v86, v81, v88
	v_div_fixup_f32 v1, v1, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v5, -v84, v35, v2
	v_fma_f32 v78, -v46, v86, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v5, v85
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v5.h, v82.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v86, v78, v88
	v_div_scale_f32 v83, s8, v87, 0x40e00000, v87
	v_fma_f32 v2, -v84, v35, v2
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v46, -v46, v86, v81
	v_mul_f32_e32 v79, v83, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v2, v85, v35
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v1, v5, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v78, -v14, v79, v83
	v_div_fmas_f32 v46, v46, v88, v86
	v_div_fixup_f32 v35, v35, 0x40e00000, v71
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v84, 0xffff0000, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v79, v78, v80
	v_div_fixup_f32 v36, v46, 0x40e00000, v36
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v82.l, v35.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v84, v84, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v14, -v14, v79, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s34, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v85, v81
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v14, v14, v80, v79
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v46, 1, v82
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v83, vcc_lo, v47, v84, v47
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[38:39], v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v78, v14, 0x40e00000, v87
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v14.l, v36.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v71, -v81, v85, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v14.h, v82.h
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[36:37], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v35, v46, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v79, null, v84, v84, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v71, v85 :: v_dual_and_b32 v2, 1, v14
	v_div_scale_f32 v87, null, v84, v84, v54
	v_rcp_f32_e32 v80, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v35, v83, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v14, v36, v2, 0x7fff
	v_mov_b16_e32 v82.l, v78.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v86, null, v84, v84, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v81, v35, v83
	v_div_scale_f32 v88, s8, v50, v84, v50
	v_div_scale_f32 v92, null, v84, v84, v55
	v_fmac_f32_e32 v35, v36, v85
	v_rcp_f32_e32 v36, v87
	v_fma_f32 v46, -v79, v80, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v81, v35, v83
	v_fmac_f32_e32 v80, v46, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v81, v85, v35
	v_fma_f32 v91, -v87, v36, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v71, 1, v82
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v86
	v_mul_f32_e32 v89, v88, v80
	v_div_scale_f32 v85, s10, v54, v84, v54
	v_fmac_f32_e32 v36, v91, v36
	v_div_scale_f32 v91, null, v84, v84, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v83, -v79, v89, v88
	v_div_fixup_f32 v47, v35, v84, v47
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v90, -v86, v82, 1.0
	v_rcp_f32_e32 v93, v91
	v_fmac_f32_e32 v89, v83, v80
	v_rcp_f32_e32 v83, v92
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v78, v71, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v90, v82
	v_div_scale_f32 v90, s9, v53, v84, v53
	v_fma_f32 v35, -v79, v89, v88
	v_mul_f32_e32 v88, v85, v36
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v78, 0xffff0000, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v81, v90, v82
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v46, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v92, v83, 1.0
	v_div_fmas_f32 v35, v35, v80, v89
	v_fma_f32 v89, -v91, v93, 1.0
	v_fma_f32 v79, -v86, v81, v90
	v_div_scale_f32 v80, s8, v55, v84, v55
	v_fmac_f32_e32 v83, v94, v83
	v_div_fixup_f32 v50, v35, v84, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v79, v82
	v_fma_f32 v79, -v87, v88, v85
	v_fmac_f32_e32 v93, v89, v93
	v_div_scale_f32 v89, null, v84, v84, v61
	v_fma_f32 v35, -v86, v81, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v88, v79, v36
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v79, v80, v83
	v_div_scale_f32 v86, s11, v56, v84, v56
	v_div_fmas_f32 v35, v35, v82, v81
	v_fma_f32 v81, -v87, v88, v85
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v90, null, v84, v84, v62
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v92, v79, v80
	v_mul_f32_e32 v87, v86, v93
	v_div_fmas_f32 v36, v81, v36, v88
	v_rcp_f32_e32 v81, v90
	v_div_fixup_f32 v53, v35, v84, v53
	v_fmac_f32_e32 v79, v82, v83
	v_fma_f32 v82, -v91, v87, v86
	v_fma_f32 v88, -v89, v85, 1.0
	v_div_fixup_f32 v54, v36, v84, v54
	v_div_scale_f32 v36, s9, v61, v84, v61
	v_fma_f32 v35, -v92, v79, v80
	v_fmac_f32_e32 v87, v82, v93
	v_fmac_f32_e32 v85, v88, v85
	v_fma_f32 v80, -v90, v81, 1.0
	v_div_scale_f32 v82, null, v84, v84, v64
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v88, null, v84, v84, v65
	v_div_fmas_f32 v35, v35, v83, v79
	v_fma_f32 v79, -v91, v87, v86
	v_mul_f32_e32 v83, v36, v85
	v_fmac_f32_e32 v81, v80, v81
	v_rcp_f32_e32 v80, v82
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v86, s8, v62, v84, v62
	v_div_fmas_f32 v79, v79, v93, v87
	v_fma_f32 v87, -v89, v83, v36
	v_rcp_f32_e32 v93, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v91, v86, v81
	v_div_fixup_f32 v55, v35, v84, v55
	v_div_fixup_f32 v56, v79, v84, v56
	v_fma_f32 v92, -v82, v80, 1.0
	v_fmac_f32_e32 v83, v87, v85
	v_div_scale_f32 v87, null, v84, v84, v67
	v_fma_f32 v35, -v90, v91, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v80, v92, v80
	v_div_scale_f32 v79, s10, v64, v84, v64
	v_fma_f32 v92, -v88, v93, 1.0
	v_fma_f32 v36, -v89, v83, v36
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v91, v35, v81
	v_mul_f32_e32 v35, v79, v80
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s11, v65, v84, v65
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v94, null, v84, v84, v70
	v_div_fmas_f32 v36, v36, v85, v83
	v_fma_f32 v83, -v90, v91, v86
	v_fma_f32 v85, -v82, v35, v79
	v_mul_f32_e32 v86, v92, v93
	v_fma_f32 v90, -v87, v89, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v61, v36, v84, v61
	v_div_fmas_f32 v81, v83, v81, v91
	v_fmac_f32_e32 v35, v85, v80
	v_rcp_f32_e32 v83, v94
	v_fma_f32 v85, -v88, v86, v92
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, s8, v67, v84, v67
	v_fma_f32 v36, -v82, v35, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v93
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v79, v90, v89
	v_div_fixup_f32 v62, v81, v84, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v94, v83, 1.0
	v_div_scale_f32 v82, null, v84, v84, v72
	v_div_fmas_f32 v35, v36, v80, v35
	v_fma_f32 v36, -v88, v86, v92
	v_fma_f32 v80, -v87, v79, v90
	v_div_scale_f32 v88, null, v84, v84, v73
	v_fmac_f32_e32 v83, v81, v83
	v_rcp_f32_e32 v81, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v80, v89
	v_rcp_f32_e32 v80, v88
	v_div_scale_f32 v85, s9, v70, v84, v70
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v71, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v36, v36, v93, v86
	v_mul_f32_e32 v86, v85, v83
	v_div_fixup_f32 v64, v35, v84, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v82, v81, 1.0
	v_fma_f32 v35, -v87, v79, v90
	v_fma_f32 v90, -v88, v80, 1.0
	v_div_fixup_f32 v65, v36, v84, v65
	v_fma_f32 v36, -v94, v86, v85
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v87, s10, v72, v84, v72
	v_div_scale_f32 v91, null, v84, v84, v76
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v90, null, v84, v84, v77
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v86, v36, v83
	v_div_fmas_f32 v35, v35, v89, v79
	v_mul_f32_e32 v36, v87, v81
	v_rcp_f32_e32 v79, v91
	v_div_scale_f32 v89, s8, v73, v84, v73
	v_rcp_f32_e32 v93, v90
	v_div_fixup_f32 v67, v35, v84, v67
	v_fma_f32 v35, -v94, v86, v85
	v_fma_f32 v85, -v82, v36, v87
	v_mul_f32_e32 v92, v89, v80
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v91, v79, 1.0
	v_div_fmas_f32 v35, v35, v83, v86
	v_fmac_f32_e32 v36, v85, v81
	v_fma_f32 v83, -v88, v92, v89
	v_fma_f32 v86, -v90, v93, 1.0
	v_fmac_f32_e32 v79, v94, v79
	v_div_scale_f32 v85, s9, v76, v84, v76
	v_div_fixup_f32 v70, v35, v84, v70
	v_fma_f32 v35, -v82, v36, v87
	v_dual_fmac_f32 v92, v83, v80 :: v_dual_fmac_f32 v93, v86, v93
	v_div_scale_f32 v86, null, v78, v78, v75
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v82, v85, v79
	v_div_scale_f32 v83, s11, v77, v84, v77
	v_div_fmas_f32 v35, v35, v81, v36
	v_fma_f32 v36, -v88, v92, v89
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v89, null, v78, v78, v74
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v81, -v91, v82, v85
	v_mul_f32_e32 v88, v83, v93
	v_div_fmas_f32 v36, v36, v80, v92
	v_rcp_f32_e32 v80, v89
	v_div_fixup_f32 v72, v35, v84, v72
	v_fmac_f32_e32 v82, v81, v79
	v_fma_f32 v81, -v90, v88, v83
	v_fma_f32 v92, -v86, v87, 1.0
	v_div_fixup_f32 v73, v36, v84, v73
	v_div_scale_f32 v36, s8, v75, v78, v75
	v_fma_f32 v35, -v91, v82, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v88, v81, v93 :: v_dual_fmac_f32 v87, v92, v87
	v_fma_f32 v81, -v89, v80, 1.0
	v_div_scale_f32 v85, null, v78, v78, v69
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v35, v35, v79, v82
	v_fma_f32 v79, -v90, v88, v83
	v_mul_f32_e32 v82, v36, v87
	v_fmac_f32_e32 v80, v81, v80
	v_rcp_f32_e32 v81, v85
	v_div_scale_f32 v83, s9, v74, v78, v74
	v_div_scale_f32 v90, null, v78, v78, v68
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v91, v83, v80
	v_div_fmas_f32 v79, v79, v93, v88
	v_fma_f32 v88, -v86, v82, v36
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v81, 1.0
	v_div_fixup_f32 v76, v35, v84, v76
	v_fma_f32 v35, -v89, v91, v83
	v_fmac_f32_e32 v82, v88, v87
	v_div_fixup_f32 v77, v79, v84, v77
	v_fmac_f32_e32 v81, v92, v81
	v_div_scale_f32 v79, s10, v69, v78, v69
	v_div_scale_f32 v84, null, v78, v78, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v90, v93, 1.0
	v_fma_f32 v36, -v86, v82, v36
	v_fmac_f32_e32 v91, v35, v80
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v35, v79, v81
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v93, v88, v93
	v_div_scale_f32 v88, s11, v68, v78, v68
	v_div_fmas_f32 v36, v36, v87, v82
	v_fma_f32 v82, -v89, v91, v83
	v_div_scale_f32 v92, null, v78, v78, v63
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v83, -v85, v35, v79
	v_mul_f32_e32 v87, v88, v93
	v_div_fmas_f32 v80, v82, v80, v91
	v_rcp_f32_e32 v82, v92
	v_fma_f32 v89, -v84, v86, 1.0
	v_fmac_f32_e32 v35, v83, v81
	v_fma_f32 v83, -v90, v87, v88
	v_div_fixup_f32 v74, v80, v78, v74
	v_div_fixup_f32 v75, v36, v78, v75
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v89, s8, v66, v78, v66
	v_fmac_f32_e32 v87, v83, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v92, v82, 1.0
	v_div_scale_f32 v83, null, v78, v78, v60
	v_fma_f32 v36, -v85, v35, v79
	v_mul_f32_e32 v79, v89, v86
	v_fmac_f32_e32 v82, v80, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v80, v83
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, s9, v63, v78, v63
	v_div_fmas_f32 v35, v36, v81, v35
	v_fma_f32 v36, -v90, v87, v88
	v_fma_f32 v81, -v84, v79, v89
	v_div_scale_f32 v88, null, v78, v78, v59
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v83, v80, 1.0
	v_fmac_f32_e32 v79, v81, v86
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v36, v36, v93, v87
	v_mul_f32_e32 v87, v85, v82
	v_div_fixup_f32 v69, v35, v78, v69
	v_fma_f32 v35, -v84, v79, v89
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v90, null, v78, v78, v58
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v68, v36, v78, v68
	v_fma_f32 v36, -v92, v87, v85
	v_div_scale_f32 v84, s10, v60, v78, v60
	v_fma_f32 v89, -v88, v81, 1.0
	v_div_fmas_f32 v35, v35, v86, v79
	v_rcp_f32_e32 v79, v90
	v_fmac_f32_e32 v87, v36, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v36, v84, v80 :: v_dual_fmac_f32 v81, v89, v81
	v_div_scale_f32 v86, s8, v59, v78, v59
	v_div_scale_f32 v89, null, v78, v78, v57
	v_div_fixup_f32 v66, v35, v78, v66
	v_fma_f32 v35, -v92, v87, v85
	v_fma_f32 v85, -v83, v36, v84
	v_mul_f32_e32 v91, v86, v81
	v_rcp_f32_e32 v92, v89
	v_fma_f32 v93, -v90, v79, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v36, v85, v80
	v_div_fmas_f32 v35, v35, v82, v87
	v_fma_f32 v82, -v88, v91, v86
	v_fmac_f32_e32 v79, v93, v79
	v_div_scale_f32 v85, s9, v58, v78, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v63, v35, v78, v63
	v_fma_f32 v87, -v89, v92, 1.0
	v_fma_f32 v35, -v83, v36, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v91, v82, v81 :: v_dual_mul_f32 v82, v85, v79
	v_div_scale_f32 v84, null, v78, v78, v52
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v83, s11, v57, v78, v57
	v_div_fmas_f32 v35, v35, v80, v36
	v_fma_f32 v36, -v88, v91, v86
	v_fma_f32 v80, -v90, v82, v85
	v_rcp_f32_e32 v86, v84
	v_div_scale_f32 v88, null, v78, v78, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v87, v83, v92 :: v_dual_fmac_f32 v82, v80, v79
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v80, v88
	v_div_fmas_f32 v36, v36, v81, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v81, -v89, v87, v83
	v_div_fixup_f32 v60, v35, v78, v60
	v_fma_f32 v91, -v84, v86, 1.0
	v_fma_f32 v35, -v90, v82, v85
	v_div_fixup_f32 v59, v36, v78, v59
	v_fmac_f32_e32 v87, v81, v92
	v_div_scale_f32 v36, s8, v52, v78, v52
	v_fmac_f32_e32 v86, v91, v86
	v_fma_f32 v81, -v88, v80, 1.0
	v_div_scale_f32 v85, null, v78, v78, v49
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v93, null, v78, v78, v44
	v_div_fmas_f32 v35, v35, v79, v82
	v_fma_f32 v79, -v89, v87, v83
	v_mul_f32_e32 v82, v36, v86
	v_fmac_f32_e32 v80, v81, v80
	v_rcp_f32_e32 v81, v85
	v_div_scale_f32 v83, s9, v51, v78, v51
	v_div_scale_f32 v89, null, v78, v78, v48
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v90, v83, v80
	v_div_fmas_f32 v79, v79, v92, v87
	v_fma_f32 v87, -v84, v82, v36
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v85, v81, 1.0
	v_div_fixup_f32 v58, v35, v78, v58
	v_fma_f32 v35, -v88, v90, v83
	v_fmac_f32_e32 v82, v87, v86
	v_div_fixup_f32 v57, v79, v78, v57
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v79, s10, v49, v78, v49
	v_div_scale_f32 v87, null, v78, v78, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v89, v92, 1.0
	v_fma_f32 v36, -v84, v82, v36
	v_fmac_f32_e32 v90, v35, v80
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v35, v79, v81
	v_rcp_f32_e32 v84, v87
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s11, v48, v78, v48
	v_div_fmas_f32 v36, v36, v86, v82
	v_fma_f32 v82, -v88, v90, v83
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v83, -v85, v35, v79
	v_mul_f32_e32 v86, v91, v92
	v_div_fixup_f32 v52, v36, v78, v52
	v_div_fmas_f32 v80, v82, v80, v90
	v_rcp_f32_e32 v82, v93
	v_fma_f32 v88, -v87, v84, 1.0
	v_fmac_f32_e32 v35, v83, v81
	v_fma_f32 v83, -v89, v86, v91
	v_div_fixup_f32 v51, v80, v78, v51
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s8, v45, v78, v45
	v_fmac_f32_e32 v86, v83, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v93, v82, 1.0
	v_div_scale_f32 v83, null, v71, v71, v43
	v_fma_f32 v36, -v85, v35, v79
	v_mul_f32_e32 v79, v88, v84
	v_fmac_f32_e32 v82, v80, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v85, s9, v44, v78, v44
	v_div_fmas_f32 v35, v36, v81, v35
	v_fma_f32 v36, -v89, v86, v91
	v_fma_f32 v81, -v87, v79, v88
	v_div_scale_f32 v89, null, v71, v71, v42
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v49, v35, v78, v49
	v_fmac_f32_e32 v79, v81, v84
	v_rcp_f32_e32 v81, v89
	v_fma_f32 v90, -v83, v80, 1.0
	v_div_fmas_f32 v36, v36, v92, v86
	v_mul_f32_e32 v86, v85, v82
	v_fma_f32 v35, -v87, v79, v88
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v90, null, v71, v71, v41
	v_div_fixup_f32 v48, v36, v78, v48
	v_fma_f32 v36, -v93, v86, v85
	v_div_scale_f32 v87, s10, v43, v71, v43
	v_fma_f32 v88, -v89, v81, 1.0
	v_div_fmas_f32 v35, v35, v84, v79
	v_rcp_f32_e32 v79, v90
	v_fmac_f32_e32 v86, v36, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v36, v87, v80 :: v_dual_fmac_f32 v81, v88, v81
	v_div_scale_f32 v84, s8, v42, v71, v42
	v_div_scale_f32 v88, null, v71, v71, v40
	v_div_fixup_f32 v45, v35, v78, v45
	v_fma_f32 v35, -v93, v86, v85
	v_fma_f32 v85, -v83, v36, v87
	v_mul_f32_e32 v91, v84, v81
	v_rcp_f32_e32 v92, v88
	v_fma_f32 v93, -v90, v79, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v36, v85, v80
	v_div_fmas_f32 v35, v35, v82, v86
	v_fma_f32 v82, -v89, v91, v84
	v_fmac_f32_e32 v79, v93, v79
	v_div_scale_f32 v85, s9, v41, v71, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v44, v35, v78, v44
	v_fma_f32 v86, -v88, v92, 1.0
	v_fma_f32 v35, -v83, v36, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v91, v82, v81 :: v_dual_mul_f32 v78, v85, v79
	v_div_scale_f32 v83, null, v71, v71, v39
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v82, s11, v40, v71, v40
	v_div_fmas_f32 v35, v35, v80, v36
	v_fma_f32 v36, -v89, v91, v84
	v_fma_f32 v80, -v90, v78, v85
	v_rcp_f32_e32 v84, v83
	v_div_scale_f32 v87, null, v71, v71, v38
	v_mul_f32_e32 v86, v82, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v80, v79
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v36, v36, v81, v91
	v_fma_f32 v81, -v88, v86, v82
	v_div_fixup_f32 v43, v35, v71, v43
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v83, v84, 1.0
	v_fma_f32 v35, -v90, v78, v85
	v_div_fixup_f32 v42, v36, v71, v42
	v_fmac_f32_e32 v86, v81, v92
	v_div_scale_f32 v36, s8, v39, v71, v39
	v_fmac_f32_e32 v84, v89, v84
	v_fma_f32 v81, -v87, v80, 1.0
	v_div_scale_f32 v85, null, v71, v71, v37
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v35, v35, v79, v78
	v_fma_f32 v78, -v88, v86, v82
	v_mul_f32_e32 v79, v36, v84
	v_fmac_f32_e32 v80, v81, v80
	v_rcp_f32_e32 v81, v85
	v_div_scale_f32 v82, s9, v38, v71, v38
	v_div_scale_f32 v88, null, v71, v71, v34
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v89, v82, v80
	v_div_fmas_f32 v78, v78, v92, v86
	v_fma_f32 v86, -v83, v79, v36
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v81, 1.0
	v_div_fixup_f32 v41, v35, v71, v41
	v_fma_f32 v35, -v87, v89, v82
	v_fmac_f32_e32 v79, v86, v84
	v_div_scale_f32 v86, null, v71, v71, v33
	v_div_fixup_f32 v40, v78, v71, v40
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v78, s10, v37, v71, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v36, -v83, v79, v36
	v_fmac_f32_e32 v89, v35, v80
	v_rcp_f32_e32 v83, v86
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v35, v78, v81
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s11, v34, v71, v34
	v_div_fmas_f32 v36, v36, v84, v79
	v_fma_f32 v79, -v87, v89, v82
	v_div_scale_f32 v92, null, v71, v71, v32
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v82, -v85, v35, v78
	v_mul_f32_e32 v84, v90, v91
	v_fma_f32 v87, -v86, v83, 1.0
	v_div_fmas_f32 v79, v79, v80, v89
	v_rcp_f32_e32 v80, v92
	v_fmac_f32_e32 v35, v82, v81
	v_fma_f32 v82, -v88, v84, v90
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s8, v33, v71, v33
	v_div_fixup_f32 v39, v36, v71, v39
	v_div_fixup_f32 v38, v79, v71, v38
	v_fma_f32 v36, -v85, v35, v78
	v_fmac_f32_e32 v84, v82, v91
	v_mul_f32_e32 v78, v87, v83
	v_fma_f32 v79, -v92, v80, 1.0
	v_div_scale_f32 v82, null, v71, v71, v31
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, s9, v32, v71, v32
	v_div_fmas_f32 v35, v36, v81, v35
	v_fma_f32 v36, -v88, v84, v90
	v_fma_f32 v81, -v86, v78, v87
	v_fmac_f32_e32 v80, v79, v80
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v88, null, v71, v71, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v81, v83
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v37, v35, v71, v37
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v36, v36, v91, v84
	v_mul_f32_e32 v84, v85, v80
	v_fma_f32 v35, -v86, v78, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v82, v79, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v34, v36, v71, v34
	v_fma_f32 v36, -v92, v84, v85
	v_div_scale_f32 v86, s10, v31, v71, v31
	v_fmac_f32_e32 v79, v89, v79
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_scale_f32 v89, null, v71, v71, v29
	v_div_fmas_f32 v35, v35, v83, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v84, v36, v80 :: v_dual_fmac_f32 v81, v87, v81
	v_rcp_f32_e32 v78, v89
	v_div_scale_f32 v87, null, v71, v71, v28
	v_mul_f32_e32 v36, v86, v79
	v_div_scale_f32 v83, s8, v30, v71, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v91, v87
	v_div_fixup_f32 v33, v35, v71, v33
	v_fma_f32 v35, -v92, v84, v85
	v_fma_f32 v85, -v82, v36, v86
	v_mul_f32_e32 v90, v83, v81
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v35, v35, v80, v84
	v_fmac_f32_e32 v36, v85, v79
	v_fma_f32 v80, -v88, v90, v83
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s9, v29, v71, v29
	v_fma_f32 v85, -v87, v91, 1.0
	v_div_fixup_f32 v32, v35, v71, v32
	v_fma_f32 v35, -v82, v36, v86
	v_fmac_f32_e32 v90, v80, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v80, v84, v78 :: v_dual_fmac_f32 v91, v85, v91
	v_div_scale_f32 v82, s11, v28, v71, v28
	v_div_scale_f32 v85, null, v71, v71, v27
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v86, v82, v91
	v_div_fmas_f32 v35, v35, v79, v36
	v_fma_f32 v36, -v88, v90, v83
	v_fma_f32 v79, -v89, v80, v84
	v_rcp_f32_e32 v83, v85
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v88, null, v71, v71, v26
	v_div_fmas_f32 v36, v36, v81, v90
	v_fmac_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v87, v86, v82
	v_div_fixup_f32 v31, v35, v71, v31
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v79, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v83, 1.0
	v_fma_f32 v35, -v89, v80, v84
	v_fmac_f32_e32 v86, v81, v91
	v_div_fixup_f32 v30, v36, v71, v30
	v_div_scale_f32 v36, s8, v27, v71, v27
	v_fmac_f32_e32 v83, v90, v83
	v_div_fmas_f32 v35, v35, v78, v80
	v_fma_f32 v78, -v87, v86, v82
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, null, v46, v46, v24
	v_mul_f32_e32 v80, v36, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v78, v78, v91, v86
	v_fma_f32 v81, -v88, v79, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v82, s9, v26, v71, v26
	v_fma_f32 v86, -v85, v80, v36
	v_div_fixup_f32 v28, v78, v71, v28
	v_rcp_f32_e32 v78, v89
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, null, v46, v46, v25
	v_fmac_f32_e32 v80, v86, v83
	v_div_fixup_f32 v29, v35, v71, v29
	v_div_scale_f32 v91, null, v46, v46, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v84, v81
	v_fma_f32 v36, -v85, v80, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v89, v78, 1.0
	v_div_scale_f32 v85, null, v46, v46, v23
	v_rcp_f32_e32 v93, v91
	v_div_fmas_f32 v36, v36, v83, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v78, v90, v78
	v_div_scale_f32 v83, s8, v24, v46, v24
	v_fma_f32 v86, -v81, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v27, v36, v71, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v92, v83, v78 :: v_dual_mul_f32 v87, v82, v79
	v_fmac_f32_e32 v84, v86, v84
	v_rcp_f32_e32 v86, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v35, -v88, v87, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v35, v79
	v_div_scale_f32 v35, s10, v25, v46, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v88, v87, v82
	v_mul_f32_e32 v82, v35, v84
	v_fma_f32 v88, -v85, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v81, v82, v35
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, s11, v23, v46, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v90, v84
	v_div_fmas_f32 v79, v80, v79, v87
	v_mul_f32_e32 v87, v88, v86
	v_fma_f32 v80, -v89, v92, v83
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v35, -v81, v82, v35
	v_div_fixup_f32 v26, v79, v71, v26
	v_fma_f32 v36, -v85, v87, v88
	v_div_scale_f32 v79, null, v46, v46, v21
	v_fmac_f32_e32 v92, v80, v78
	v_fma_f32 v71, -v91, v93, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v36, v86
	v_rcp_f32_e32 v36, v79
	v_div_fmas_f32 v35, v35, v84, v82
	v_fma_f32 v80, -v89, v92, v83
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v93, v71, v93
	v_div_scale_f32 v71, s9, v22, v46, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v78, v80, v78, v92
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v25, v35, v46, v25
	v_fma_f32 v83, -v79, v36, 1.0
	v_mul_f32_e32 v81, v71, v93
	v_div_scale_f32 v82, null, v46, v46, v20
	v_div_fixup_f32 v24, v78, v46, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v83, v36
	v_fma_f32 v80, -v85, v87, v88
	v_fma_f32 v85, -v91, v81, v71
	v_div_scale_f32 v83, s8, v21, v46, v21
	v_rcp_f32_e32 v84, v82
	v_div_fmas_f32 v80, v80, v86, v87
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v35, v83, v36
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v23, v80, v46, v23
	v_div_scale_f32 v80, null, v46, v46, v19
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v82, v84, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v80
	v_fmac_f32_e32 v81, v85, v93
	v_fma_f32 v85, -v79, v35, v83
	v_fmac_f32_e32 v84, v78, v84
	v_div_scale_f32 v78, s10, v20, v46, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v91, v81, v71
	v_fmac_f32_e32 v35, v85, v36
	v_div_scale_f32 v85, null, v46, v46, v18
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v93, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v87, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v22, v71, v46, v22
	v_fma_f32 v71, -v79, v35, v83
	v_fma_f32 v83, -v80, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v35, v71, v36, v35
	v_fmac_f32_e32 v86, v83, v86
	v_div_scale_f32 v83, null, v46, v46, v16
	v_div_scale_f32 v36, null, v46, v46, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v21, v35, v46, v21
	v_fma_f32 v35, -v85, v87, 1.0
	v_rcp_f32_e32 v89, v83
	v_div_scale_f32 v71, s8, v19, v46, v19
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v87, v35, v87
	v_div_scale_f32 v35, s9, v18, v46, v18
	v_mul_f32_e32 v81, v78, v84
	v_div_scale_f32 v90, s10, v17, v46, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v83, v89, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v82, v81, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s11, v16, v46, v16
	v_fmac_f32_e32 v81, v79, v84
	v_rcp_f32_e32 v79, v36
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v82, v81, v78
	v_mul_f32_e32 v82, v71, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v84, v81
	v_fma_f32 v88, -v36, v79, 1.0
	v_fma_f32 v81, -v80, v82, v71
	v_mul_f32_e32 v84, v35, v87
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v20, v78, v46, v20
	v_fmac_f32_e32 v79, v88, v79
	v_div_scale_f32 v88, null, v46, v46, v13
	v_fmac_f32_e32 v82, v81, v86
	v_fma_f32 v81, -v85, v84, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v92, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v80, v82, v71
	v_fmac_f32_e32 v84, v81, v87
	v_mul_f32_e32 v80, v91, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v86, v82
	v_fma_f32 v35, -v85, v84, v35
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v88, v92, 1.0
	v_div_scale_f32 v82, null, v46, v46, v6
	v_div_fixup_f32 v19, v71, v46, v19
	v_div_scale_f32 v86, null, v46, v46, v4
	v_fmac_f32_e32 v92, v81, v92
	v_div_scale_f32 v81, s8, v13, v46, v13
	v_mul_f32_e32 v93, v90, v79
	v_div_fmas_f32 v35, v35, v87, v84
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v84, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v36, v93, v90
	v_div_fixup_f32 v18, v35, v46, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v93, v78, v79
	v_fma_f32 v78, -v83, v80, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v82, v84, 1.0
	v_fma_f32 v36, -v36, v93, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v78, v89
	v_mul_f32_e32 v78, v81, v92
	v_div_fmas_f32 v36, v36, v79, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v83, v80, v91
	v_fma_f32 v83, -v88, v78, v81
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v36, v46, v17
	v_div_fmas_f32 v79, v79, v89, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v78, v83, v92
	v_div_scale_f32 v36, null, v46, v46, v9
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v16, v79, v46, v16
	v_fma_f32 v35, -v88, v78, v81
	v_div_scale_f32 v79, null, v46, v46, v7
	v_rcp_f32_e32 v88, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v35, v35, v92, v78
	v_rcp_f32_e32 v78, v36
	v_rcp_f32_e32 v83, v79
	v_div_scale_f32 v80, vcc_lo, v6, v46, v6
	v_div_fixup_f32 v13, v35, v46, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v86, v88, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v35, -v36, v78, 1.0
	v_fma_f32 v90, -v79, v83, 1.0
	v_fmac_f32_e32 v84, v71, v84
	v_div_scale_f32 v71, null, v46, v46, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v78, v35, v78
	v_div_scale_f32 v35, s8, v9, v46, v9
	v_fmac_f32_e32 v83, v90, v83
	v_mul_f32_e32 v85, v80, v84
	v_div_scale_f32 v90, s10, v7, v46, v7
	v_rcp_f32_e32 v81, v71
	v_fmac_f32_e32 v88, v92, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v82, v85, v80
	v_dual_mul_f32 v94, v90, v83 :: v_dual_mul_f32 v91, v35, v78
	v_div_scale_f32 v92, s11, v4, v46, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v89, v84
	v_fma_f32 v89, -v36, v91, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v71, v81, 1.0
	v_fma_f32 v80, -v82, v85, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v89, v78
	v_fma_f32 v89, -v79, v94, v90
	v_div_fmas_f32 v80, v80, v84, v85
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v36, v91, v35
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v94, v89, v83
	v_div_fixup_f32 v6, v80, v46, v6
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v35, v35, v78, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v96, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v9, v35, v46, v9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v47
	v_rndne_f32_e32 v47, v54
	v_rndne_f32_e32 v54, v61
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v6, v6, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v65
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_cvt_i32_f32_e32 v99, v6
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v87, s9, v8, v46, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v95, v92, v88 :: v_dual_and_b32 v6, 15, v35
	v_mul_f32_e32 v93, v87, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s8, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v18, 15, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v36, -v86, v95, v92
	v_fma_f32 v82, -v71, v93, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v65, v65
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v36, v88
	v_fmac_f32_e32 v93, v82, v81
	v_fma_f32 v36, -v79, v94, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v24
	v_and_b32_e32 v24, 15, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v86, v95, v92
	v_fma_f32 v71, -v71, v93, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v81, v93
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v36, v36, v83, v94
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v8, v71, v46, v8
	v_div_fmas_f32 v78, v78, v88, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v36, v46, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v4, v78, v46, v4
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v53
	v_rndne_f32_e32 v53, v56
	v_rndne_f32_e32 v56, v64
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v57, v57
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v50
	v_rndne_f32_e32 v50, v55
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v56, v56
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v62
	v_rndne_f32_e32 v62, v67
	v_rndne_f32_e32 v67, v73
	v_rndne_f32_e32 v71, v77
	v_rndne_f32_e32 v72, v75
	v_rndne_f32_e32 v73, v74
	v_rndne_f32_e32 v4, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v75, v44
	v_cvt_i32_f32_e32 v77, v42
	v_cvt_i32_f32_e32 v78, v41
	v_cvt_i32_f32_e32 v94, v20
	v_cvt_i32_f32_e32 v13, v13
	v_and_b32_e32 v20, 15, v56
	v_and_b32_e32 v41, 15, v58
	v_and_b32_e32 v42, 15, v57
	v_and_b32_e32 v56, 15, v34
	v_and_b32_e32 v57, 15, v33
	v_and_b32_e32 v58, 15, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v32, 10, v0
	v_and_b32_e32 v33, 16, v0
	v_lshlrev_b32_e32 v34, 4, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v70
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v4, v4, s8, 0x40e00000
	v_cvt_i32_f32_e32 v101, v8
	v_and_b32_e32 v8, 15, v46
	v_and_b32_e32 v46, 15, v48
	v_and_b32_e32 v48, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v32, 0x1800, v32
	v_lshlrev_b32_e32 v35, 6, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v75, 15, v13
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v13, v34, v15
	v_lshlrev_b32_e32 v15, 6, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v80, v39
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v32, 0, v32, v35
	v_and_or_b32 v11, 0x1b00, v15, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v51, v51
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_cvt_i32_f32_e32 v83, v31
	v_cvt_i32_f32_e32 v84, v30
	v_cvt_i32_f32_e32 v85, v29
	v_cvt_i32_f32_e32 v86, v28
	v_cvt_i32_f32_e32 v97, v17
	v_cvt_i32_f32_e32 v100, v9
	v_cvt_i32_f32_e32 v102, v7
	v_and_b32_e32 v7, 15, v36
	v_and_b32_e32 v17, 15, v53
	v_and_b32_e32 v28, 15, v72
	v_and_b32_e32 v29, 15, v73
	v_and_b32_e32 v30, 15, v69
	v_and_b32_e32 v31, 15, v68
	v_and_b32_e32 v53, 15, v80
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v12, v32, v13, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v80, 15, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v4, v11, v104, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v9, 15, v47
	v_cvt_i32_f32_e32 v76, v43
	v_cvt_i32_f32_e32 v91, v23
	v_cvt_i32_f32_e32 v92, v22
	v_cvt_i32_f32_e32 v93, v21
	v_and_b32_e32 v21, 15, v61
	v_and_b32_e32 v22, 15, v62
	v_and_b32_e32 v23, 15, v64
	v_and_b32_e32 v43, 15, v52
	v_and_b32_e32 v44, 15, v51
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v79, v40
	v_cvt_i32_f32_e32 v89, v25
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v74, v45
	v_cvt_i32_f32_e32 v98, v16
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v12, v[6:9]
	ds_store_b128 v12, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[20:23], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[28:31]
	ds_store_b128 v12, v[41:44] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v4
	ds_load_b128 v[41:44], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v82, v37
	v_cvt_i32_f32_e32 v95, v19
	v_and_b32_e32 v16, 15, v50
	v_and_b32_e32 v19, 15, v55
	v_and_b32_e32 v25, 15, v67
	v_and_b32_e32 v37, 15, v66
	v_and_b32_e32 v45, 15, v49
	v_and_b32_e32 v49, 15, v76
	v_and_b32_e32 v50, 15, v77
	v_and_b32_e32 v51, 15, v78
	v_and_b32_e32 v52, 15, v79
	v_and_b32_e32 v65, 15, v89
	v_and_b32_e32 v66, 15, v90
	v_and_b32_e32 v67, 15, v91
	v_and_b32_e32 v68, 15, v92
	v_cvt_i32_f32_e32 v87, v27
	v_cvt_i32_f32_e32 v88, v26
	v_and_b32_e32 v26, 15, v70
	v_and_b32_e32 v27, 15, v71
	v_and_b32_e32 v39, 15, v60
	v_and_b32_e32 v40, 15, v59
	v_and_b32_e32 v47, 15, v74
	v_and_b32_e32 v59, 15, v83
	v_and_b32_e32 v60, 15, v84
	v_and_b32_e32 v73, 15, v97
	v_and_b32_e32 v74, 15, v98
	v_and_b32_e32 v76, 15, v99
	v_cvt_i32_f32_e32 v81, v38
	v_and_b32_e32 v38, 15, v63
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[49:52]
	ds_store_b128 v12, v[57:60] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v4
	ds_load_b128 v[57:60], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[65:68]
	ds_store_b128 v12, v[73:76] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v4
	ds_load_b128 v[73:76], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[16:19]
	ds_store_b128 v12, v[24:27] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v4
	ds_load_b128 v[24:27], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v54, 15, v81
	v_and_b32_e32 v55, 15, v82
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[37:40]
	ds_store_b128 v12, v[45:48] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v4
	ds_load_b128 v[45:48], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v61, 15, v85
	v_and_b32_e32 v62, 15, v86
	v_and_b32_e32 v63, 15, v87
	v_and_b32_e32 v64, 15, v88
	v_and_b32_e32 v69, 15, v93
	v_and_b32_e32 v70, 15, v94
	v_and_b32_e32 v71, 15, v95
	v_and_b32_e32 v72, 15, v96
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[53:56]
	ds_store_b128 v12, v[61:64] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v4
	ds_load_b128 v[61:64], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v77, 15, v100
	v_and_b32_e32 v78, 15, v101
	v_and_b32_e32 v79, 15, v102
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v23, 4, v9
	v_lshl_or_b32 v23, v44, 4, v31
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v103
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v13, v22, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, s34, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[69:72]
	ds_store_b128 v12, v[77:80] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v4
	ds_load_b128 v[77:80], v4 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v4, s41, 7, v44
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v8
	v_add_nc_u32_e32 v11, 32, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v20, 4, v6
	v_lshl_or_b32 v7, v21, 4, v7
	v_lshl_or_b32 v15, v24, 4, v15
	v_lshl_or_b32 v16, v25, 4, v16
	v_lshl_or_b32 v17, v26, 4, v17
	v_lshl_or_b32 v18, v27, 4, v18
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s8, v[4:5]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[4:5]
	v_mad_u64_u32 v[10:11], null, v11, s8, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v24, v45, 4, v36
	v_lshl_or_b32 v25, v46, 4, v37
	v_lshl_or_b32 v26, v47, 4, v38
	v_lshl_or_b32 v27, v48, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s8, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v2.l, 0xff, v13.l
	v_lshlrev_b16 v4.l, 8, v7.l
	v_and_b16 v4.h, 0xff, v6.l
	v_lshlrev_b16 v5.l, 8, v18.l
	v_and_b16 v6.l, 0xff, v17.l
	v_lshlrev_b16 v6.h, 8, v16.l
	v_and_b16 v7.l, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v41, 4, v28
	v_lshl_or_b32 v21, v42, 4, v29
	v_lshl_or_b32 v22, v43, 4, v30
	v_lshl_or_b32 v32, v61, 4, v53
	v_lshl_or_b32 v34, v62, 4, v54
	v_lshl_or_b32 v35, v63, 4, v55
	v_lshl_or_b32 v36, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v5.l, 8, v27.l
	v_and_b16 v6.l, 0xff, v26.l
	v_lshlrev_b16 v6.h, 8, v25.l
	v_and_b16 v7.l, 0xff, v24.l
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v57, 4, v49
	v_lshl_or_b32 v29, v58, 4, v50
	v_lshl_or_b32 v30, v59, 4, v51
	v_lshl_or_b32 v31, v60, 4, v52
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v77, 4, v69
	v_lshl_or_b32 v42, v78, 4, v70
	v_lshl_or_b32 v43, v79, 4, v71
	v_lshl_or_b32 v45, v80, 4, v72
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v4.h, 0xff, v20.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v36.l
	v_and_b16 v6.l, 0xff, v35.l
	v_lshlrev_b16 v6.h, 8, v34.l
	v_and_b16 v7.l, 0xff, v32.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v73, 4, v65
	v_lshl_or_b32 v38, v74, 4, v66
	v_lshl_or_b32 v39, v75, 4, v67
	v_lshl_or_b32 v40, v76, 4, v68
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v8, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v30.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v4.h, 0xff, v28.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v45.l
	v_and_b16 v6.l, 0xff, v43.l
	v_lshlrev_b16 v6.h, 8, v42.l
	v_and_b16 v7.l, 0xff, v41.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v40.l
	v_and_b16 v2.l, 0xff, v39.l
	v_lshlrev_b16 v4.l, 8, v38.l
	v_and_b16 v4.h, 0xff, v37.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v33
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v11, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[8:9], v10, s[8:11], 0 offen
	buffer_store_b64 v[12:13], v4, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v44
	v_mov_b16_e32 v2.l, v14.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v5, v7, v6, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s41, 1
	s_and_b32 vcc_lo, vcc_lo, s42
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp48:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 96
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 96
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18440
; TotalNumSgprs: 49
; NumVgprs: 256
; ScratchSize: 96
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 96
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 23
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
