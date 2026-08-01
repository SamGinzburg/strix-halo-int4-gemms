	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	v_mov_b32_e32 v4, 0
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
	v_mov_b32_e32 v122, v0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[36:37], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v3, 63, v122
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, s2, s34, v3
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[36:37], v[1:2]
	v_add_nc_u32_e32 v1, s34, v3
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 0x80, v122
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[24:27], s[0:1], 0x40
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v102, 15, v122
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v103, 0xf0, v122
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
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v50, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s3, s34, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s35, 0, s3
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	v_add_co_u32 v4, vcc_lo, v2, 16
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[2:3]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v2, s34, v102
	v_mov_b32_e32 v118, 0
	s_clause 0x1
	s_load_b32 s31, s[0:1], 0x58
	s_load_b32 s42, s[0:1], 0x50
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[4:5]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v2, s40
	v_add_nc_u32_e32 v3, 16, v2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[4:5]
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v5, 32, v2
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v2, 48, v2
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s7, s7, s5
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v102, off offset:100
	v_mul_lo_u32 v0, v3, s40
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s16, s[6:7], 0x0
	v_dual_mov_b32 v114, 0 :: v_dual_lshlrev_b32 v45, 1, v122
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v46, 5, v102
	v_mov_b32_e32 v115, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v110, 0 :: v_dual_and_b32 v47, 24, v45
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:4
	scratch_store_b32 off, v103, off offset:104
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v5, s40
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v4, 5, v122
	v_mov_b32_e32 v107, 0
	.loc	1 1045 18 is_stmt 0             ; ragged.py:1045:18
	s_lshl_b32 s17, s41, 8
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v55, 2, v103
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v3, s17, v4
	v_dual_mov_b32 v95, 0 :: v_dual_lshlrev_b32 v56, 1, v103
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s40
	v_dual_mov_b32 v103, 0 :: v_dual_and_b32 v2, 0xe0, v122
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s31, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[6:7]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b32_e32 v2, 4, v2
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s30, s4, s16
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[6:7]
	v_cmp_gt_i64_e64 s7, s[36:37], v[8:9]
	v_or3_b32 v46, v46, v47, v2
	v_lshlrev_b32_e32 v2, 5, v122
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v34, 0xf8, v3
	v_or_b32_e32 v33, 0xf0, v3
	v_or_b32_e32 v32, 0xe8, v3
	v_or_b32_e32 v31, 0xe0, v3
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v2, 32, v2
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
	v_add3_u32 v55, 0, v55, v2
	v_mad_u64_u32 v[2:3], null, v3, s31, s[30:31]
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v0, s17, v122
	v_bfe_i32 v43, v122, 7, 1
	v_dual_mov_b32 v111, 0 :: v_dual_and_b32 v44, 0x7f, v122
	v_mov_b32_e32 v112, 0
	scratch_store_b64 off, v[2:3], off offset:20 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v4, s31, s[30:31]
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_and_b32_e32 v43, 0x88, v43
	v_or_b32_e32 v48, 0x300, v122
	v_or_b32_e32 v49, 0x700, v122
	v_or_b32_e32 v47, 0x3f0, v122
	v_or_b32_e32 v50, 0x7f0, v122
	scratch_store_b64 off, v[2:3], off offset:28 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v5, s31, s[30:31]
	v_xor_b32_e32 v43, v43, v44
	v_xor_b32_e32 v52, 8, v46
	v_xor_b32_e32 v53, 16, v46
	v_xor_b32_e32 v54, 24, v46
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v45, 28, v45
	scratch_store_b64 off, v[2:3], off offset:36 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v6, s31, s[30:31]
	v_xor_b32_e32 v51, 0x110, v43
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v38, 6, v122
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v44, 0, v102
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v91, v55, v45
	scratch_store_b64 off, v[2:3], off offset:44 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v7, s31, s[30:31]
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v94, 0, v48
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v96, 0, v49
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v97, 0, v47
	scratch_store_b64 off, v[2:3], off offset:52 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v8, s31, s[30:31]
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v98, 0, v50
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v99, 0, v43
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v100, 0, v51
	scratch_store_b64 off, v[2:3], off offset:60 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v9, s31, s[30:31]
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v102, 0, v46
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v104, 0, v52
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v106, 0, v53
	scratch_store_b64 off, v[2:3], off offset:68 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v10, s31, s[30:31]
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v108, 0, v54
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v113, 0, v56
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v119, 0, v122
	scratch_store_b64 off, v[2:3], off offset:76 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v11, s31, s[30:31]
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v71, 0
	scratch_store_b64 off, v[2:3], off offset:84 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v12, s31, s[30:31]
	v_mad_u64_u32 v[12:13], null, v13, s31, s[30:31]
	v_mad_u64_u32 v[13:14], null, v14, s31, s[30:31]
	v_mad_u64_u32 v[14:15], null, v15, s31, s[30:31]
	v_mad_u64_u32 v[15:16], null, v16, s31, s[30:31]
	v_mad_u64_u32 v[16:17], null, v17, s31, s[30:31]
	v_mad_u64_u32 v[17:18], null, v18, s31, s[30:31]
	v_mad_u64_u32 v[18:19], null, v19, s31, s[30:31]
	v_mad_u64_u32 v[19:20], null, v20, s31, s[30:31]
	v_mad_u64_u32 v[20:21], null, v21, s31, s[30:31]
	v_mad_u64_u32 v[21:22], null, v22, s31, s[30:31]
	v_mad_u64_u32 v[22:23], null, v23, s31, s[30:31]
	v_mad_u64_u32 v[23:24], null, v24, s31, s[30:31]
	v_mad_u64_u32 v[24:25], null, v25, s31, s[30:31]
	v_mad_u64_u32 v[25:26], null, v26, s31, s[30:31]
	v_mad_u64_u32 v[26:27], null, v27, s31, s[30:31]
	v_mad_u64_u32 v[27:28], null, v28, s31, s[30:31]
	v_mad_u64_u32 v[28:29], null, v29, s31, s[30:31]
	v_mad_u64_u32 v[29:30], null, v30, s31, s[30:31]
	v_mad_u64_u32 v[30:31], null, v31, s31, s[30:31]
	v_mad_u64_u32 v[31:32], null, v32, s31, s[30:31]
	v_mad_u64_u32 v[32:33], null, v33, s31, s[30:31]
	v_mad_u64_u32 v[33:34], null, v34, s31, s[30:31]
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v34, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s1, s1, s6
	s_and_b32 s3, s5, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s43, s40, s16
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s16, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	s_mov_b32 s44, s16
	scratch_store_b64 off, v[2:3], off offset:92 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s14, s44, 5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s45, s44, s43
	v_or_b32_e32 v120, s14, v38
	s_mul_i32 s45, s45, s33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s15, s7
	v_mad_u64_u32 v[120:121], null, v120, s42, v[1:2]
	v_mov_b32_e32 v11, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v152, 0x80000000, v120, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v120, 4, v38
	v_or_b32_e32 v120, s14, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[120:121], null, v120, s42, v[1:2]
	v_cndmask_b32_e64 v153, 0x80000000, v120, s2
	v_or_b32_e32 v120, 8, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v120, s14, v120
	v_mad_u64_u32 v[120:121], null, v120, s42, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v154, 0x80000000, v120, s2
	v_or_b32_e32 v120, 12, v38
	v_or_b32_e32 v120, s14, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[120:121], null, v120, s42, v[1:2]
	v_cndmask_b32_e64 v155, 0x80000000, v120, s2
	v_or_b32_e32 v120, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v120, s14, v120
	v_mad_u64_u32 v[120:121], null, v120, s42, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v156, 0x80000000, v120, s2
	v_or_b32_e32 v120, 20, v38
	v_or_b32_e32 v120, s14, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[120:121], null, v120, s42, v[1:2]
	v_cndmask_b32_e64 v157, 0x80000000, v120, s2
	v_or_b32_e32 v120, 24, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v120, s14, v120
	v_mad_u64_u32 v[120:121], null, v120, s42, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v158, 0x80000000, v120, s2
	v_or_b32_e32 v120, 28, v38
	v_or_b32_e32 v120, s14, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[120:121], null, v120, s42, v[1:2]
	scratch_load_b64 v[2:3], off, off offset:20 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v159, 0x80000000, v120, s2
	v_and_b32_e32 v120, 31, v122
	v_or_b32_e32 v120, s14, v120
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s14, s6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v131, v12, v120
	v_add_nc_u32_e32 v132, v13, v120
	v_add_nc_u32_e32 v133, v14, v120
	v_add_nc_u32_e32 v134, v15, v120
	v_add_nc_u32_e32 v136, v16, v120
	v_add_nc_u32_e32 v144, v17, v120
	v_add_nc_u32_e32 v145, v18, v120
	v_add_nc_u32_e32 v146, v19, v120
	v_add_nc_u32_e32 v147, v20, v120
	v_add_nc_u32_e32 v148, v21, v120
	v_add_nc_u32_e32 v149, v22, v120
	v_add_nc_u32_e32 v150, v23, v120
	v_add_nc_u32_e32 v151, v24, v120
	v_add_nc_u32_e32 v160, v25, v120
	v_add_nc_u32_e32 v161, v26, v120
	v_add_nc_u32_e32 v162, v27, v120
	v_add_nc_u32_e32 v163, v28, v120
	v_add_nc_u32_e32 v164, v29, v120
	v_add_nc_u32_e32 v165, v30, v120
	v_add_nc_u32_e32 v166, v31, v120
	v_add_nc_u32_e32 v167, v32, v120
	v_add_nc_u32_e32 v168, v33, v120
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v121, v2, v120
	scratch_load_b64 v[2:3], off, off offset:28 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v122, v2, v120
	scratch_load_b64 v[2:3], off, off offset:36 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, v2, v120
	scratch_load_b64 v[2:3], off, off offset:44 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v124, v2, v120
	scratch_load_b64 v[2:3], off, off offset:52 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v125, v2, v120
	scratch_load_b64 v[2:3], off, off offset:60 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v126, v2, v120
	scratch_load_b64 v[2:3], off, off offset:68 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v127, v2, v120
	scratch_load_b64 v[2:3], off, off offset:76 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v128, v2, v120
	scratch_load_b64 v[2:3], off, off offset:84 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v129, v2, v120
	scratch_load_b64 v[2:3], off, off offset:92 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v130, v2, v120
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f
	buffer_load_u8 v135, v121, s[4:7], 0 offen
	buffer_load_u8 v120, v122, s[4:7], 0 offen
	buffer_load_u8 v137, v123, s[4:7], 0 offen
	buffer_load_u8 v121, v124, s[4:7], 0 offen
	buffer_load_u8 v138, v125, s[4:7], 0 offen
	buffer_load_u8 v122, v126, s[4:7], 0 offen
	buffer_load_u8 v139, v127, s[4:7], 0 offen
	buffer_load_u8 v123, v128, s[4:7], 0 offen
	buffer_load_u8 v140, v129, s[4:7], 0 offen
	buffer_load_u8 v124, v130, s[4:7], 0 offen
	buffer_load_u8 v141, v131, s[4:7], 0 offen
	buffer_load_u8 v125, v132, s[4:7], 0 offen
	buffer_load_u8 v142, v133, s[4:7], 0 offen
	buffer_load_u8 v126, v134, s[4:7], 0 offen
	buffer_load_u8 v143, v136, s[4:7], 0 offen
	buffer_load_u8 v127, v144, s[4:7], 0 offen
	buffer_load_u8 v144, v145, s[4:7], 0 offen
	buffer_load_u8 v128, v146, s[4:7], 0 offen
	buffer_load_u8 v145, v147, s[4:7], 0 offen
	buffer_load_u8 v129, v148, s[4:7], 0 offen
	buffer_load_u8 v146, v149, s[4:7], 0 offen
	buffer_load_u8 v130, v150, s[4:7], 0 offen
	buffer_load_u8 v147, v151, s[4:7], 0 offen
	buffer_load_u8 v131, v160, s[4:7], 0 offen
	buffer_load_u8 v148, v161, s[4:7], 0 offen
	buffer_load_u8 v132, v162, s[4:7], 0 offen
	buffer_load_u8 v149, v163, s[4:7], 0 offen
	buffer_load_u8 v133, v164, s[4:7], 0 offen
	buffer_load_u8 v150, v165, s[4:7], 0 offen
	buffer_load_u8 v134, v166, s[4:7], 0 offen
	buffer_load_u8 v151, v167, s[4:7], 0 offen
	buffer_load_u8 v136, v168, s[4:7], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v152, v152, s[8:11], 0 offen
	buffer_load_u8 v153, v153, s[8:11], 0 offen
	buffer_load_u8 v154, v154, s[8:11], 0 offen
	buffer_load_u8 v156, v156, s[8:11], 0 offen
	buffer_load_u8 v157, v157, s[8:11], 0 offen
	buffer_load_u8 v158, v158, s[8:11], 0 offen
	buffer_load_u8 v159, v159, s[8:11], 0 offen
	buffer_load_u8 v155, v155, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v119, v152
	s_waitcnt vmcnt(6)
	ds_store_b8 v119, v153 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v119, v154 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v119, v156 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v119, v157 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v94, v155
	ds_store_b8 v119, v158 offset:1536
	ds_store_b8 v96, v159
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v154, v44 offset:320
	ds_load_u8 v155, v44 offset:256
	ds_load_u8 v198, v44 offset:336
	ds_load_u8 v199, v44 offset:272
	ds_load_u8 v163, v44 offset:352
	ds_load_u8 v164, v44 offset:288
	ds_load_u8 v152, v44 offset:368
	ds_load_u8 v153, v44 offset:304
	ds_load_u8 v248, v44 offset:1168
	ds_load_u8 v249, v44 offset:1184
	ds_load_u8 v250, v44 offset:1040
	ds_load_u8 v251, v44 offset:1056
	ds_load_u8 v252, v44 offset:1424
	ds_load_u8 v253, v44 offset:1440
	ds_load_u8 v254, v44 offset:1296
	ds_load_u8 v255, v44 offset:1312
	ds_load_u8 v36, v44 offset:1680
	ds_load_u8 v35, v44 offset:1696
	ds_load_u8 v39, v44 offset:1552
	ds_load_u8 v0, v44 offset:1568
	ds_load_u8 v40, v44 offset:1936
	ds_load_u8 v41, v44 offset:1952
	ds_load_u8 v42, v44 offset:1808
	ds_load_u8 v58, v44 offset:1824
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v160, v155, v154, 0xc0c0004
	ds_load_u8 v156, v44 offset:448
	ds_load_u8 v157, v44 offset:384
	ds_load_u8 v200, v44 offset:464
	ds_load_u8 v201, v44 offset:400
	ds_load_u8 v167, v44 offset:480
	ds_load_u8 v168, v44 offset:416
	ds_load_u8 v154, v44 offset:496
	ds_load_u8 v155, v44 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v161, v157, v156, 0xc0c0004
	ds_load_u8 v158, v44 offset:64
	ds_load_u8 v159, v44
	ds_load_u8 v202, v44 offset:80
	ds_load_u8 v172, v44 offset:96
	ds_load_u8 v156, v44 offset:112
	ds_load_u8 v203, v44 offset:16
	ds_load_u8 v175, v44 offset:32
	ds_load_u8 v157, v44 offset:48
	v_lshl_or_b32 v191, v161, 16, v160
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v162, v159, v158, 0xc0c0004
	ds_load_u8 v165, v44 offset:192
	ds_load_u8 v166, v44 offset:128
	ds_load_u8 v204, v44 offset:208
	ds_load_u8 v205, v44 offset:144
	ds_load_u8 v178, v44 offset:224
	ds_load_u8 v179, v44 offset:160
	ds_load_u8 v158, v44 offset:240
	ds_load_u8 v159, v44 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v165, 16, v162
	ds_load_u8 v162, v44 offset:832
	ds_load_u8 v165, v44 offset:768
	ds_load_u8 v206, v44 offset:848
	ds_load_u8 v207, v44 offset:784
	ds_load_u8 v180, v44 offset:864
	ds_load_u8 v181, v44 offset:800
	ds_load_u8 v160, v44 offset:880
	ds_load_u8 v161, v44 offset:816
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v169, v165, v162, 0xc0c0004
	ds_load_u8 v165, v44 offset:960
	ds_load_u8 v166, v44 offset:896
	ds_load_u8 v208, v44 offset:976
	ds_load_u8 v209, v44 offset:912
	ds_load_u8 v210, v44 offset:992
	ds_load_u8 v211, v44 offset:928
	ds_load_u8 v162, v44 offset:944
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v173, v166, v165, 0xc0c0004
	ds_load_u8 v170, v44 offset:576
	ds_load_u8 v171, v44 offset:512
	ds_load_u8 v212, v44 offset:592
	ds_load_u8 v213, v44 offset:528
	ds_load_u8 v214, v44 offset:608
	ds_load_u8 v215, v44 offset:544
	ds_load_u8 v165, v44 offset:624
	ds_load_u8 v166, v44 offset:560
	v_lshl_or_b32 v193, v173, 16, v169
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v174, v171, v170, 0xc0c0004
	ds_load_u8 v176, v44 offset:704
	ds_load_u8 v177, v44 offset:640
	ds_load_u8 v216, v44 offset:720
	ds_load_u8 v217, v44 offset:656
	ds_load_u8 v218, v44 offset:736
	ds_load_u8 v219, v44 offset:672
	ds_load_u8 v170, v44 offset:752
	ds_load_u8 v171, v44 offset:688
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v192, v176, 16, v174
	ds_load_u8 v176, v44 offset:1344
	ds_load_u8 v177, v44 offset:1280
	ds_load_u8 v169, v44 offset:1264
	ds_load_u8 v220, v44 offset:1360
	ds_load_u8 v221, v44 offset:1376
	ds_load_u8 v173, v44 offset:1392
	ds_load_u8 v174, v44 offset:1328
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v182, v177, v176, 0xc0c0004
	ds_load_u8 v183, v44 offset:1408
	ds_load_u8 v184, v44 offset:1472
	ds_load_u8 v222, v44 offset:1488
	ds_load_u8 v223, v44 offset:1504
	ds_load_u8 v176, v44 offset:1520
	ds_load_u8 v177, v44 offset:1456
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v183, v183, v184, 0xc0c0004
	ds_load_u8 v184, v44 offset:1024
	ds_load_u8 v185, v44 offset:1088
	ds_load_u8 v224, v44 offset:1104
	ds_load_u8 v225, v44 offset:1120
	ds_load_u8 v226, v44 offset:1136
	ds_load_u8 v227, v44 offset:1072
	v_lshl_or_b32 v195, v183, 16, v182
	ds_load_u8 v182, v44 offset:1792
	ds_load_u8 v183, v44 offset:1856
	ds_load_u8 v231, v44 offset:1872
	ds_load_u8 v232, v44 offset:1888
	ds_load_u8 v233, v44 offset:1904
	ds_load_u8 v234, v44 offset:1840
	ds_load_u8 v235, v44 offset:1776
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v184, v184, v185, 0xc0c0004
	ds_load_u8 v185, v44 offset:1152
	ds_load_u8 v186, v44 offset:1216
	ds_load_u8 v228, v44 offset:1232
	ds_load_u8 v229, v44 offset:1248
	ds_load_u8 v230, v44 offset:1200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v182, v182, v183, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v42, v42, v231, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v58, v58, v232, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v185, v185, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v194, v185, 16, v184
	ds_load_u8 v183, v44 offset:1920
	ds_load_u8 v184, v44 offset:1984
	ds_load_u8 v236, v44 offset:2000
	ds_load_u8 v237, v44 offset:2016
	ds_load_u8 v238, v97
	ds_load_u8 v239, v98
	ds_load_u8 v240, v44 offset:1968
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v183, v183, v184, 0xc0c0004
	ds_load_u8 v184, v44 offset:1536
	ds_load_u8 v185, v44 offset:1600
	ds_load_u8 v241, v44 offset:1616
	ds_load_u8 v242, v44 offset:1632
	ds_load_u8 v243, v44 offset:1648
	ds_load_u8 v244, v44 offset:1584
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v40, v40, v236, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v41, v41, v237, 0xc0c0004
	v_lshl_or_b32 v197, v183, 16, v182
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v184, v184, v185, 0xc0c0004
	ds_load_u8 v185, v44 offset:1664
	ds_load_u8 v186, v44 offset:1728
	ds_load_u8 v245, v44 offset:1744
	ds_load_u8 v246, v44 offset:1760
	ds_load_u8 v247, v44 offset:1712
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v99, v135
	ds_store_b8 v99, v137 offset:512
	ds_store_b8 v99, v138 offset:1024
	ds_store_b8 v99, v139 offset:1536
	ds_store_b8 v99, v140 offset:2048
	ds_store_b8 v99, v141 offset:2560
	ds_store_b8 v99, v142 offset:3072
	ds_store_b8 v99, v143 offset:3584
	ds_store_b8 v99, v144 offset:4096
	ds_store_b8 v99, v145 offset:4608
	ds_store_b8 v99, v146 offset:5120
	ds_store_b8 v99, v147 offset:5632
	ds_store_b8 v99, v148 offset:6144
	ds_store_b8 v99, v149 offset:6656
	ds_store_b8 v99, v150 offset:7168
	ds_store_b8 v99, v151 offset:7680
	ds_store_b8 v100, v120
	ds_store_b8 v100, v121 offset:512
	ds_store_b8 v100, v122 offset:1024
	ds_store_b8 v100, v123 offset:1536
	ds_store_b8 v100, v124 offset:2048
	ds_store_b8 v100, v125 offset:2560
	ds_store_b8 v100, v126 offset:3072
	ds_store_b8 v100, v127 offset:3584
	ds_store_b8 v100, v128 offset:4096
	ds_store_b8 v100, v129 offset:4608
	ds_store_b8 v100, v130 offset:5120
	ds_store_b8 v100, v131 offset:5632
	ds_store_b8 v100, v132 offset:6144
	ds_store_b8 v100, v133 offset:6656
	ds_store_b8 v100, v134 offset:7168
	ds_store_b8 v100, v136 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[143:146], v102 offset1:8
	ds_load_2addr_stride64_b64 v[147:150], v104 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v134, s23 :: v_dual_mov_b32 v133, s22
	v_dual_mov_b32 v132, s21 :: v_dual_mov_b32 v131, s20
	v_dual_mov_b32 v130, s19 :: v_dual_mov_b32 v129, s18
	v_dual_mov_b32 v128, s17 :: v_dual_mov_b32 v127, s16
	v_perm_b32 v39, v39, v241, 0xc0c0004
	v_perm_b32 v0, v0, v242, 0xc0c0004
	v_perm_b32 v185, v185, v186, 0xc0c0004
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[186:189], v108 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v36, v36, v245, 0xc0c0004
	v_perm_b32 v35, v35, v246, 0xc0c0004
	v_lshl_or_b32 v196, v185, 16, v184
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[182:185], v106 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[143:144], v[190:191], v[127:134] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[147:148], v[192:193], v[135:142] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[182:183], v[194:195], v[135:142] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[186:187], v[196:197], v[135:142] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v2, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v136
	v_cvt_f32_i32_e32 v4, v137
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v138
	v_cvt_f32_i32_e32 v6, v139
	v_cvt_f32_i32_e32 v7, v140
	v_cvt_f32_i32_e32 v8, v141
	v_cvt_f32_i32_e32 v9, v142
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[135:142], v[145:146], v[190:191], v[127:134] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[149:150], v[192:193], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[184:185], v[194:195], v[135:142] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[188:189], v[196:197], v[135:142] neg_lo:[1,1,0]
	v_lshl_or_b32 v197, v40, 16, v42
	v_lshl_or_b32 v196, v36, 16, v39
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v10, v135
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v126, v136
	v_cvt_f32_i32_e32 v125, v137
	v_cvt_f32_i32_e32 v124, v138
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v135, v199, v198, 0xc0c0004
	v_perm_b32 v136, v201, v200, 0xc0c0004
	v_perm_b32 v137, v203, v202, 0xc0c0004
	v_perm_b32 v138, v205, v204, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v120, v139
	v_cvt_f32_i32_e32 v121, v140
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v191, v136, 16, v135
	v_perm_b32 v135, v207, v206, 0xc0c0004
	v_lshl_or_b32 v190, v138, 16, v137
	v_perm_b32 v136, v209, v208, 0xc0c0004
	v_perm_b32 v137, v213, v212, 0xc0c0004
	v_perm_b32 v138, v217, v216, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v122, v141
	v_cvt_f32_i32_e32 v123, v142
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v193, v136, 16, v135
	v_perm_b32 v135, v254, v220, 0xc0c0004
	v_lshl_or_b32 v192, v138, 16, v137
	v_perm_b32 v136, v252, v222, 0xc0c0004
	v_perm_b32 v137, v250, v224, 0xc0c0004
	v_perm_b32 v138, v248, v228, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v195, v136, 16, v135
	v_lshl_or_b32 v194, v138, 16, v137
	v_wmma_i32_16x16x16_iu4 v[135:142], v[143:144], v[190:191], v[127:134] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[147:148], v[192:193], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[182:183], v[194:195], v[135:142] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[186:187], v[196:197], v[135:142] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v36, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v39, v136
	v_cvt_f32_i32_e32 v40, v137
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v42, v138
	v_cvt_f32_i32_e32 v198, v139
	v_cvt_f32_i32_e32 v199, v140
	v_cvt_f32_i32_e32 v200, v141
	v_cvt_f32_i32_e32 v201, v142
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[135:142], v[145:146], v[190:191], v[127:134] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[149:150], v[192:193], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[184:185], v[194:195], v[135:142] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[188:189], v[196:197], v[135:142] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v190, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v191, v136
	v_cvt_f32_i32_e32 v192, v137
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v193, v138
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v135, v164, v163, 0xc0c0004
	v_perm_b32 v136, v168, v167, 0xc0c0004
	v_perm_b32 v137, v175, v172, 0xc0c0004
	v_perm_b32 v138, v179, v178, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v194, v139
	v_cvt_f32_i32_e32 v195, v140
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v164, v136, 16, v135
	v_perm_b32 v135, v181, v180, 0xc0c0004
	v_lshl_or_b32 v163, v138, 16, v137
	v_perm_b32 v136, v211, v210, 0xc0c0004
	v_perm_b32 v137, v215, v214, 0xc0c0004
	v_perm_b32 v138, v219, v218, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v196, v141
	v_cvt_f32_i32_e32 v197, v142
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v168, v136, 16, v135
	v_perm_b32 v135, v255, v221, 0xc0c0004
	v_lshl_or_b32 v167, v138, 16, v137
	v_perm_b32 v136, v253, v223, 0xc0c0004
	v_perm_b32 v137, v251, v225, 0xc0c0004
	v_perm_b32 v138, v249, v229, 0xc0c0004
	v_lshl_or_b32 v181, v41, 16, v58
	v_lshl_or_b32 v180, v35, 16, v0
	v_lshl_or_b32 v179, v136, 16, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v178, v138, 16, v137
	v_wmma_i32_16x16x16_iu4 v[135:142], v[143:144], v[163:164], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[147:148], v[167:168], v[135:142] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[182:183], v[178:179], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[186:187], v[180:181], v[135:142] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v135
	v_cvt_f32_i32_e32 v35, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v41, v137
	v_cvt_f32_i32_e32 v58, v138
	v_cvt_f32_i32_e32 v172, v139
	v_cvt_f32_i32_e32 v175, v140
	v_cvt_f32_i32_e32 v202, v141
	v_cvt_f32_i32_e32 v203, v142
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[135:142], v[145:146], v[163:164], v[127:134] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[149:150], v[167:168], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[184:185], v[178:179], v[135:142] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[188:189], v[180:181], v[135:142] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v163, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v164, v136
	v_cvt_f32_i32_e32 v167, v137
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v168, v138
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v135, v153, v152, 0xc0c0004
	v_perm_b32 v136, v155, v154, 0xc0c0004
	v_perm_b32 v137, v157, v156, 0xc0c0004
	v_perm_b32 v138, v159, v158, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v178, v139
	v_cvt_f32_i32_e32 v179, v140
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v152, v136, 16, v135
	v_perm_b32 v135, v166, v165, 0xc0c0004
	v_lshl_or_b32 v151, v138, 16, v137
	v_perm_b32 v136, v171, v170, 0xc0c0004
	v_perm_b32 v137, v161, v160, 0xc0c0004
	v_perm_b32 v138, v162, v238, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v180, v141
	v_cvt_f32_i32_e32 v181, v142
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v153, v136, 16, v135
	v_perm_b32 v135, v174, v173, 0xc0c0004
	v_lshl_or_b32 v154, v138, 16, v137
	v_perm_b32 v136, v177, v176, 0xc0c0004
	v_perm_b32 v137, v227, v226, 0xc0c0004
	v_perm_b32 v138, v230, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v156, v136, 16, v135
	v_perm_b32 v135, v244, v243, 0xc0c0004
	v_lshl_or_b32 v155, v138, 16, v137
	v_perm_b32 v136, v247, v235, 0xc0c0004
	v_perm_b32 v137, v234, v233, 0xc0c0004
	v_perm_b32 v138, v240, v239, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v157, v136, 16, v135
	v_lshl_or_b32 v158, v138, 16, v137
	v_wmma_i32_16x16x16_iu4 v[135:142], v[143:144], v[151:152], v[127:134] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[147:148], v[153:154], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[182:183], v[155:156], v[135:142] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[186:187], v[157:158], v[135:142] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v143, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v144, v136
	v_cvt_f32_i32_e32 v147, v137
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v148, v138
	v_cvt_f32_i32_e32 v159, v139
	v_cvt_f32_i32_e32 v160, v140
	v_cvt_f32_i32_e32 v161, v141
	v_cvt_f32_i32_e32 v162, v142
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[135:142], v[145:146], v[151:152], v[127:134] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v127, off, off
	scratch_load_b32 v128, off, off offset:4
	scratch_load_b32 v129, off, off offset:8
	scratch_load_b32 v130, off, off offset:12
	scratch_load_b32 v131, off, off offset:16
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[135:142], v[149:150], v[153:154], v[135:142] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[135:142], v[184:185], v[155:156], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[188:189], v[157:158], v[135:142] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v135, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v127, s44, v127, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v128, s44, v128, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v129, s44, v129, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v130, s44, v130, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v131, v131, s45, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v127, 0x80000000, v127, vcc_lo
	v_cndmask_b32_e64 v128, 0x80000000, v128, s0
	v_cndmask_b32_e64 v129, 0x80000000, v129, s1
	v_cndmask_b32_e64 v130, 0x80000000, v130, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v131, v131, s[28:31], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v127, v127, s[12:15], 0 offen
	buffer_load_u16 v145, v128, s[12:15], 0 offen
	buffer_load_u16 v146, v129, s[12:15], 0 offen
	buffer_load_u16 v149, v130, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s44, s44, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s44, s40
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v128, 16, v131
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v150, 16, v127
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v91, v128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[127:130], v113
	ds_load_b128 v[131:134], v113 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v2, v2, v150
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v37, v2, v127 :: v_dual_mul_f32 v2, v3, v150
	v_fmac_f32_e32 v118, v2, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v2, v4, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v117, v2, v129 :: v_dual_mul_f32 v2, v5, v150
	v_fmac_f32_e32 v116, v2, v130
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v3, v36, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v3, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v3, v39, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v90, v3, v128 :: v_dual_mul_f32 v3, v40, v2
	v_fmac_f32_e32 v89, v3, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v3, v42, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v88, v3, v130
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v3, 16, v146
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v0, v3
	v_mul_f32_e32 v39, v180, v3
	v_mul_f32_e32 v36, v179, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v75, v0, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v35, v3
	v_dual_mul_f32 v35, v178, v3 :: v_dual_fmac_f32 v74, v0, v128
	v_mul_f32_e32 v0, v41, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v73, v0, v129 :: v_dual_mul_f32 v0, v58, v3
	v_fmac_f32_e32 v72, v0, v130
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v143, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v59, v4, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v144, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v57, v4, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v4, v147, v0 :: v_dual_mul_f32 v5, v121, v150
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v56, v4, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v148, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v55, v4, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v6, v150
	v_mul_f32_e32 v6, v122, v150
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v122, v11 :: v_dual_fmac_f32 v115, v4, v131
	v_mul_f32_e32 v4, v7, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v7, v123, v150 :: v_dual_fmac_f32 v114, v4, v132
	v_mul_f32_e32 v4, v8, v150
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v4, v133
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v9, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v4, v134
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v198, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v87, v4, v131 :: v_dual_mul_f32 v4, v199, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v9, v195, v2 :: v_dual_fmac_f32 v86, v4, v132
	v_mul_f32_e32 v4, v200, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v85, v4, v133 :: v_dual_mul_f32 v4, v201, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v4, v134
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v172, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v71, v4, v131
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v175, v3
	v_mul_f32_e32 v40, v139, v0
	v_mul_f32_e32 v41, v140, v0
	v_mul_f32_e32 v42, v141, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v4, v132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v202, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v69, v4, v133 :: v_dual_mul_f32 v4, v203, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v4, v134
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v159, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v54, v4, v131
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v160, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v53, v4, v132
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v161, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v52, v4, v133
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v162, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v4, v134
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[127:130], v113 offset:512
	ds_load_b128 v[131:134], v113 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v10, v150
	v_mul_f32_e32 v10, v196, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v110, v4, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v4, v126, v150 :: v_dual_fmac_f32 v101, v5, v132
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v95, v6, v133
	v_dual_fmac_f32 v93, v7, v134 :: v_dual_fmac_f32 v78, v9, v132
	v_dual_fmac_f32 v109, v4, v128 :: v_dual_mul_f32 v4, v125, v150
	v_fmac_f32_e32 v77, v10, v133
	v_dual_fmac_f32 v63, v35, v131 :: v_dual_fmac_f32 v62, v36, v132
	v_fmac_f32_e32 v61, v39, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v107, v4, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v124, v150
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v46, v40, v131 :: v_dual_fmac_f32 v45, v41, v132
	v_fmac_f32_e32 v43, v42, v133
	v_fmac_f32_e32 v105, v4, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v190, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v83, v4, v127 :: v_dual_mul_f32 v4, v191, v2
	v_fmac_f32_e32 v82, v4, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v192, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v81, v4, v129 :: v_dual_mul_f32 v4, v193, v2
	v_fmac_f32_e32 v80, v4, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v163, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v67, v4, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v164, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v66, v4, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v167, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v65, v4, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v168, v3
	v_dual_mul_f32 v3, v181, v3 :: v_dual_fmac_f32 v64, v4, v130
	v_mul_f32_e32 v4, v135, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v60, v3, v134
	v_fmac_f32_e32 v50, v4, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v136, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v49, v4, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v137, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v48, v4, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v138, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v0, v142, v0 :: v_dual_fmac_f32 v47, v4, v130
	v_mul_f32_e32 v4, v120, v150
	v_mul_f32_e32 v8, v194, v2
	v_mul_f32_e32 v2, v197, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v34, v0, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v103, v4, v131
	v_dual_fmac_f32 v79, v8, v131 :: v_dual_fmac_f32 v76, v2, v134
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v12, v105, v105 :: v_dual_max_f32 v15, v95, v95
	v_dual_max_f32 v2, v118, v118 :: v_dual_max_f32 v3, v117, v117
	v_dual_max_f32 v14, v101, v101 :: v_dual_max_f32 v17, v92, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v19, v89, v89
	v_max_f32_e32 v16, v93, v93
	v_dual_max_f32 v18, v90, v90 :: v_dual_max_f32 v17, 0, v17
	v_max_f32_e32 v21, v87, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v20, v88, v88 :: v_dual_max_f32 v27, v81, v81
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v26, v82, v82
	v_dual_max_f32 v38, v71, v71 :: v_dual_max_f32 v39, v70, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v20, 0, v20
	v_max_f32_e32 v40, v69, v69
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v7, v112, v112
	v_max_f32_e32 v6, v114, v114
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v23, v85, v85
	v_dual_max_f32 v22, v86, v86 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v31, v77, v77
	v_max_f32_e32 v30, v78, v78
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v71, 0, v39
	v_dual_max_f32 v78, 0, v40 :: v_dual_max_f32 v41, v66, v66
	v_dual_max_f32 v39, v68, v68 :: v_dual_max_f32 v40, v67, v67
	v_dual_max_f32 v0, v37, v37 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v4, v116, v116 :: v_dual_max_f32 v5, v115, v115
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v6, 0, v6
	v_max_f32_e32 v11, v107, v107
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v29, v79, v79 :: v_dual_max_f32 v28, v80, v80
	v_dual_max_f32 v42, v65, v65 :: v_dual_max_f32 v79, 0, v39
	v_dual_max_f32 v44, v64, v64 :: v_dual_max_f32 v39, v63, v63
	v_dual_max_f32 v81, 0, v41 :: v_dual_max_f32 v80, 0, v40
	v_dual_max_f32 v41, v61, v61 :: v_dual_max_f32 v34, v34, v34
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v61, v7, v7 :: v_dual_max_f32 v0, 0, v0
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v9, v110, v110 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, v111, v111
	v_dual_max_f32 v10, v109, v109 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v24, v84, v84 :: v_dual_max_f32 v25, v83, v83
	v_dual_max_f32 v82, 0, v42 :: v_dual_max_f32 v83, 0, v44
	v_max_f32_e32 v40, v62, v62
	v_max_f32_e32 v42, v60, v60
	v_dual_max_f32 v86, 0, v41 :: v_dual_max_f32 v41, v55, v55
	v_dual_max_f32 v84, 0, v39 :: v_dual_max_f32 v39, v57, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v44, v59, v59 :: v_dual_max_f32 v85, 0, v40
	v_dual_max_f32 v102, 0, v34 :: v_dual_mul_f32 v67, v11, v11
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v13, v103, v103 :: v_dual_max_f32 v14, 0, v14
	v_max_f32_e32 v15, 0, v15
	v_dual_max_f32 v87, 0, v42 :: v_dual_max_f32 v88, 0, v44
	v_max_f32_e32 v91, 0, v41
	v_dual_max_f32 v44, v53, v53 :: v_dual_max_f32 v89, 0, v39
	v_dual_max_f32 v39, v52, v52 :: v_dual_max_f32 v42, v54, v54
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v54, v4, v4
	v_mul_f32_e32 v4, v102, v102
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v102, off, off offset:100
	scratch_load_b32 v103, off, off offset:104
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v40, v56, v56 :: v_dual_max_f32 v41, v50, v50
	v_dual_max_f32 v93, 0, v44 :: v_dual_max_f32 v92, 0, v42
	v_max_f32_e32 v42, v49, v49
	v_max_f32_e32 v94, 0, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v39, v47, v47 :: v_dual_max_f32 v90, 0, v40
	v_dual_max_f32 v40, v51, v51 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v33, v75, v75
	v_dual_max_f32 v32, v76, v76 :: v_dual_max_f32 v35, v74, v74
	v_dual_max_f32 v36, v73, v73 :: v_dual_max_f32 v37, v72, v72
	v_dual_max_f32 v44, v48, v48 :: v_dual_max_f32 v97, 0, v42
	v_dual_max_f32 v42, v43, v43 :: v_dual_mul_f32 v55, v5, v5
	v_max_f32_e32 v96, 0, v41
	v_max_f32_e32 v41, v45, v45
	v_dual_max_f32 v95, 0, v40 :: v_dual_max_f32 v40, v46, v46
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v47, v0, v0 :: v_dual_max_f32 v10, 0, v10
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v24, 0, v24
	v_max_f32_e32 v25, 0, v25
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v30, 0, v30
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v32, 0, v32
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v36, 0, v36
	v_max_f32_e32 v37, 0, v37
	v_dual_max_f32 v45, 0, v39 :: v_dual_max_f32 v98, 0, v44
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v53, v3, v3
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v99, 0, v40 :: v_dual_max_f32 v100, 0, v41
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v65, v10, v10
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_max_f32_e32 v101, 0, v42
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v50, v2, v2 :: v_dual_mul_f32 v69, v12, v12
	v_dual_mul_f32 v56, v6, v6 :: v_dual_mul_f32 v77, v16, v16
	v_dual_mul_f32 v62, v8, v8 :: v_dual_mul_f32 v75, v17, v17
	v_dual_mul_f32 v64, v9, v9 :: v_dual_mul_f32 v63, v22, v22
	v_dual_mul_f32 v72, v13, v13 :: v_dual_mul_f32 v59, v24, v24
	v_dual_mul_f32 v73, v14, v14 :: v_dual_mul_f32 v76, v15, v15
	v_mul_f32_e32 v57, v26, v26
	v_dual_mul_f32 v74, v18, v18 :: v_dual_mul_f32 v51, v28, v28
	v_dual_mul_f32 v70, v19, v19 :: v_dual_mul_f32 v49, v29, v29
	v_dual_mul_f32 v68, v20, v20 :: v_dual_mul_f32 v43, v33, v33
	v_dual_mul_f32 v66, v21, v21 :: v_dual_mul_f32 v41, v36, v36
	v_dual_mul_f32 v60, v23, v23 :: v_dual_mul_f32 v39, v38, v38
	v_mul_f32_e32 v58, v25, v25
	v_dual_mul_f32 v52, v27, v27 :: v_dual_mul_f32 v33, v80, v80
	v_dual_mul_f32 v48, v30, v30 :: v_dual_mul_f32 v29, v84, v84
	v_dual_mul_f32 v46, v31, v31 :: v_dual_mul_f32 v31, v82, v82
	v_dual_mul_f32 v44, v32, v32 :: v_dual_mul_f32 v27, v86, v86
	v_dual_mul_f32 v42, v35, v35 :: v_dual_mul_f32 v25, v88, v88
	v_dual_mul_f32 v40, v37, v37 :: v_dual_mul_f32 v23, v90, v90
	v_dual_mul_f32 v38, v71, v71 :: v_dual_mul_f32 v21, v92, v92
	v_dual_mul_f32 v37, v78, v78 :: v_dual_mul_f32 v34, v79, v79
	v_dual_mul_f32 v19, v94, v94 :: v_dual_mul_f32 v32, v81, v81
	v_dual_mul_f32 v17, v96, v96 :: v_dual_mul_f32 v30, v83, v83
	v_dual_mul_f32 v13, v98, v98 :: v_dual_mul_f32 v28, v85, v85
	v_mul_f32_e32 v9, v99, v99
	v_dual_mul_f32 v26, v87, v87 :: v_dual_mul_f32 v7, v101, v101
	v_mul_f32_e32 v24, v89, v89
	v_dual_mul_f32 v22, v91, v91 :: v_dual_mov_b32 v3, v1
	v_mul_f32_e32 v20, v93, v93
	v_mul_f32_e32 v18, v95, v95
	v_mul_f32_e32 v16, v97, v97
	v_mul_f32_e32 v6, v45, v45
	v_and_b32_e32 v2, 0x80, v122
	v_mul_f32_e32 v8, v100, v100
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v50, v50 :: v_dual_max_f32 v1, v47, v47
	v_max3_f32 v5, v54, v55, v56
	v_max3_f32 v10, v65, v67, v69
	v_max3_f32 v11, v72, v73, v76
	v_max_f32_e32 v12, v75, v75
	v_dual_max_f32 v0, v1, v0 :: v_dual_max_f32 v1, v74, v74
	v_max3_f32 v14, v61, v62, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v10, v10, v11, v77
	v_max_f32_e32 v11, v43, v43
	v_max3_f32 v0, v0, v53, v5
	v_max_f32_e32 v5, v42, v42
	v_max3_f32 v45, v32, v31, v30
	v_max3_f32 v71, v29, v28, v27
	v_max3_f32 v35, v57, v52, v51
	v_max3_f32 v0, v0, v14, v10
	v_max_f32_e32 v5, v11, v5
	v_max3_f32 v11, v40, v39, v38
	v_max3_f32 v36, v49, v48, v46
	v_max3_f32 v15, v60, v59, v58
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v14, v16, v13, v6
	v_max3_f32 v5, v5, v41, v11
	v_max3_f32 v11, v45, v71, v26
	v_max_f32_e32 v45, v25, v25
	v_max_f32_e32 v1, v12, v1
	v_max3_f32 v12, v68, v66, v63
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v71, 3, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp7:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s25, 0xffff
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v1, v70, v12
	v_max3_f32 v12, v35, v36, v44
	v_max3_f32 v35, v37, v34, v33
	v_max_f32_e32 v36, v24, v24
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_max3_f32 v1, v1, v15, v12
	v_max3_f32 v5, v5, v35, v11
	v_max3_f32 v15, v9, v8, v7
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v35, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v11, v22, v21, v20
	v_max3_f32 v12, v19, v18, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v14, v14, v15, v4
	v_max_f32_e32 v15, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_max_f32_e32 v78, v0, v15
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v122
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v45, v36
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v36, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v15, 0x60, v122
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v10, v10, v23, v11
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v35, v36, v36
	v_max3_f32 v10, v10, v12, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v80, v5, v35 :: v_dual_and_b32 v5, 4, v122
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v12, v0, 9, 0
	v_lshlrev_b32_e32 v14, 4, v122
	v_and_b32_e32 v35, 8, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v82, v5, 6, 0
	v_lshl_add_u32 v36, v5, 2, v12
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v1, v11 :: v_dual_lshlrev_b32 v12, 1, v2
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v11, 5, v0
	v_permlanex16_b32 v1, v10, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v36, v35, 4, v36
	v_lshl_add_u32 v0, v0, 4, 0
	v_add_nc_u32_e32 v2, 0, v2
	v_and_or_b32 v14, 0x680, v14, v11
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v45, v11, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v14, v14, v15
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v10, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v36, v12, v45
	v_add3_u32 v10, v82, v71, v14
	ds_store_b128 v1, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v14, v80
	v_mov_b32_e32 v10, v79
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v36, v78, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v45, v79, v79
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v14, v14
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v1, v78
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v45, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, v1, v1
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v36, v1
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v36, v80, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v78, v1 :: v_dual_lshlrev_b32 v35, 3, v35
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v36, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v78, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, v1, v78
	v_max_f32_e32 v79, v79, v79
	v_max_f32_e32 v71, v81, v81
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v78, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v10, v79 :: v_dual_max_f32 v45, v81, v81
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v79, v10 :: v_dual_max_f32 v36, v71, v45
	v_mov_b32_e32 v45, v14
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v78, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v45, v45 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v79, v79
	v_max_f32_e32 v45, v45, v45
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v71, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v10, v79
	v_max_f32_e32 v14, v14, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v45, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v71, v71
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v45, v45 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v36, v36, v71
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v71, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v71, v71
	v_max_f32_e32 v78, v1, v78
	v_max_f32_e32 v1, v45, v45
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v45, 1, v15
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v36, v10
.Ltmp57:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v10, 4, v103
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v14, v1
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 5, v5
	v_add3_u32 v2, v2, v45, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v36, 16, v10
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v0, v1, v35
	ds_store_b128 v2, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp62:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v10
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[78:81], v0
.Ltmp64:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v35, 32, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v82, s0, s34, v35
	v_add_co_ci_u32_e64 v83, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[1:2]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[38:39], v[82:83]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[82:83]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_mov_b16_e32 v82.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_dual_max_f32 v0, v78, v78 :: v_dual_max_f32 v45, v80, v80
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v78, s0, s34, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v35, v79, v79 :: v_dual_max_f32 v0, 0x2b8cbccc, v0
	v_max_f32_e32 v45, 0x2b8cbccc, v45
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v79, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v0
	v_div_scale_f32 v80, vcc_lo, v0, 0x40e00000, v0
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v45
	v_rcp_f32_e32 v14, v5
	v_dual_max_f32 v2, v81, v81 :: v_dual_max_f32 v35, 0x2b8cbccc, v35
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[78:79]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v86, 0x2b8cbccc, v2
	v_div_scale_f32 v36, null, 0x40e00000, 0x40e00000, v35
	v_div_scale_f32 v2, s7, v45, 0x40e00000, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v5, v14, 1.0
	v_rcp_f32_e32 v87, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v71, v14
	v_rcp_f32_e32 v71, v84
	v_mul_f32_e32 v85, v80, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v1, -v5, v85, v80
	v_fma_f32 v81, -v84, v71, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v85, v1, v14
	v_fmac_f32_e32 v71, v81, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v36, v87, 1.0
	v_fma_f32 v1, -v5, v85, v80
	v_div_scale_f32 v80, null, 0x40e00000, 0x40e00000, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v5, v2, v71
	v_fmac_f32_e32 v87, v81, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v1, v1, v14, v85
	v_rcp_f32_e32 v14, v80
	v_div_scale_f32 v81, s8, v35, 0x40e00000, v35
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v0, v1, 0x40e00000, v0
	v_fma_f32 v1, -v84, v5, v2
	v_mul_f32_e32 v85, v81, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v80, v14, 1.0
	v_fmac_f32_e32 v5, v1, v71
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v1.l, v0.h
	v_mov_b16_e32 v1.h, v82.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v78, -v36, v85, v81
	v_fmac_f32_e32 v14, v83, v14
	v_div_scale_f32 v83, s9, v86, 0x40e00000, v86
	v_fma_f32 v2, -v84, v5, v2
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v1
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v85, v78, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v83, v14
	v_div_fmas_f32 v71, v2, v71, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v0, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v36, -v36, v85, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v0, -v80, v79, v83
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v45, v71, 0x40e00000, v45
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v84, 0xffff0000, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v36, v36, v87, v85
	v_fmac_f32_e32 v79, v0, v14
	s_mov_b32 vcc_lo, s9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s7, s34, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v84, v84, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v71, -v80, v79, v83
	v_div_fixup_f32 v35, v36, 0x40e00000, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v36, null, v84, v84, v50
	v_rcp_f32_e32 v81, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v14, v71, v14, v79
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v82.l, v45.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v80, v36
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v79, v14, 0x40e00000, v86
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v14.l, v35.h
	v_mov_b16_e32 v14.h, v82.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v83, vcc_lo, v47, v84, v47
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v78, -v0, v81, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[38:39], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v71, 1, v82
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[36:37], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v82.l, v79.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v81, v78, v81 :: v_dual_and_b32 v2, 1, v14
	v_div_scale_f32 v86, null, v84, v84, v53
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v45, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v85, v83, v81
	v_fma_f32 v45, -v36, v80, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v71, 1, v82
	v_add3_u32 v14, v35, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v86
	v_fma_f32 v35, -v0, v85, v83
	v_div_scale_f32 v87, null, v84, v84, v54
	v_fmac_f32_e32 v80, v45, v80
	v_div_scale_f32 v88, s9, v50, v84, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v35, v81
	v_rcp_f32_e32 v35, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v79, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v79, v88, v80
	v_fma_f32 v89, -v86, v82, 1.0
	v_fma_f32 v0, -v0, v85, v83
	v_div_scale_f32 v91, null, v84, v84, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v36, v79, v88
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s10, v53, v84, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v87, v35, 1.0
	v_div_fmas_f32 v0, v0, v81, v85
	v_fmac_f32_e32 v79, v83, v80
	v_mul_f32_e32 v81, v89, v82
	v_rcp_f32_e32 v83, v91
	v_fmac_f32_e32 v35, v90, v35
	v_div_scale_f32 v85, s11, v54, v84, v54
	v_div_scale_f32 v90, null, v84, v84, v56
	v_div_fixup_f32 v47, v0, v84, v47
	v_fma_f32 v0, -v36, v79, v88
	v_fma_f32 v36, -v86, v81, v89
	v_mul_f32_e32 v88, v85, v35
	v_rcp_f32_e32 v92, v90
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v93, -v91, v83, 1.0
	v_div_fmas_f32 v0, v0, v80, v79
	v_fmac_f32_e32 v81, v36, v82
	v_fma_f32 v36, -v87, v88, v85
	v_div_scale_f32 v79, s9, v55, v84, v55
	v_fmac_f32_e32 v83, v93, v83
	v_div_fixup_f32 v50, v0, v84, v50
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v90, v92, 1.0
	v_fma_f32 v0, -v86, v81, v89
	v_fmac_f32_e32 v88, v36, v35
	v_div_scale_f32 v86, null, v84, v84, v61
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v36, v79, v83
	v_fmac_f32_e32 v92, v80, v92
	v_div_scale_f32 v80, s12, v56, v84, v56
	v_div_fmas_f32 v0, v0, v82, v81
	v_fma_f32 v81, -v87, v88, v85
	v_rcp_f32_e32 v85, v86
	v_div_scale_f32 v89, null, v84, v84, v62
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v82, -v91, v36, v79
	v_mul_f32_e32 v87, v80, v92
	v_div_fmas_f32 v35, v81, v35, v88
	v_rcp_f32_e32 v81, v89
	v_div_fixup_f32 v53, v0, v84, v53
	v_fmac_f32_e32 v36, v82, v83
	v_fma_f32 v82, -v90, v87, v80
	v_fma_f32 v88, -v86, v85, 1.0
	v_div_fixup_f32 v54, v35, v84, v54
	v_div_scale_f32 v35, s10, v61, v84, v61
	v_fma_f32 v0, -v91, v36, v79
	v_fmac_f32_e32 v87, v82, v92
	v_fmac_f32_e32 v85, v88, v85
	v_fma_f32 v79, -v89, v81, 1.0
	v_div_scale_f32 v82, null, v84, v84, v64
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v84, v84, v65
	v_div_fmas_f32 v0, v0, v83, v36
	v_fma_f32 v36, -v90, v87, v80
	v_mul_f32_e32 v80, v35, v85
	v_fmac_f32_e32 v81, v79, v81
	v_rcp_f32_e32 v79, v82
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v83, s9, v62, v84, v62
	v_div_fmas_f32 v36, v36, v92, v87
	v_fma_f32 v87, -v86, v80, v35
	v_rcp_f32_e32 v92, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v83, v81
	v_div_fixup_f32 v55, v0, v84, v55
	v_div_fixup_f32 v56, v36, v84, v56
	v_fma_f32 v91, -v82, v79, 1.0
	v_fmac_f32_e32 v80, v87, v85
	v_div_scale_f32 v87, null, v84, v84, v67
	v_fma_f32 v0, -v89, v90, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v79, v91, v79
	v_div_scale_f32 v36, s11, v64, v84, v64
	v_fma_f32 v91, -v88, v92, 1.0
	v_fma_f32 v35, -v86, v80, v35
	v_rcp_f32_e32 v86, v87
	v_fmac_f32_e32 v90, v0, v81
	v_mul_f32_e32 v0, v36, v79
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s12, v65, v84, v65
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v93, null, v84, v84, v69
	v_div_fmas_f32 v35, v35, v85, v80
	v_fma_f32 v80, -v89, v90, v83
	v_fma_f32 v83, -v82, v0, v36
	v_mul_f32_e32 v85, v91, v92
	v_fma_f32 v89, -v87, v86, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v61, v35, v84, v61
	v_div_fmas_f32 v80, v80, v81, v90
	v_fmac_f32_e32 v0, v83, v79
	v_rcp_f32_e32 v81, v93
	v_fma_f32 v83, -v88, v85, v91
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v89, s9, v67, v84, v67
	v_fma_f32 v35, -v82, v0, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v83, v92
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v36, v89, v86
	v_div_fixup_f32 v62, v80, v84, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v93, v81, 1.0
	v_div_scale_f32 v82, null, v84, v84, v72
	v_div_fmas_f32 v0, v35, v79, v0
	v_fma_f32 v35, -v88, v85, v91
	v_fma_f32 v79, -v87, v36, v89
	v_div_scale_f32 v88, null, v84, v84, v73
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v71, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v80, v81
	v_rcp_f32_e32 v80, v82
	v_fmac_f32_e32 v36, v79, v86
	v_rcp_f32_e32 v79, v88
	v_div_scale_f32 v83, s10, v69, v84, v69
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v64, v0, v84, v64
	v_div_fmas_f32 v35, v35, v92, v85
	v_mul_f32_e32 v85, v83, v81
	v_fma_f32 v0, -v87, v36, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v82, v80, 1.0
	v_div_scale_f32 v87, s11, v72, v84, v72
	v_fma_f32 v89, -v88, v79, 1.0
	v_div_fixup_f32 v65, v35, v84, v65
	v_fma_f32 v35, -v93, v85, v83
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v90, null, v84, v84, v76
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v84, v84, v77
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v85, v35, v81
	v_div_fmas_f32 v0, v0, v86, v36
	v_mul_f32_e32 v35, v87, v80
	v_rcp_f32_e32 v36, v90
	v_div_scale_f32 v86, s9, v73, v84, v73
	v_rcp_f32_e32 v92, v89
	v_div_fixup_f32 v67, v0, v84, v67
	v_fma_f32 v0, -v93, v85, v83
	v_fma_f32 v83, -v82, v35, v87
	v_mul_f32_e32 v91, v86, v79
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v78, 0xffff0000, v14
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v90, v36, 1.0
	v_div_fmas_f32 v0, v0, v81, v85
	v_fmac_f32_e32 v35, v83, v80
	v_fma_f32 v81, -v88, v91, v86
	v_fma_f32 v85, -v89, v92, 1.0
	v_fmac_f32_e32 v36, v93, v36
	v_div_scale_f32 v83, s10, v76, v84, v76
	v_div_fixup_f32 v69, v0, v84, v69
	v_fma_f32 v0, -v82, v35, v87
	v_fmac_f32_e32 v91, v81, v79
	v_fmac_f32_e32 v92, v85, v92
	v_div_scale_f32 v85, null, v78, v78, v75
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v81, v83, v36
	v_div_scale_f32 v82, s12, v77, v84, v77
	v_div_fmas_f32 v0, v0, v80, v35
	v_fma_f32 v35, -v88, v91, v86
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v88, null, v78, v78, v74
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v80, -v90, v81, v83
	v_mul_f32_e32 v87, v82, v92
	v_div_fmas_f32 v35, v35, v79, v91
	v_rcp_f32_e32 v79, v88
	v_div_fixup_f32 v72, v0, v84, v72
	v_fmac_f32_e32 v81, v80, v36
	v_fma_f32 v80, -v89, v87, v82
	v_fma_f32 v91, -v85, v86, 1.0
	v_div_fixup_f32 v73, v35, v84, v73
	v_div_scale_f32 v35, s9, v75, v78, v75
	v_fma_f32 v0, -v90, v81, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v87, v80, v92 :: v_dual_fmac_f32 v86, v91, v86
	v_fma_f32 v80, -v88, v79, 1.0
	v_div_scale_f32 v83, null, v78, v78, v70
	s_mov_b32 vcc_lo, s10
	v_div_fmas_f32 v0, v0, v36, v81
	v_fma_f32 v36, -v89, v87, v82
	v_mul_f32_e32 v81, v35, v86
	v_fmac_f32_e32 v79, v80, v79
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v82, s10, v74, v78, v74
	v_div_scale_f32 v89, null, v78, v78, v68
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v90, v82, v79
	v_div_fmas_f32 v36, v36, v92, v87
	v_fma_f32 v87, -v85, v81, v35
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v83, v80, 1.0
	v_div_fixup_f32 v76, v0, v84, v76
	v_fma_f32 v0, -v88, v90, v82
	v_fmac_f32_e32 v81, v87, v86
	v_dual_fmac_f32 v80, v91, v80 :: v_dual_and_b32 v45, 0xffff0000, v2
	v_div_fixup_f32 v77, v36, v84, v77
	v_div_scale_f32 v36, s11, v70, v78, v70
	v_div_scale_f32 v84, null, v78, v78, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v89, v92, 1.0
	v_fma_f32 v35, -v85, v81, v35
	v_fmac_f32_e32 v90, v0, v79
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v0, v36, v80
	v_rcp_f32_e32 v85, v84
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, s12, v68, v78, v68
	v_div_fmas_f32 v35, v35, v86, v81
	v_fma_f32 v81, -v88, v90, v82
	v_div_scale_f32 v91, null, v78, v78, v63
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v83, v0, v36
	v_mul_f32_e32 v86, v87, v92
	v_div_fmas_f32 v79, v81, v79, v90
	v_rcp_f32_e32 v81, v91
	v_fma_f32 v88, -v84, v85, 1.0
	v_fmac_f32_e32 v0, v82, v80
	v_fma_f32 v82, -v89, v86, v87
	v_div_fixup_f32 v74, v79, v78, v74
	v_div_fixup_f32 v75, v35, v78, v75
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s9, v66, v78, v66
	v_fmac_f32_e32 v86, v82, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v91, v81, 1.0
	v_div_scale_f32 v82, null, v78, v78, v60
	v_fma_f32 v35, -v83, v0, v36
	v_mul_f32_e32 v36, v88, v85
	v_fmac_f32_e32 v81, v79, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v82
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, s10, v63, v78, v63
	v_div_fmas_f32 v0, v35, v80, v0
	v_fma_f32 v35, -v89, v86, v87
	v_fma_f32 v80, -v84, v36, v88
	v_div_scale_f32 v87, null, v78, v78, v59
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v82, v79, 1.0
	v_fmac_f32_e32 v36, v80, v85
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v35, v35, v92, v86
	v_mul_f32_e32 v86, v83, v81
	v_div_fixup_f32 v70, v0, v78, v70
	v_fma_f32 v0, -v84, v36, v88
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v78, v78, v58
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v68, v35, v78, v68
	v_fma_f32 v35, -v91, v86, v83
	v_div_scale_f32 v84, s11, v60, v78, v60
	v_fma_f32 v88, -v87, v80, 1.0
	v_div_fmas_f32 v0, v0, v85, v36
	v_rcp_f32_e32 v36, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v35, v81 :: v_dual_mul_f32 v35, v84, v79
	v_fmac_f32_e32 v80, v88, v80
	v_div_scale_f32 v85, s9, v59, v78, v59
	v_div_scale_f32 v88, null, v78, v78, v57
	v_div_fixup_f32 v66, v0, v78, v66
	v_fma_f32 v0, -v91, v86, v83
	v_fma_f32 v83, -v82, v35, v84
	v_mul_f32_e32 v90, v85, v80
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v89, v36, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v35, v83, v79
	v_div_fmas_f32 v0, v0, v81, v86
	v_fma_f32 v81, -v87, v90, v85
	v_fmac_f32_e32 v36, v92, v36
	v_div_scale_f32 v83, s10, v58, v78, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v63, v0, v78, v63
	v_fma_f32 v86, -v88, v91, 1.0
	v_fma_f32 v0, -v82, v35, v84
	v_fmac_f32_e32 v90, v81, v80
	v_mul_f32_e32 v81, v83, v36
	v_div_scale_f32 v84, null, v78, v78, v52
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v82, s12, v57, v78, v57
	v_div_fmas_f32 v0, v0, v79, v35
	v_fma_f32 v35, -v87, v90, v85
	v_fma_f32 v79, -v89, v81, v83
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v87, null, v78, v78, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v86, v82, v91 :: v_dual_fmac_f32 v81, v79, v36
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v79, v87
	v_div_fmas_f32 v35, v35, v80, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v88, v86, v82
	v_div_fixup_f32 v60, v0, v78, v60
	v_fma_f32 v90, -v84, v85, 1.0
	v_fma_f32 v0, -v89, v81, v83
	v_div_fixup_f32 v59, v35, v78, v59
	v_fmac_f32_e32 v86, v80, v91
	v_div_scale_f32 v35, s9, v52, v78, v52
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v80, -v87, v79, 1.0
	v_div_scale_f32 v83, null, v78, v78, v49
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v92, null, v78, v78, v44
	v_div_fmas_f32 v0, v0, v36, v81
	v_fma_f32 v36, -v88, v86, v82
	v_mul_f32_e32 v81, v35, v85
	v_fmac_f32_e32 v79, v80, v79
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v82, s10, v51, v78, v51
	v_div_scale_f32 v88, null, v78, v78, v48
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v89, v82, v79
	v_div_fmas_f32 v36, v36, v91, v86
	v_fma_f32 v86, -v84, v81, v35
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v80, 1.0
	v_div_fixup_f32 v58, v0, v78, v58
	v_fma_f32 v0, -v87, v89, v82
	v_fmac_f32_e32 v81, v86, v85
	v_div_fixup_f32 v57, v36, v78, v57
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v36, s11, v49, v78, v49
	v_div_scale_f32 v86, null, v78, v78, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v35, -v84, v81, v35
	v_fmac_f32_e32 v89, v0, v79
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v0, v36, v80
	v_rcp_f32_e32 v84, v86
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s12, v48, v78, v48
	v_div_fmas_f32 v35, v35, v85, v81
	v_fma_f32 v81, -v87, v89, v82
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v83, v0, v36
	v_mul_f32_e32 v85, v90, v91
	v_div_fixup_f32 v52, v35, v78, v52
	v_div_fmas_f32 v79, v81, v79, v89
	v_rcp_f32_e32 v81, v92
	v_fma_f32 v87, -v86, v84, 1.0
	v_fmac_f32_e32 v0, v82, v80
	v_fma_f32 v82, -v88, v85, v90
	v_div_fixup_f32 v51, v79, v78, v51
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v84, v87, v84
	v_div_scale_f32 v87, s9, v46, v78, v46
	v_fmac_f32_e32 v85, v82, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v92, v81, 1.0
	v_div_scale_f32 v82, null, v71, v71, v43
	v_fma_f32 v35, -v83, v0, v36
	v_mul_f32_e32 v36, v87, v84
	v_fmac_f32_e32 v81, v79, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v83, s10, v44, v78, v44
	v_div_fmas_f32 v0, v35, v80, v0
	v_fma_f32 v35, -v88, v85, v90
	v_fma_f32 v80, -v86, v36, v87
	v_div_scale_f32 v88, null, v71, v71, v42
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v49, v0, v78, v49
	v_fmac_f32_e32 v36, v80, v84
	v_rcp_f32_e32 v80, v88
	v_fma_f32 v89, -v82, v79, 1.0
	v_div_fmas_f32 v35, v35, v91, v85
	v_mul_f32_e32 v85, v83, v81
	v_fma_f32 v0, -v86, v36, v87
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v71, v71, v41
	v_div_fixup_f32 v48, v35, v78, v48
	v_fma_f32 v35, -v92, v85, v83
	v_div_scale_f32 v86, s11, v43, v71, v43
	v_fma_f32 v87, -v88, v80, 1.0
	v_div_fmas_f32 v0, v0, v84, v36
	v_rcp_f32_e32 v36, v89
	v_fmac_f32_e32 v85, v35, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v35, v86, v79 :: v_dual_fmac_f32 v80, v87, v80
	v_div_scale_f32 v84, s9, v42, v71, v42
	v_div_scale_f32 v87, null, v71, v71, v40
	v_div_fixup_f32 v46, v0, v78, v46
	v_fma_f32 v0, -v92, v85, v83
	v_fma_f32 v83, -v82, v35, v86
	v_mul_f32_e32 v90, v84, v80
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v92, -v89, v36, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v35, v83, v79
	v_div_fmas_f32 v0, v0, v81, v85
	v_fma_f32 v81, -v88, v90, v84
	v_fmac_f32_e32 v36, v92, v36
	v_div_scale_f32 v83, s10, v41, v71, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v44, v0, v78, v44
	v_fma_f32 v85, -v87, v91, 1.0
	v_fma_f32 v0, -v82, v35, v86
	v_fmac_f32_e32 v90, v81, v80
	v_mul_f32_e32 v78, v83, v36
	v_div_scale_f32 v82, null, v71, v71, v39
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v81, s12, v40, v71, v40
	v_div_fmas_f32 v0, v0, v79, v35
	v_fma_f32 v35, -v88, v90, v84
	v_fma_f32 v79, -v89, v78, v83
	v_rcp_f32_e32 v84, v82
	v_div_scale_f32 v86, null, v71, v71, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v85, v81, v91 :: v_dual_fmac_f32 v78, v79, v36
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v79, v86
	v_div_fmas_f32 v35, v35, v80, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v87, v85, v81
	v_div_fixup_f32 v43, v0, v71, v43
	v_fma_f32 v88, -v82, v84, 1.0
	v_fma_f32 v0, -v89, v78, v83
	v_div_fixup_f32 v42, v35, v71, v42
	v_fmac_f32_e32 v85, v80, v91
	v_div_scale_f32 v35, s9, v39, v71, v39
	v_fmac_f32_e32 v84, v88, v84
	v_fma_f32 v80, -v86, v79, 1.0
	v_div_scale_f32 v83, null, v71, v71, v37
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v36, v78
	v_fma_f32 v36, -v87, v85, v81
	v_dual_mul_f32 v78, v35, v84 :: v_dual_fmac_f32 v79, v80, v79
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v81, s10, v38, v71, v38
	v_div_scale_f32 v87, null, v71, v71, v34
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v88, v81, v79
	v_div_fmas_f32 v36, v36, v91, v85
	v_fma_f32 v85, -v82, v78, v35
	v_rcp_f32_e32 v90, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v83, v80, 1.0
	v_div_fixup_f32 v41, v0, v71, v41
	v_fma_f32 v0, -v86, v88, v81
	v_fmac_f32_e32 v78, v85, v84
	v_div_scale_f32 v85, null, v71, v71, v33
	v_div_fixup_f32 v40, v36, v71, v40
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v36, s11, v37, v71, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v35, -v82, v78, v35
	v_fmac_f32_e32 v88, v0, v79
	v_rcp_f32_e32 v82, v85
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v0, v36, v80
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s12, v34, v71, v34
	v_div_fmas_f32 v35, v35, v84, v78
	v_fma_f32 v78, -v86, v88, v81
	v_div_scale_f32 v91, null, v71, v71, v32
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v81, -v83, v0, v36
	v_mul_f32_e32 v84, v89, v90
	v_fma_f32 v86, -v85, v82, 1.0
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	v_fmac_f32_e32 v0, v81, v80
	v_fma_f32 v81, -v87, v84, v89
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s9, v33, v71, v33
	v_div_fixup_f32 v39, v35, v71, v39
	v_div_fixup_f32 v38, v78, v71, v38
	v_fma_f32 v35, -v83, v0, v36
	v_fmac_f32_e32 v84, v81, v90
	v_mul_f32_e32 v36, v86, v82
	v_fma_f32 v78, -v91, v79, 1.0
	v_div_scale_f32 v81, null, v71, v71, v31
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, s10, v32, v71, v32
	v_div_fmas_f32 v0, v35, v80, v0
	v_fma_f32 v35, -v87, v84, v89
	v_fma_f32 v80, -v85, v36, v86
	v_fmac_f32_e32 v79, v78, v79
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v87, null, v71, v71, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v80, v82
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v37, v0, v71, v37
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v35, v35, v90, v84
	v_fma_f32 v0, -v85, v36, v86
	v_div_scale_f32 v85, s11, v31, v71, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v78, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v34, v35, v71, v34
	v_div_fmas_f32 v0, v0, v82, v36
	v_div_scale_f32 v82, s9, v30, v71, v30
	v_fmac_f32_e32 v78, v88, v78
	v_mul_f32_e32 v84, v83, v79
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_scale_f32 v88, null, v71, v71, v29
	v_div_fixup_f32 v0, v0, v71, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v91, v84, v83
	v_fmac_f32_e32 v80, v86, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v88
	v_div_scale_f32 v86, null, v71, v71, v28
	v_dual_fmac_f32 v84, v35, v79 :: v_dual_mul_f32 v89, v82, v80
	v_mul_f32_e32 v35, v85, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v90, v86
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v33, -v91, v84, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v81, v35, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v88, v36, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v33, v33, v79, v84
	v_fma_f32 v79, -v87, v89, v82
	v_fmac_f32_e32 v35, v83, v78
	v_fmac_f32_e32 v36, v91, v36
	v_div_scale_f32 v83, s10, v29, v71, v29
	v_fma_f32 v84, -v86, v90, 1.0
	v_div_fixup_f32 v32, v33, v71, v32
	v_fma_f32 v33, -v81, v35, v85
	v_fmac_f32_e32 v89, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v79, v83, v36 :: v_dual_fmac_f32 v90, v84, v90
	v_div_scale_f32 v84, null, v71, v71, v27
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v81, s12, v28, v71, v28
	v_div_fmas_f32 v33, v33, v78, v35
	v_fma_f32 v35, -v87, v89, v82
	v_fma_f32 v78, -v88, v79, v83
	v_rcp_f32_e32 v82, v84
	v_div_scale_f32 v87, null, v71, v71, v26
	v_mul_f32_e32 v85, v81, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v78, v36
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v78, v87
	v_div_fmas_f32 v35, v35, v80, v89
	v_fma_f32 v80, -v86, v85, v81
	v_div_fixup_f32 v31, v33, v71, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v82, 1.0
	v_fma_f32 v33, -v88, v79, v83
	v_div_fixup_f32 v30, v35, v71, v30
	v_fmac_f32_e32 v85, v80, v90
	v_div_scale_f32 v35, s9, v27, v71, v27
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v80, -v87, v78, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, null, v45, v45, v24
	v_div_fmas_f32 v33, v33, v36, v79
	v_fma_f32 v36, -v86, v85, v81
	v_mul_f32_e32 v79, v35, v82
	v_fmac_f32_e32 v78, v80, v78
	v_div_scale_f32 v80, null, v45, v45, v25
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v81, s10, v26, v71, v26
	v_div_fmas_f32 v36, v36, v90, v85
	v_rcp_f32_e32 v83, v80
	v_fma_f32 v85, -v84, v79, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v81, v78
	v_div_fixup_f32 v29, v33, v71, v29
	v_div_fixup_f32 v28, v36, v71, v28
	v_rcp_f32_e32 v36, v88
	v_fmac_f32_e32 v79, v85, v82
	v_fma_f32 v33, -v87, v86, v81
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v45, v45, v22
	v_fma_f32 v85, -v80, v83, 1.0
	v_fma_f32 v35, -v84, v79, v35
	v_div_scale_f32 v84, null, v45, v45, v23
	v_fmac_f32_e32 v86, v33, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v85, v83
	v_div_fmas_f32 v35, v35, v82, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v33, s11, v25, v45, v25
	v_fma_f32 v79, -v87, v86, v81
	v_fma_f32 v89, -v88, v36, 1.0
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v81, v33, v83
	v_div_scale_f32 v82, s9, v24, v45, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v36, v89, v36
	v_fma_f32 v87, -v84, v85, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v78, v79, v78, v86
	v_fma_f32 v89, -v80, v81, v33
	v_mul_f32_e32 v91, v82, v36
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s12, v23, v45, v23
	v_div_fixup_f32 v27, v35, v71, v27
	v_div_fixup_f32 v26, v78, v71, v26
	v_div_scale_f32 v78, null, v45, v45, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v86, v87, v85 :: v_dual_fmac_f32 v81, v89, v83
	v_fma_f32 v79, -v88, v91, v82
	v_fma_f32 v71, -v90, v92, 1.0
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v35, -v84, v86, v87
	v_fma_f32 v33, -v80, v81, v33
	v_fmac_f32_e32 v91, v79, v36
	v_fmac_f32_e32 v92, v71, v92
	v_div_scale_f32 v71, s10, v22, v45, v22
	v_fmac_f32_e32 v86, v35, v85
	v_rcp_f32_e32 v35, v78
	v_div_fmas_f32 v33, v33, v83, v81
	v_fma_f32 v79, -v88, v91, v82
	v_mul_f32_e32 v80, v71, v92
	v_div_scale_f32 v81, null, v45, v45, v20
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v25, v33, v45, v25
	v_div_fmas_f32 v36, v79, v36, v91
	v_fma_f32 v79, -v84, v86, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v78, v35, 1.0
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v84, -v90, v80, v71
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v24, v36, v45, v24
	v_fmac_f32_e32 v35, v82, v35
	v_div_scale_f32 v82, s9, v21, v45, v21
	v_fmac_f32_e32 v80, v84, v92
	v_div_fmas_f32 v79, v79, v85, v86
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v33, v82, v35
	v_fma_f32 v36, -v81, v83, 1.0
	v_fma_f32 v71, -v90, v80, v71
	v_div_fixup_f32 v23, v79, v45, v23
	v_div_scale_f32 v79, null, v45, v45, v19
	v_fma_f32 v84, -v78, v33, v82
	v_fmac_f32_e32 v83, v36, v83
	v_div_scale_f32 v36, s11, v20, v45, v20
	v_div_fmas_f32 v71, v71, v92, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v84, v35
	v_rcp_f32_e32 v85, v79
	v_mul_f32_e32 v80, v36, v83
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v22, v71, v45, v22
	v_fma_f32 v71, -v78, v33, v82
	v_div_scale_f32 v84, null, v45, v45, v18
	v_fma_f32 v78, -v81, v80, v36
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v33, v71, v35, v33
	v_div_scale_f32 v35, null, v45, v45, v17
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v35
	v_div_scale_f32 v71, s9, v19, v45, v19
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v45, v45, v16
	v_div_fixup_f32 v21, v33, v45, v21
	v_fma_f32 v36, -v81, v80, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v35, v78, 1.0
	v_mul_f32_e32 v81, v71, v85
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v33, v86
	v_div_scale_f32 v33, s10, v18, v45, v18
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v45, v45, v13
	v_div_fmas_f32 v36, v36, v83, v80
	v_fma_f32 v80, -v79, v81, v71
	v_mul_f32_e32 v83, v33, v86
	v_div_scale_f32 v89, s11, v17, v45, v17
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v33
	v_mul_f32_e32 v92, v89, v78
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s12, v16, v45, v16
	v_div_fixup_f32 v20, v36, v45, v20
	v_fma_f32 v36, -v79, v81, v71
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v71, -v35, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v33, -v84, v83, v33
	v_fmac_f32_e32 v92, v71, v78
	v_fma_f32 v71, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s9, v13, v45, v13
	v_div_fmas_f32 v36, v36, v85, v81
	v_div_scale_f32 v81, null, v45, v45, v6
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v35, -v35, v92, v89
	v_fmac_f32_e32 v79, v71, v88
	v_mul_f32_e32 v71, v80, v91
	v_div_fmas_f32 v33, v33, v86, v83
	v_rcp_f32_e32 v83, v81
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v19, v36, v45, v19
	v_div_fmas_f32 v35, v35, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	v_fma_f32 v82, -v87, v71, v80
	v_div_fixup_f32 v18, v33, v45, v18
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v17, v35, v45, v17
	v_div_scale_f32 v35, null, v45, v45, v9
	v_fmac_f32_e32 v71, v82, v91
	v_fma_f32 v36, -v81, v83, 1.0
	v_div_fmas_f32 v78, v78, v88, v79
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v85, null, v45, v45, v4
	v_fma_f32 v33, -v87, v71, v80
	v_fmac_f32_e32 v83, v36, v83
	v_div_scale_f32 v36, null, v45, v45, v8
	v_div_fixup_f32 v16, v78, v45, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v91, v71
	v_rcp_f32_e32 v71, v35
	v_rcp_f32_e32 v80, v36
	v_div_scale_f32 v79, vcc_lo, v6, v45, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v13, v33, v45, v13
	v_div_scale_f32 v78, null, v45, v45, v7
	v_mul_f32_e32 v84, v79, v83
	v_rcp_f32_e32 v87, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v33, -v35, v71, 1.0
	v_fma_f32 v86, -v36, v80, 1.0
	v_fma_f32 v88, -v81, v84, v79
	v_rcp_f32_e32 v82, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v71, v33, v71
	v_div_scale_f32 v33, s9, v9, v45, v9
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s10, v8, v45, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v90, v33, v71
	v_fmac_f32_e32 v84, v88, v83
	v_fma_f32 v89, -v78, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v92, v86, v80
	v_fma_f32 v91, -v85, v87, 1.0
	v_fma_f32 v88, -v35, v90, v33
	v_fma_f32 v79, -v81, v84, v79
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v81, -v36, v92, v86
	v_div_scale_f32 v89, s11, v7, v45, v7
	v_fmac_f32_e32 v90, v88, v71
	v_div_fmas_f32 v79, v79, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v92, v81, v80
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_fma_f32 v33, -v35, v90, v33
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v36, -v36, v92, v86
	v_mul_f32_e32 v93, v89, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v33, v33, v71, v90
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v36, v36, v80, v92
	v_fma_f32 v88, -v78, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v36, v45, v8
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v53
	v_rndne_f32_e32 v53, v61
	v_rndne_f32_e32 v61, v67
	v_rndne_f32_e32 v67, v76
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s12, v4, v45, v4
	v_dual_fmac_f32 v93, v88, v82 :: v_dual_and_b32 v38, 15, v63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s9, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v91, v87
	v_div_fixup_f32 v6, v79, v45, v6
	v_div_fixup_f32 v9, v33, v45, v9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v47
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v35, -v85, v94, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v96, v17
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v35, v87
	v_fma_f32 v35, -v78, v93, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v85, v94, v91
	v_div_fmas_f32 v35, v35, v82, v93
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v35, v45, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v50
	v_rndne_f32_e32 v50, v56
	v_rndne_f32_e32 v56, v65
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v0, v0, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_and_b32_e32 v17, 15, v50
	v_and_b32_e32 v50, 15, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v87, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v6, v6, s9, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v4, v71, v45, v4
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v54
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v55
	v_rndne_f32_e32 v54, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v64
	v_rndne_f32_e32 v62, v69
	v_rndne_f32_e32 v64, v72
	v_rndne_f32_e32 v69, v77
	v_rndne_f32_e32 v71, v75
	v_rndne_f32_e32 v72, v74
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v4, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_med3_f32 v9, v9, s9, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v75, v43
	v_cvt_i32_f32_e32 v77, v41
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v98, v6
	v_and_b32_e32 v6, 15, v33
	v_and_b32_e32 v41, 15, v58
	v_and_b32_e32 v42, 15, v57
	v_and_b32_e32 v57, 15, v0
	v_and_b32_e32 v58, 15, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v122
	v_and_b32_e32 v32, 16, v122
	v_lshlrev_b32_e32 v33, 4, v102
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v4, v4, s9, 0x40e00000
	v_cvt_i32_f32_e32 v92, v21
	v_cvt_i32_f32_e32 v99, v9
	v_and_b32_e32 v9, 15, v45
	v_and_b32_e32 v21, 15, v56
	v_and_b32_e32 v45, 15, v49
	v_and_b32_e32 v49, 15, v75
	v_and_b32_e32 v56, 15, v34
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v34, 6, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v75, 15, v13
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v13, v33, v15
	v_lshlrev_b32_e32 v15, 6, v122
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v73
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v8, v8, s9, 0x40e00000
	v_med3_f32 v7, v7, s9, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v34
	v_and_or_b32 v11, 0x1b00, v15, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v51, v51
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v27, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_cvt_i32_f32_e32 v82, v31
	v_cvt_i32_f32_e32 v83, v30
	v_cvt_i32_f32_e32 v84, v29
	v_cvt_i32_f32_e32 v85, v28
	v_cvt_i32_f32_e32 v94, v19
	v_cvt_i32_f32_e32 v100, v8
	v_cvt_i32_f32_e32 v101, v7
	v_and_b32_e32 v8, 15, v36
	v_and_b32_e32 v19, 15, v54
	v_and_b32_e32 v28, 15, v71
	v_and_b32_e32 v29, 15, v72
	v_and_b32_e32 v30, 15, v70
	v_and_b32_e32 v31, 15, v68
	v_and_b32_e32 v54, 15, v80
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v13, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v80, 15, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v4, v11, v103, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v7, 15, v35
	v_cvt_i32_f32_e32 v74, v44
	v_cvt_i32_f32_e32 v90, v23
	v_cvt_i32_f32_e32 v91, v22
	v_cvt_i32_f32_e32 v93, v20
	v_and_b32_e32 v20, 15, v55
	v_and_b32_e32 v22, 15, v61
	v_and_b32_e32 v23, 15, v62
	v_and_b32_e32 v43, 15, v52
	v_and_b32_e32 v44, 15, v51
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v78, v40
	v_cvt_i32_f32_e32 v88, v25
	v_cvt_i32_f32_e32 v89, v24
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v73, v46
	v_cvt_i32_f32_e32 v97, v16
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[6:9]
	ds_store_b128 v0, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[20:23], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[28:31]
	ds_store_b128 v0, v[41:44] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v4
	ds_load_b128 v[41:44], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v37
	v_cvt_i32_f32_e32 v87, v26
	v_cvt_i32_f32_e32 v95, v18
	v_and_b32_e32 v16, 15, v47
	v_and_b32_e32 v18, 15, v53
	v_and_b32_e32 v25, 15, v65
	v_and_b32_e32 v26, 15, v67
	v_and_b32_e32 v37, 15, v66
	v_and_b32_e32 v51, 15, v77
	v_and_b32_e32 v52, 15, v78
	v_and_b32_e32 v65, 15, v88
	v_and_b32_e32 v66, 15, v89
	v_and_b32_e32 v67, 15, v90
	v_and_b32_e32 v68, 15, v91
	v_cvt_i32_f32_e32 v79, v39
	v_cvt_i32_f32_e32 v86, v27
	v_and_b32_e32 v24, 15, v64
	v_and_b32_e32 v27, 15, v69
	v_and_b32_e32 v39, 15, v60
	v_and_b32_e32 v40, 15, v59
	v_and_b32_e32 v46, 15, v48
	v_and_b32_e32 v47, 15, v73
	v_and_b32_e32 v48, 15, v74
	v_and_b32_e32 v59, 15, v82
	v_and_b32_e32 v60, 15, v83
	v_and_b32_e32 v73, 15, v96
	v_and_b32_e32 v74, 15, v97
	v_and_b32_e32 v76, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[49:52]
	ds_store_b128 v0, v[57:60] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v4
	ds_load_b128 v[57:60], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[65:68]
	ds_store_b128 v0, v[73:76] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v4
	ds_load_b128 v[73:76], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[16:19]
	ds_store_b128 v0, v[24:27] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v4
	ds_load_b128 v[24:27], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v53, 15, v79
	v_and_b32_e32 v55, 15, v81
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[37:40]
	ds_store_b128 v0, v[45:48] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v4
	ds_load_b128 v[45:48], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v61, 15, v84
	v_and_b32_e32 v62, 15, v85
	v_and_b32_e32 v63, 15, v86
	v_and_b32_e32 v64, 15, v87
	v_and_b32_e32 v69, 15, v92
	v_and_b32_e32 v70, 15, v93
	v_and_b32_e32 v71, 15, v94
	v_and_b32_e32 v72, 15, v95
	v_and_b32_e32 v77, 15, v99
	v_and_b32_e32 v78, 15, v100
	v_and_b32_e32 v79, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[53:56]
	ds_store_b128 v0, v[61:64] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v4
	ds_load_b128 v[61:64], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[69:72]
	ds_store_b128 v0, v[77:80] offset:512
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v0, v20, 4, v6
	v_lshl_or_b32 v6, v21, 4, v7
	v_lshl_or_b32 v21, v43, 4, v30
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v102
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v7, v22, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, s34, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v4
	ds_load_b128 v[77:80], v4 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v4, s41, 7, v43
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v8
	v_add_nc_u32_e32 v11, 32, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v13, v23, 4, v9
	v_lshl_or_b32 v15, v24, 4, v15
	v_lshl_or_b32 v16, v25, 4, v16
	v_lshl_or_b32 v17, v26, 4, v17
	v_lshl_or_b32 v18, v27, 4, v18
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s9, v[4:5]
	v_mad_u64_u32 v[9:10], null, v10, s9, v[4:5]
	v_mad_u64_u32 v[10:11], null, v11, s9, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v41, 4, v28
	v_lshl_or_b32 v20, v42, 4, v29
	v_lshl_or_b32 v22, v44, 4, v31
	v_lshl_or_b32 v23, v45, 4, v36
	v_lshl_or_b32 v24, v46, 4, v37
	v_lshl_or_b32 v25, v47, 4, v38
	v_lshl_or_b32 v26, v48, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s9, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v13.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v4.l, 8, v6.l
	v_and_b16 v4.h, 0xff, v0.l
	v_lshlrev_b16 v5.l, 8, v18.l
	v_and_b16 v6.l, 0xff, v17.l
	v_lshlrev_b16 v6.h, 8, v16.l
	v_and_b16 v7.l, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v57, 4, v49
	v_lshl_or_b32 v28, v58, 4, v50
	v_lshl_or_b32 v29, v59, 4, v51
	v_lshl_or_b32 v30, v60, 4, v52
	v_lshl_or_b32 v31, v61, 4, v53
	v_lshl_or_b32 v33, v62, 4, v54
	v_lshl_or_b32 v34, v63, 4, v55
	v_lshl_or_b32 v35, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_cndmask_b32_e32 v0, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v1.l, 8, v22.l
	v_and_b16 v2.l, 0xff, v21.l
	v_lshlrev_b16 v4.l, 8, v20.l
	v_and_b16 v4.h, 0xff, v19.l
	v_lshlrev_b16 v5.l, 8, v26.l
	v_and_b16 v6.l, 0xff, v25.l
	v_lshlrev_b16 v6.h, 8, v24.l
	v_and_b16 v7.l, 0xff, v23.l
	s_mov_b32 s12, s24
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v40, v77, 4, v69
	v_lshl_or_b32 v41, v78, 4, v70
	v_lshl_or_b32 v42, v79, 4, v71
	v_lshl_or_b32 v44, v80, 4, v72
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[12:13], v0, s[12:15], 0 offen
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v4.h, 0xff, v27.l
	v_lshlrev_b16 v5.l, 8, v35.l
	v_and_b16 v6.l, 0xff, v34.l
	v_lshlrev_b16 v6.h, 8, v33.l
	v_and_b16 v7.l, 0xff, v31.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v73, 4, v65
	v_lshl_or_b32 v37, v74, 4, v66
	v_lshl_or_b32 v38, v75, 4, v67
	v_lshl_or_b32 v39, v76, 4, v68
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[12:13], v0, s[12:15], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v44.l
	v_and_b16 v6.l, 0xff, v42.l
	v_lshlrev_b16 v6.h, 8, v41.l
	v_and_b16 v7.l, 0xff, v40.l
	v_cndmask_b32_e32 v0, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v38.l
	v_lshlrev_b16 v4.l, 8, v37.l
	v_and_b16 v4.h, 0xff, v36.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	buffer_store_b64 v[8:9], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 4, v122
	v_lshrrev_b32_e32 v6, 2, v32
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v11, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 2, v0
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v14.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[12:13], v4, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v43
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v0, v6, v0, v43
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
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v122
	s_and_b32 s13, s27, 0xffff
	s_mov_b32 s12, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s41, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp65:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 112
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 112
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17976
; TotalNumSgprs: 48
; NumVgprs: 256
; ScratchSize: 112
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 48
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 112
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 27
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
