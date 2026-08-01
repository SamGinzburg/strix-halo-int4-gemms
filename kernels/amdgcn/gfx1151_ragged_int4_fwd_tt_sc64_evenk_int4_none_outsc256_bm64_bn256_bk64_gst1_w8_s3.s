	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	v_dual_mov_b32 v103, v0 :: v_dual_mov_b32 v38, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v3, 63, v103
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
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
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s34, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
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
	v_and_b32_e32 v2, 0x80, v103
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow469
	s_load_b128 s[24:27], s[0:1], 0x40
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v104, 15, v103
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v105, 0xf0, v103
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v84, 0
	v_mov_b32_e32 v89, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s3, s34, v104
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
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v2, s34, v104
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_mov_b32_e32 v84, 0
	s_clause 0x1
	s_load_b32 s31, s[0:1], 0x58
	s_load_b32 s42, s[0:1], 0x50
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s4
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v2, s40
	v_add_nc_u32_e32 v3, 16, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[4:5]
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v5, 32, v2
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v2, 48, v2
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v104, off offset:76
	v_mul_lo_u32 v0, v3, s40
	v_bfe_i32 v35, v103, 7, 1
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v38, 1, v103
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s7, s7, s5
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v39, 0x7f, v103
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s16, s[6:7], 0x0
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:4
	scratch_store_b32 off, v105, off offset:80
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v5, s40
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v35, 0x88, v35
	v_dual_mov_b32 v61, 0 :: v_dual_lshlrev_b32 v40, 5, v104
	v_dual_mov_b32 v56, 0 :: v_dual_and_b32 v41, 24, v38
	v_mov_b32_e32 v77, 0
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s40
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_and_b32_e32 v2, 0xe0, v103
	v_xor_b32_e32 v35, v35, v39
	v_mov_b32_e32 v55, 0
	v_lshrrev_b32_e32 v4, 5, v103
	.loc	1 1045 18 is_stmt 0             ; ragged.py:1045:18
	s_lshl_b32 s17, s41, 8
	v_lshlrev_b32_e32 v2, 4, v2
	v_lshlrev_b32_e32 v48, 2, v105
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v3, s17, v4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s31, s33
	v_or3_b32 v39, v40, v41, v2
	v_lshlrev_b32_e32 v2, 5, v103
	v_or_b32_e32 v41, 0x7f0, v103
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s30, s4, s16
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[6:7]
	v_xor_b32_e32 v45, 8, v39
	v_cmp_le_i64_e64 s5, s[38:39], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[6:7]
	v_cmp_gt_i64_e64 s7, s[36:37], v[8:9]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v34, 0xf8, v3
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v117, 0, v45
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v2, 32, v2
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
	v_xor_b32_e32 v46, 16, v39
	v_xor_b32_e32 v47, 24, v39
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v113, 0, v41
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v116, 0, v39
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v39, 0
	v_add3_u32 v48, 0, v48, v2
	v_mad_u64_u32 v[2:3], null, v3, s31, s[30:31]
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v0, s17, v103
	v_or_b32_e32 v42, 0x300, v103
	v_or_b32_e32 v43, 0x700, v103
	v_or_b32_e32 v40, 0x3f0, v103
	v_xor_b32_e32 v44, 0x110, v35
	scratch_store_b64 off, v[2:3], off offset:20 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v4, s31, s[30:31]
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_and_b32_e32 v38, 28, v38
	v_lshlrev_b32_e32 v49, 1, v105
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v102, 6, v103
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v107, 0, v104
	scratch_store_b64 off, v[2:3], off offset:28 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v5, s31, s[30:31]
	v_add_nc_u32_e32 v110, 0, v42
	v_add_nc_u32_e32 v111, 0, v43
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v112, 0, v40
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v114, 0, v35
	scratch_store_b64 off, v[2:3], off offset:36 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v6, s31, s[30:31]
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v115, 0, v44
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v118, 0, v46
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v119, 0, v47
	scratch_store_b64 off, v[2:3], off offset:44 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v7, s31, s[30:31]
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v121, 0, v103
	v_mov_b32_e32 v40, 0
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v120, 0, v49
	v_mov_b32_e32 v49, 0
	scratch_store_b64 off, v[2:3], off offset:52 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v8, s31, s[30:31]
	v_add_nc_u32_e32 v109, v48, v38
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v95, 0
	v_mov_b32_e32 v94, 0
	scratch_store_b64 off, v[2:3], off offset:60 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v9, s31, s[30:31]
	v_mad_u64_u32 v[9:10], null, v10, s31, s[30:31]
	v_mad_u64_u32 v[10:11], null, v11, s31, s[30:31]
	v_mad_u64_u32 v[11:12], null, v12, s31, s[30:31]
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
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v38, 0
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
	scratch_store_b64 off, v[2:3], off offset:68 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s14, s44, 5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s45, s44, s43
	v_or_b32_e32 v34, s14, v102
	s_mul_i32 s45, s45, s33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s15, s7
	v_mad_u64_u32 v[34:35], null, v34, s42, v[1:2]
	v_mov_b32_e32 v8, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v122, 0x80000000, v34, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v34, 4, v102
	v_or_b32_e32 v34, s14, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s42, v[1:2]
	v_cndmask_b32_e64 v123, 0x80000000, v34, s2
	v_or_b32_e32 v34, 8, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v34, s14, v34
	v_mad_u64_u32 v[34:35], null, v34, s42, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v124, 0x80000000, v34, s2
	v_or_b32_e32 v34, 12, v102
	v_or_b32_e32 v34, s14, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s42, v[1:2]
	v_cndmask_b32_e64 v125, 0x80000000, v34, s2
	v_or_b32_e32 v34, 16, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v34, s14, v34
	v_mad_u64_u32 v[34:35], null, v34, s42, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v126, 0x80000000, v34, s2
	v_or_b32_e32 v34, 20, v102
	v_or_b32_e32 v34, s14, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s42, v[1:2]
	v_cndmask_b32_e64 v127, 0x80000000, v34, s2
	v_or_b32_e32 v34, 24, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v34, s14, v34
	v_mad_u64_u32 v[34:35], null, v34, s42, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v129, 0x80000000, v34, s2
	v_or_b32_e32 v34, 28, v102
	v_or_b32_e32 v34, s14, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[34:35], null, v34, s42, v[1:2]
	scratch_load_b64 v[2:3], off, off offset:20 ; 8-byte Folded Reload
	v_and_b32_e32 v35, 31, v103
	v_or_b32_e32 v35, s14, v35
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s14, s6
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v136, v9, v35
	v_add_nc_u32_e32 v137, v10, v35
	v_add_nc_u32_e32 v138, v11, v35
	v_add_nc_u32_e32 v139, v12, v35
	v_add_nc_u32_e32 v140, v13, v35
	v_add_nc_u32_e32 v141, v14, v35
	v_add_nc_u32_e32 v142, v15, v35
	v_add_nc_u32_e32 v143, v16, v35
	v_add_nc_u32_e32 v144, v17, v35
	v_add_nc_u32_e32 v145, v18, v35
	v_add_nc_u32_e32 v146, v19, v35
	v_add_nc_u32_e32 v147, v20, v35
	v_add_nc_u32_e32 v149, v21, v35
	v_add_nc_u32_e32 v159, v22, v35
	v_add_nc_u32_e32 v160, v23, v35
	v_add_nc_u32_e32 v161, v24, v35
	v_add_nc_u32_e32 v162, v25, v35
	v_add_nc_u32_e32 v163, v26, v35
	v_add_nc_u32_e32 v164, v27, v35
	v_add_nc_u32_e32 v165, v28, v35
	v_add_nc_u32_e32 v166, v29, v35
	v_add_nc_u32_e32 v167, v30, v35
	v_add_nc_u32_e32 v168, v31, v35
	v_add_nc_u32_e32 v169, v32, v35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v128, v2, v35
	scratch_load_b64 v[2:3], off, off offset:28 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v130, v2, v35
	scratch_load_b64 v[2:3], off, off offset:36 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v131, v2, v35
	scratch_load_b64 v[2:3], off, off offset:44 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v132, v2, v35
	scratch_load_b64 v[2:3], off, off offset:52 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v133, v2, v35
	scratch_load_b64 v[2:3], off, off offset:60 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v134, v2, v35
	scratch_load_b64 v[2:3], off, off offset:68 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v135, v2, v35
	v_add_nc_u32_e32 v35, v33, v35
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f
	buffer_load_u8 v148, v128, s[4:7], 0 offen
	buffer_load_u8 v128, v130, s[4:7], 0 offen
	buffer_load_u8 v150, v131, s[4:7], 0 offen
	buffer_load_u8 v130, v132, s[4:7], 0 offen
	buffer_load_u8 v151, v133, s[4:7], 0 offen
	buffer_load_u8 v132, v134, s[4:7], 0 offen
	buffer_load_u8 v152, v135, s[4:7], 0 offen
	buffer_load_u8 v133, v136, s[4:7], 0 offen
	buffer_load_u8 v153, v137, s[4:7], 0 offen
	buffer_load_u8 v134, v138, s[4:7], 0 offen
	buffer_load_u8 v154, v139, s[4:7], 0 offen
	buffer_load_u8 v135, v140, s[4:7], 0 offen
	buffer_load_u8 v155, v141, s[4:7], 0 offen
	buffer_load_u8 v136, v142, s[4:7], 0 offen
	buffer_load_u8 v156, v143, s[4:7], 0 offen
	buffer_load_u8 v138, v144, s[4:7], 0 offen
	buffer_load_u8 v157, v145, s[4:7], 0 offen
	buffer_load_u8 v140, v146, s[4:7], 0 offen
	buffer_load_u8 v158, v147, s[4:7], 0 offen
	buffer_load_u8 v141, v149, s[4:7], 0 offen
	buffer_load_u8 v159, v159, s[4:7], 0 offen
	buffer_load_u8 v142, v160, s[4:7], 0 offen
	buffer_load_u8 v161, v161, s[4:7], 0 offen
	buffer_load_u8 v143, v162, s[4:7], 0 offen
	buffer_load_u8 v163, v163, s[4:7], 0 offen
	buffer_load_u8 v144, v164, s[4:7], 0 offen
	buffer_load_u8 v164, v165, s[4:7], 0 offen
	buffer_load_u8 v145, v166, s[4:7], 0 offen
	buffer_load_u8 v165, v167, s[4:7], 0 offen
	buffer_load_u8 v146, v168, s[4:7], 0 offen
	buffer_load_u8 v166, v169, s[4:7], 0 offen
	buffer_load_u8 v149, v35, s[4:7], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v35, v122, s[8:11], 0 offen
	buffer_load_u8 v122, v123, s[8:11], 0 offen
	buffer_load_u8 v123, v124, s[8:11], 0 offen
	buffer_load_u8 v124, v126, s[8:11], 0 offen
	buffer_load_u8 v126, v127, s[8:11], 0 offen
	buffer_load_u8 v127, v129, s[8:11], 0 offen
	buffer_load_u8 v34, v34, s[8:11], 0 offen
	buffer_load_u8 v125, v125, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v121, v35
	s_waitcnt vmcnt(6)
	ds_store_b8 v121, v122 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v121, v123 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v121, v124 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v121, v126 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v110, v125
	ds_store_b8 v121, v127 offset:1536
	ds_store_b8 v111, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v34, v107 offset:320
	ds_load_u8 v35, v107 offset:256
	ds_load_u8 v192, v107 offset:336
	ds_load_u8 v193, v107 offset:272
	ds_load_u8 v169, v107 offset:352
	ds_load_u8 v171, v107 offset:288
	ds_load_u8 v122, v107 offset:368
	ds_load_u8 v123, v107 offset:304
	ds_load_u8 v248, v107 offset:1168
	ds_load_u8 v249, v107 offset:1184
	ds_load_u8 v250, v107 offset:1040
	ds_load_u8 v251, v107 offset:1056
	ds_load_u8 v252, v107 offset:1424
	ds_load_u8 v253, v107 offset:1440
	ds_load_u8 v254, v107 offset:1296
	ds_load_u8 v255, v107 offset:1312
	ds_load_u8 v37, v107 offset:1680
	ds_load_u8 v36, v107 offset:1696
	ds_load_u8 v103, v107 offset:1552
	ds_load_u8 v0, v107 offset:1568
	ds_load_u8 v104, v107 offset:1936
	ds_load_u8 v105, v107 offset:1952
	ds_load_u8 v106, v107 offset:1808
	ds_load_u8 v108, v107 offset:1824
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v107 offset:448
	ds_load_u8 v126, v107 offset:384
	ds_load_u8 v199, v107 offset:464
	ds_load_u8 v200, v107 offset:400
	ds_load_u8 v174, v107 offset:480
	ds_load_u8 v175, v107 offset:416
	ds_load_u8 v124, v107 offset:496
	ds_load_u8 v125, v107 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v126, v35, 0xc0c0004
	ds_load_u8 v129, v107 offset:64
	ds_load_u8 v131, v107
	ds_load_u8 v204, v107 offset:80
	ds_load_u8 v178, v107 offset:96
	ds_load_u8 v126, v107 offset:112
	ds_load_u8 v205, v107 offset:16
	ds_load_u8 v179, v107 offset:32
	ds_load_u8 v127, v107 offset:48
	v_lshl_or_b32 v35, v35, 16, v34
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v137, v131, v129, 0xc0c0004
	ds_load_u8 v139, v107 offset:192
	ds_load_u8 v147, v107 offset:128
	ds_load_u8 v207, v107 offset:208
	ds_load_u8 v208, v107 offset:144
	ds_load_u8 v180, v107 offset:224
	ds_load_u8 v181, v107 offset:160
	ds_load_u8 v129, v107 offset:240
	ds_load_u8 v131, v107 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v139, v147, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v139, 16, v137
	ds_load_u8 v147, v107 offset:832
	ds_load_u8 v160, v107 offset:768
	ds_load_u8 v209, v107 offset:848
	ds_load_u8 v210, v107 offset:784
	ds_load_u8 v182, v107 offset:864
	ds_load_u8 v183, v107 offset:800
	ds_load_u8 v137, v107 offset:880
	ds_load_u8 v139, v107 offset:816
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v167, v160, v147, 0xc0c0004
	ds_load_u8 v160, v107 offset:960
	ds_load_u8 v162, v107 offset:896
	ds_load_u8 v211, v107 offset:976
	ds_load_u8 v212, v107 offset:912
	ds_load_u8 v184, v107 offset:992
	ds_load_u8 v185, v107 offset:928
	ds_load_u8 v147, v107 offset:944
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v172, v162, v160, 0xc0c0004
	ds_load_u8 v168, v107 offset:576
	ds_load_u8 v170, v107 offset:512
	ds_load_u8 v213, v107 offset:592
	ds_load_u8 v214, v107 offset:528
	ds_load_u8 v186, v107 offset:608
	ds_load_u8 v187, v107 offset:544
	ds_load_u8 v160, v107 offset:624
	ds_load_u8 v162, v107 offset:560
	v_lshl_or_b32 v230, v172, 16, v167
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v173, v170, v168, 0xc0c0004
	ds_load_u8 v176, v107 offset:704
	ds_load_u8 v177, v107 offset:640
	ds_load_u8 v216, v107 offset:720
	ds_load_u8 v217, v107 offset:656
	ds_load_u8 v190, v107 offset:736
	ds_load_u8 v191, v107 offset:672
	ds_load_u8 v168, v107 offset:752
	ds_load_u8 v170, v107 offset:688
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v229, v176, 16, v173
	ds_load_u8 v176, v107 offset:1344
	ds_load_u8 v177, v107 offset:1280
	ds_load_u8 v167, v107 offset:1264
	ds_load_u8 v219, v107 offset:1360
	ds_load_u8 v196, v107 offset:1376
	ds_load_u8 v172, v107 offset:1392
	ds_load_u8 v173, v107 offset:1328
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v195, v177, v176, 0xc0c0004
	ds_load_u8 v188, v107 offset:1408
	ds_load_u8 v189, v107 offset:1472
	ds_load_u8 v235, v107 offset:1488
	ds_load_u8 v201, v107 offset:1504
	ds_load_u8 v176, v107 offset:1520
	ds_load_u8 v177, v107 offset:1456
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v197, v188, v189, 0xc0c0004
	ds_load_u8 v194, v107 offset:1024
	ds_load_u8 v198, v107 offset:1088
	ds_load_u8 v236, v107 offset:1104
	ds_load_u8 v215, v107 offset:1120
	ds_load_u8 v188, v107 offset:1136
	ds_load_u8 v189, v107 offset:1072
	v_lshl_or_b32 v232, v197, 16, v195
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v198, v194, v198, 0xc0c0004
	ds_load_u8 v202, v107 offset:1152
	ds_load_u8 v203, v107 offset:1216
	ds_load_u8 v237, v107 offset:1232
	ds_load_u8 v218, v107 offset:1248
	ds_load_u8 v194, v107 offset:1200
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v202, v202, v203, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v231, v202, 16, v198
	ds_load_u8 v202, v107 offset:1792
	ds_load_u8 v203, v107 offset:1856
	ds_load_u8 v238, v107 offset:1872
	ds_load_u8 v220, v107 offset:1888
	ds_load_u8 v195, v107 offset:1904
	ds_load_u8 v197, v107 offset:1840
	ds_load_u8 v198, v107 offset:1776
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v221, v202, v203, 0xc0c0004
	ds_load_u8 v222, v107 offset:1920
	ds_load_u8 v223, v107 offset:1984
	ds_load_u8 v239, v107 offset:2000
	ds_load_u8 v240, v107 offset:2016
	ds_load_u8 v206, v112
	ds_load_u8 v202, v113
	ds_load_u8 v203, v107 offset:1968
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v106, v106, v238, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v108, v108, v220, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v222, v222, v223, 0xc0c0004
	ds_load_u8 v223, v107 offset:1536
	ds_load_u8 v224, v107 offset:1600
	ds_load_u8 v241, v107 offset:1616
	ds_load_u8 v242, v107 offset:1632
	ds_load_u8 v243, v107 offset:1648
	ds_load_u8 v244, v107 offset:1584
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v104, v104, v239, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v105, v105, v240, 0xc0c0004
	v_lshl_or_b32 v234, v222, 16, v221
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v223, v223, v224, 0xc0c0004
	ds_load_u8 v224, v107 offset:1664
	ds_load_u8 v225, v107 offset:1728
	ds_load_u8 v245, v107 offset:1744
	ds_load_u8 v246, v107 offset:1760
	ds_load_u8 v247, v107 offset:1712
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v114, v148
	ds_store_b8 v114, v150 offset:512
	ds_store_b8 v114, v151 offset:1024
	ds_store_b8 v114, v152 offset:1536
	ds_store_b8 v114, v153 offset:2048
	ds_store_b8 v114, v154 offset:2560
	ds_store_b8 v114, v155 offset:3072
	ds_store_b8 v114, v156 offset:3584
	ds_store_b8 v114, v157 offset:4096
	ds_store_b8 v114, v158 offset:4608
	ds_store_b8 v114, v159 offset:5120
	ds_store_b8 v114, v161 offset:5632
	ds_store_b8 v114, v163 offset:6144
	ds_store_b8 v114, v164 offset:6656
	ds_store_b8 v114, v165 offset:7168
	ds_store_b8 v114, v166 offset:7680
	ds_store_b8 v115, v128
	ds_store_b8 v115, v130 offset:512
	ds_store_b8 v115, v132 offset:1024
	ds_store_b8 v115, v133 offset:1536
	ds_store_b8 v115, v134 offset:2048
	ds_store_b8 v115, v135 offset:2560
	ds_store_b8 v115, v136 offset:3072
	ds_store_b8 v115, v138 offset:3584
	ds_store_b8 v115, v140 offset:4096
	ds_store_b8 v115, v141 offset:4608
	ds_store_b8 v115, v142 offset:5120
	ds_store_b8 v115, v143 offset:5632
	ds_store_b8 v115, v144 offset:6144
	ds_store_b8 v115, v145 offset:6656
	ds_store_b8 v115, v146 offset:7168
	ds_store_b8 v115, v149 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[132:135], v116 offset1:8
	ds_load_2addr_stride64_b64 v[140:143], v117 offset1:8
	ds_load_2addr_stride64_b64 v[156:159], v118 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v155, s23 :: v_dual_mov_b32 v154, s22
	v_dual_mov_b32 v153, s21 :: v_dual_mov_b32 v152, s20
	v_dual_mov_b32 v151, s19 :: v_dual_mov_b32 v150, s18
	v_dual_mov_b32 v149, s17 :: v_dual_mov_b32 v148, s16
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[163:166], v119 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v224, v224, v225, 0xc0c0004
	v_perm_b32 v128, v205, v204, 0xc0c0004
	v_perm_b32 v130, v208, v207, 0xc0c0004
	v_perm_b32 v136, v214, v213, 0xc0c0004
	v_perm_b32 v138, v217, v216, 0xc0c0004
	v_lshl_or_b32 v233, v224, 16, v223
	v_perm_b32 v103, v103, v241, 0xc0c0004
	v_perm_b32 v37, v37, v245, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[221:228], v[132:133], v[34:35], v[148:155] neg_lo:[1,1,0]
	v_lshl_or_b32 v144, v138, 16, v136
	v_perm_b32 v136, v250, v236, 0xc0c0004
	v_perm_b32 v138, v248, v237, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[221:228], v[140:141], v[229:230], v[221:228] neg_lo:[1,1,0]
	v_perm_b32 v0, v0, v242, 0xc0c0004
	v_perm_b32 v36, v36, v246, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[221:228], v[156:157], v[231:232], v[221:228] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[221:228], v[163:164], v[233:234], v[221:228] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v146, v221
	v_cvt_f32_i32_e32 v161, v222
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v223
	v_cvt_f32_i32_e32 v3, v224
	v_cvt_f32_i32_e32 v4, v225
	v_cvt_f32_i32_e32 v5, v226
	v_cvt_f32_i32_e32 v6, v227
	v_cvt_f32_i32_e32 v7, v228
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[221:228], v[134:135], v[34:35], v[148:155] neg_lo:[1,1,0]
	v_perm_b32 v34, v193, v192, 0xc0c0004
	v_perm_b32 v35, v200, v199, 0xc0c0004
	v_lshl_or_b32 v192, v138, 16, v136
	v_lshl_or_b32 v200, v104, 16, v106
	v_lshl_or_b32 v199, v37, 16, v103
	v_perm_b32 v136, v187, v186, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	v_lshl_or_b32 v34, v130, 16, v128
	v_perm_b32 v128, v210, v209, 0xc0c0004
	v_perm_b32 v130, v212, v211, 0xc0c0004
	v_perm_b32 v138, v191, v190, 0xc0c0004
	v_lshl_or_b32 v187, v105, 16, v108
	v_wmma_i32_16x16x16_iu4 v[207:214], v[132:133], v[34:35], v[148:155] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v145, v130, 16, v128
	v_perm_b32 v128, v254, v219, 0xc0c0004
	v_perm_b32 v130, v252, v235, 0xc0c0004
	v_lshl_or_b32 v186, v36, 16, v0
	v_wmma_i32_16x16x16_iu4 v[221:228], v[142:143], v[229:230], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[207:214], v[140:141], v[144:145], v[207:214] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v193, v130, 16, v128
	v_perm_b32 v128, v179, v178, 0xc0c0004
	v_perm_b32 v130, v181, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[221:228], v[158:159], v[231:232], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[207:214], v[156:157], v[192:193], v[207:214] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[221:228], v[165:166], v[233:234], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[207:214], v[163:164], v[199:200], v[207:214] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v225, v225
	v_cvt_f32_i32_e32 v227, v227
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v37, v207
	v_cvt_f32_i32_e32 v103, v208
	v_cvt_f32_i32_e32 v104, v209
	v_cvt_f32_i32_e32 v106, v210
	v_cvt_f32_i32_e32 v204, v211
	v_cvt_f32_i32_e32 v205, v212
	v_cvt_f32_i32_e32 v216, v213
	v_cvt_f32_i32_e32 v217, v214
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[207:214], v[134:135], v[34:35], v[148:155] neg_lo:[1,1,0]
	v_perm_b32 v34, v171, v169, 0xc0c0004
	v_perm_b32 v35, v175, v174, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v221, v221
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[207:214], v[142:143], v[144:145], v[207:214] neg_lo:[1,1,0]
	v_lshl_or_b32 v144, v138, 16, v136
	v_perm_b32 v136, v251, v215, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	v_lshl_or_b32 v34, v130, 16, v128
	v_perm_b32 v128, v183, v182, 0xc0c0004
	v_perm_b32 v130, v185, v184, 0xc0c0004
	v_perm_b32 v138, v249, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[207:214], v[158:159], v[192:193], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[132:133], v[34:35], v[148:155] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v145, v130, 16, v128
	v_perm_b32 v128, v255, v196, 0xc0c0004
	v_perm_b32 v130, v253, v201, 0xc0c0004
	v_lshl_or_b32 v174, v138, 16, v136
	v_wmma_i32_16x16x16_iu4 v[207:214], v[165:166], v[199:200], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[140:141], v[144:145], v[178:185] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v222, v222
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v175, v130, 16, v128
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v223, v223
	v_cvt_f32_i32_e32 v200, v214
	v_cvt_f32_i32_e32 v199, v213
	v_cvt_f32_i32_e32 v224, v224
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[178:185], v[156:157], v[174:175], v[178:185] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v192, v207
	v_cvt_f32_i32_e32 v207, v208
	v_cvt_f32_i32_e32 v208, v209
	v_cvt_f32_i32_e32 v209, v210
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[178:185], v[163:164], v[186:187], v[178:185] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v226, v226
	v_cvt_f32_i32_e32 v228, v228
	v_cvt_f32_i32_e32 v193, v212
	v_cvt_f32_i32_e32 v210, v211
	v_cvt_f32_i32_e32 v0, v178
	v_cvt_f32_i32_e32 v36, v179
	v_cvt_f32_i32_e32 v105, v180
	v_cvt_f32_i32_e32 v108, v181
	v_cvt_f32_i32_e32 v169, v182
	v_cvt_f32_i32_e32 v171, v183
	v_cvt_f32_i32_e32 v190, v184
	v_cvt_f32_i32_e32 v191, v185
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[178:185], v[134:135], v[34:35], v[148:155] neg_lo:[1,1,0]
	v_perm_b32 v34, v123, v122, 0xc0c0004
	v_perm_b32 v35, v125, v124, 0xc0c0004
	v_perm_b32 v122, v127, v126, 0xc0c0004
	v_perm_b32 v123, v131, v129, 0xc0c0004
	v_perm_b32 v124, v139, v137, 0xc0c0004
	v_perm_b32 v125, v147, v206, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	v_wmma_i32_16x16x16_iu4 v[178:185], v[142:143], v[144:145], v[178:185] neg_lo:[1,1,0]
	v_lshl_or_b32 v34, v123, 16, v122
	v_perm_b32 v122, v162, v160, 0xc0c0004
	v_perm_b32 v123, v170, v168, 0xc0c0004
	v_lshl_or_b32 v131, v125, 16, v124
	v_perm_b32 v124, v189, v188, 0xc0c0004
	v_perm_b32 v125, v194, v167, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[178:185], v[158:159], v[174:175], v[178:185] neg_lo:[1,1,0]
	v_lshl_or_b32 v130, v123, 16, v122
	v_perm_b32 v122, v173, v172, 0xc0c0004
	v_perm_b32 v123, v177, v176, 0xc0c0004
	v_lshl_or_b32 v136, v125, 16, v124
	v_perm_b32 v124, v197, v195, 0xc0c0004
	v_perm_b32 v125, v203, v202, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[178:185], v[165:166], v[186:187], v[178:185] neg_lo:[1,1,0]
	v_lshl_or_b32 v137, v123, 16, v122
	v_perm_b32 v122, v244, v243, 0xc0c0004
	v_perm_b32 v123, v247, v198, 0xc0c0004
	v_lshl_or_b32 v139, v125, 16, v124
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v178
	v_cvt_f32_i32_e32 v145, v183
	v_cvt_f32_i32_e32 v178, v179
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v138, v123, 16, v122
	v_wmma_i32_16x16x16_iu4 v[122:129], v[132:133], v[34:35], v[148:155] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v179, v180
	v_cvt_f32_i32_e32 v180, v181
	v_cvt_f32_i32_e32 v181, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[122:129], v[140:141], v[130:131], v[122:129] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v175, v185
	v_cvt_f32_i32_e32 v174, v184
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[122:129], v[156:157], v[136:137], v[122:129] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[163:164], v[138:139], v[122:129] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v132, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v133, v123
	v_cvt_f32_i32_e32 v140, v124
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v141, v125
	v_cvt_f32_i32_e32 v147, v126
	v_cvt_f32_i32_e32 v156, v127
	v_cvt_f32_i32_e32 v157, v128
	v_cvt_f32_i32_e32 v160, v129
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[122:129], v[134:135], v[34:35], v[148:155] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[142:143], v[130:131], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[158:159], v[136:137], v[122:129] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[165:166], v[138:139], v[122:129] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v34, v122
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v122, off, off         ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v134, v123
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v123, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v135, v124
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v124, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v136, v125
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v125, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v137, v126
	.loc	1 1213 40                       ; ragged.py:1213:40
	scratch_load_b32 v126, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v35, v127
	v_cvt_f32_i32_e32 v130, v128
	v_cvt_f32_i32_e32 v131, v129
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v122, s44, v122, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v123, s44, v123, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v124, s44, v124, 1
	v_cndmask_b32_e32 v122, 0x80000000, v122, vcc_lo
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v125, s44, v125, 1
	v_cndmask_b32_e64 v123, 0x80000000, v123, s0
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v126, v126, s45, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v124, 0x80000000, v124, s1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s44, s44, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v125, 0x80000000, v125, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v126, v126, s[28:31], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v122, v122, s[12:15], 0 offen
	buffer_load_u16 v138, v123, s[12:15], 0 offen
	buffer_load_u16 v139, v124, s[12:15], 0 offen
	buffer_load_u16 v142, v125, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s44, s40
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v143, 16, v122
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v123, 16, v126
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v146, v143, v146
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v109, v123
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[122:125], v120
	ds_load_b128 v[126:129], v120 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v101, v146, v122 :: v_dual_mul_f32 v146, v143, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v100, v146, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v2, v143, v2
	v_mul_f32_e32 v4, v143, v4
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v99, v2, v124 :: v_dual_mul_f32 v2, v143, v3
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v97, v4, v126 :: v_dual_fmac_f32 v98, v2, v125
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v138
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v3, v2, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v86, v3, v122 :: v_dual_mul_f32 v3, v2, v103
	v_fmac_f32_e32 v85, v3, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v3, v2, v104 :: v_dual_mul_f32 v4, v143, v5
	v_mul_f32_e32 v37, v200, v2
	v_mul_f32_e32 v5, v227, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v83, v3, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v3, v2, v106 :: v_dual_fmac_f32 v96, v4, v127
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v82, v3, v125 :: v_dual_lshlrev_b32 v3, 16, v139
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v69, v0, v122 :: v_dual_mul_f32 v0, v3, v36
	v_fmac_f32_e32 v68, v0, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v3, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v67, v0, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v3, v108
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v66, v0, v125
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v36, v0, v132 :: v_dual_mul_f32 v103, v145, v3
	v_mul_f32_e32 v105, v175, v3
	v_dual_mul_f32 v104, v174, v3 :: v_dual_mul_f32 v35, v35, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v53, v36, v122
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v0, v133
	v_mul_f32_e32 v108, v131, v0
	v_mul_f32_e32 v106, v130, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v52, v36, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v0, v140
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v36, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v0, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v50, v36, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v199, v2
	v_mul_f32_e32 v4, v143, v6
	v_mul_f32_e32 v6, v228, v143
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v95, v4, v128 :: v_dual_mul_f32 v4, v143, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v7, v143, v225
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v4, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v2, v204
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v81, v4, v126 :: v_dual_mul_f32 v4, v2, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v4, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v2, v216
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v79, v4, v128 :: v_dual_mul_f32 v4, v2, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v4, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v3, v169
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v65, v4, v126 :: v_dual_mul_f32 v4, v3, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v4, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v3, v190
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v63, v4, v128 :: v_dual_mul_f32 v4, v3, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v4, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v147
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v49, v4, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v48, v4, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v157
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v47, v4, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v46, v4, v129
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[122:125], v120 offset:512
	ds_load_b128 v[126:129], v120 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v221, v143
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v84, v4, v122
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v143, v222
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v90, v7, v126
	v_dual_fmac_f32 v88, v5, v128 :: v_dual_fmac_f32 v87, v6, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v70, v37, v129 :: v_dual_fmac_f32 v93, v4, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v143, v223
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v56, v103, v127 :: v_dual_mov_b32 v103, v8
	v_dual_fmac_f32 v55, v104, v128 :: v_dual_fmac_f32 v54, v105, v129
	v_fmac_f32_e32 v92, v4, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v143, v224
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v41, v35, v127 :: v_dual_fmac_f32 v40, v106, v128
	v_fmac_f32_e32 v39, v108, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v4, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v192, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v77, v4, v122 :: v_dual_mul_f32 v4, v2, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v4, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v2, v208
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v75, v4, v124 :: v_dual_mul_f32 v4, v2, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v4, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v144, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v61, v4, v122
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v3, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v60, v4, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v3, v179
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v59, v4, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v3, v180
	v_mul_f32_e32 v3, v3, v181
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v58, v4, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v34, v0
	v_mul_f32_e32 v34, v193, v2
	v_mul_f32_e32 v2, v2, v210
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v57, v3, v126
	v_fmac_f32_e32 v45, v4, v122
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v2, v126
	v_fmac_f32_e32 v72, v34, v127
	v_fmac_f32_e32 v44, v4, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v43, v4, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v0, v136
	v_mul_f32_e32 v0, v0, v137
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v42, v4, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v4, v226, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v38, v0, v126
	v_fmac_f32_e32 v89, v4, v127
	v_fmac_f32_e32 v71, v36, v128
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v104, off, off offset:76
	scratch_load_b32 v105, off, off offset:80
	v_dual_mov_b32 v3, v1 :: v_dual_and_b32 v2, 0x80, v103
.LBB0_7:                                ; %._crit_edge
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v100|, |v100|
	v_max_f32_e64 v1, |v101|, |v101|
	v_max3_f32 v4, |v98|, |v97|, |v96|
	v_max3_f32 v5, |v93|, |v92|, |v91|
	v_max3_f32 v6, |v90|, |v89|, |v88|
	v_max_f32_e64 v7, |v86|, |v86|
	v_max_f32_e32 v0, v1, v0
	v_max_f32_e64 v1, |v85|, |v85|
	v_max3_f32 v10, |v76|, |v75|, |v74|
	v_max3_f32 v5, v5, v6, |v87|
	v_max_f32_e64 v6, |v69|, |v69|
	v_max3_f32 v11, |v73|, |v72|, |v71|
	v_max_f32_e32 v1, v7, v1
	v_max3_f32 v0, v0, |v99|, v4
	v_max_f32_e64 v4, |v68|, |v68|
	v_max3_f32 v7, |v82|, |v81|, |v80|
	v_max3_f32 v12, |v60|, |v59|, |v58|
	v_max3_f32 v13, |v57|, |v56|, |v55|
	v_max3_f32 v8, |v95|, |v94|, |v84|
	v_max3_f32 v9, |v79|, |v78|, |v77|
	v_max3_f32 v1, v1, |v83|, v7
	v_max3_f32 v7, v10, v11, |v70|
	v_max_f32_e64 v11, |v52|, |v52|
	v_max_f32_e32 v4, v6, v4
	v_max3_f32 v6, |v66|, |v65|, |v64|
	v_max3_f32 v10, |v63|, |v62|, |v61|
	v_max3_f32 v0, v0, v8, v5
	v_max3_f32 v1, v1, v9, v7
	v_max3_f32 v8, |v44|, |v43|, |v42|
	v_max3_f32 v4, v4, |v67|, v6
	v_max3_f32 v6, v12, v13, |v54|
	v_max_f32_e64 v12, |v53|, |v53|
	v_max3_f32 v9, |v38|, |v41|, |v40|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v7, |v47|, |v46|, |v45|
	v_max3_f32 v4, v4, v10, v6
	v_max_f32_e32 v5, v12, v11
	v_max3_f32 v6, |v50|, |v49|, |v48|
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v10, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v8, v8, v9, |v39|
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 8, v103
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, |v51|, v6
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v10, v10 :: v_dual_max_f32 v12, v11, v11
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v17, 3, v2
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v7, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v10, v0, v9 :: v_dual_and_b32 v9, 0x60, v103
	v_max_f32_e32 v12, v4, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v11, v1, v6 :: v_dual_lshlrev_b32 v8, 4, v103
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v1, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 3, v103
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp15:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s25, 0xffff
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_and_b32 v4, 4, v103
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v7, v0, 9, 0
	v_lshlrev_b32_e32 v6, 5, v0
	v_lshl_add_u32 v0, v0, 4, 0
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_lshl_add_u32 v13, v4, 2, v7
	v_and_or_b32 v8, 0x680, v8, v6
	v_lshlrev_b32_e32 v7, 1, v2
	v_xor_b32_e32 v15, v6, v9
	v_add_nc_u32_e32 v2, 0, v2
	v_lshl_add_u32 v16, v14, 4, v13
	v_xor_b32_e32 v8, v8, v9
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v5, v1
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v18, v4, 6, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v16, v7, v15
	v_add3_u32 v5, v18, v17, v8
	ds_store_b128 v1, v[10:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v10
	v_dual_mov_b32 v5, v11 :: v_dual_mov_b32 v8, v12
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	v_max_f32_e32 v15, v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	v_dual_max_f32 v5, v5, v5 :: v_dual_lshlrev_b32 v14, 3, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v1, v10, v1
	v_dual_max_f32 v5, v11, v5 :: v_dual_max_f32 v10, v12, v12
	v_max_f32_e32 v11, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v12, v1
	v_dual_mov_b32 v13, v5 :: v_dual_max_f32 v8, v10, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v15, v11
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v15, v10 :: v_dual_max_f32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v11, v8
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v12 :: v_dual_max_f32 v12, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v16, v10, v12 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v8, v8, v11
	v_dual_max_f32 v5, v5, v13 :: v_dual_mov_b32 v12, v8
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v15, v5
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v13, v13 :: v_dual_mov_b32 v17, v16
	v_max_f32_e32 v10, v1, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v12, v12
	v_max_f32_e32 v11, v15, v15
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v15, 1, v9
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v12, v8, v1 :: v_dual_max_f32 v11, v5, v11
	v_max_f32_e32 v5, v17, v17
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 5, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v2, v15, v14
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v16, v5
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v0, v1, v14
.Ltmp40:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v5, 4, v105
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v2, v[10:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v0
.Ltmp42:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v5
	v_or_b32_e32 v16, 16, v5
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v1
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v10, v10
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v19, v11, v11
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 32, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v12, 0x2b8cbccc, v12
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v0
	v_div_scale_f32 v17, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v12
	v_rcp_f32_e32 v8, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v20, v18
	v_fma_f32 v14, -v4, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, v14, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s0, s34, v10
	v_add_co_ci_u32_e64 v15, null, s35, 0, s0
	v_add_co_u32 v10, s0, s34, v16
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v16, 0x2b8cbccc, v19
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, v13, v13
	v_mul_f32_e32 v21, v17, v8
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v16
	v_fma_f32 v19, -v18, v20, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v22, 0x2b8cbccc, v2
	v_fma_f32 v1, -v4, v21, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v23, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[38:39], v[14:15]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v2, s7, v12, 0x40e00000, v12
	v_fmac_f32_e32 v21, v1, v8
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[14:15]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v15.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[10:11]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v1, -v4, v21, v17
	v_div_scale_f32 v17, null, 0x40e00000, 0x40e00000, v22
	v_fma_f32 v14, -v13, v23, 1.0
	v_fmac_f32_e32 v20, v19, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v1, v1, v8, v21
	v_rcp_f32_e32 v8, v17
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v23, v14, v23
	v_mul_f32_e32 v4, v2, v20
	v_div_fixup_f32 v0, v1, 0x40e00000, v0
	v_div_scale_f32 v14, s8, v16, 0x40e00000, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v1, -v18, v4, v2
	v_fma_f32 v19, -v17, v8, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v21, v14, v23 :: v_dual_fmac_f32 v4, v1, v20
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v1.l, v0.h
	v_mov_b16_e32 v1.h, v15.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v10, -v13, v21, v14
	v_fmac_f32_e32 v8, v19, v8
	v_div_scale_f32 v19, s9, v22, 0x40e00000, v22
	v_fma_f32 v2, -v18, v4, v2
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v1
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v21, v10, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v11, v19, v8
	v_div_fmas_f32 v18, v2, v20, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v0, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v0, -v17, v11, v19
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s7, s34, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v27, 0xffff0000, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v10, v18, 0x40e00000, v12
	v_fma_f32 v12, -v13, v21, v14
	v_fmac_f32_e32 v11, v0, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v27, v27, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v12, v12, v23, v21
	v_fma_f32 v14, -v17, v11, v19
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v13, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v15.l, v10.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v12, v12, 0x40e00000, v16
	v_div_fmas_f32 v8, v14, v8, v11
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v14, null, v27, v27, v100
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[38:39], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v11, 1, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v17, v8, 0x40e00000, v22
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v8.l, v12.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v16, -v0, v13, 1.0
	v_rcp_f32_e32 v18, v14
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v8.h, v15.h
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[36:37], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v10, v11, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v13, v16, v13
	v_div_scale_f32 v16, vcc_lo, v101, v27, v101
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v22, s9, v100, v27, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v10, -v14, v18, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v15.l, v17.h
	v_add3_u32 v8, v12, v2, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v11, v16, v13 :: v_dual_fmac_f32 v18, v10, v18
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v102, 0xffff0000, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v12, -v0, v11, v16
	v_dual_fmac_f32 v11, v12, v13 :: v_dual_mul_f32 v12, v22, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v11, v16
	v_fma_f32 v16, -v14, v12, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v12, v16, v18
	v_div_scale_f32 v19, null, v27, v27, v99
	v_div_scale_f32 v21, null, v27, v27, v98
	v_div_scale_f32 v25, null, v27, v27, v97
	v_rcp_f32_e32 v20, v19
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_and_b32_e32 v15, 1, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v26, null, v27, v27, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v16, v25
	v_div_scale_f32 v34, null, v27, v27, v91
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v17, v15, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v15, v21
	v_rcp_f32_e32 v28, v26
	v_fma_f32 v17, -v19, v20, 1.0
	v_div_scale_f32 v35, null, v27, v27, v89
	v_div_scale_f32 v36, null, v27, v27, v88
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v25, v16, 1.0
	v_fmac_f32_e32 v20, v17, v20
	v_div_scale_f32 v17, s10, v99, v27, v99
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v21, v15, 1.0
	v_fmac_f32_e32 v16, v29, v16
	v_div_fmas_f32 v0, v0, v13, v11
	v_fma_f32 v29, -v26, v28, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v15, v24, v15
	v_div_scale_f32 v24, s11, v98, v27, v98
	v_div_fixup_f32 v11, v0, v27, v101
	v_fma_f32 v0, -v14, v12, v22
	v_dual_fmac_f32 v28, v29, v28 :: v_dual_and_b32 v23, 0xffff0000, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v22, v24, v15 :: v_dual_mul_f32 v13, v17, v20
	v_div_fmas_f32 v0, v0, v18, v12
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v18, s9, v97, v27, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v14, -v19, v13, v17
	v_div_fixup_f32 v12, v0, v27, v100
	v_div_scale_f32 v29, null, v27, v27, v95
	v_div_scale_f32 v37, null, v27, v27, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v13, v14, v20
	v_fma_f32 v14, -v21, v22, v24
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v10, 0xffff0000, v2
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v19, v13, v17
	v_fmac_f32_e32 v22, v14, v15
	v_mul_f32_e32 v17, v18, v16
	v_div_scale_f32 v19, s12, v96, v27, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v20, v13
	v_fma_f32 v13, -v21, v22, v24
	v_div_scale_f32 v24, null, v27, v27, v94
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v14, -v25, v17, v18
	v_div_fmas_f32 v15, v13, v15, v22
	v_rcp_f32_e32 v22, v24
	v_rcp_f32_e32 v20, v29
	v_div_fixup_f32 v13, v0, v27, v99
	v_fmac_f32_e32 v17, v14, v16
	v_div_fixup_f32 v14, v15, v27, v98
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v25, v17, v18
	v_div_scale_f32 v25, null, v27, v27, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v15, -v24, v22, 1.0
	v_fma_f32 v31, -v29, v20, 1.0
	v_div_scale_f32 v18, s10, v95, v27, v95
	v_div_fmas_f32 v0, v0, v16, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v22, v15, v22
	v_mul_f32_e32 v21, v19, v28
	v_fmac_f32_e32 v20, v31, v20
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v15, v0, v27, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v30, -v26, v21, v19
	v_mul_f32_e32 v17, v18, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v21, v30, v28
	v_div_scale_f32 v30, null, v27, v27, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v26, v21, v19
	v_rcp_f32_e32 v19, v25
	v_rcp_f32_e32 v32, v30
	v_div_scale_f32 v26, s9, v94, v27, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v16, v16, v28, v21
	v_fma_f32 v21, -v29, v17, v18
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v28, v26, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v16, v16, v27, v96
	v_fma_f32 v31, -v25, v19, 1.0
	v_fmac_f32_e32 v17, v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v30, v32, 1.0
	v_fma_f32 v0, -v24, v28, v26
	v_div_scale_f32 v21, s11, v84, v27, v84
	v_dual_fmac_f32 v19, v31, v19 :: v_dual_fmac_f32 v32, v33, v32
	v_div_scale_f32 v31, null, v27, v27, v92
	v_fma_f32 v18, -v29, v17, v18
	v_fmac_f32_e32 v28, v0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v0, v21, v19
	v_rcp_f32_e32 v29, v31
	v_div_scale_f32 v33, s12, v93, v27, v93
	v_div_fmas_f32 v17, v18, v20, v17
	v_fma_f32 v18, -v24, v28, v26
	v_fma_f32 v20, -v25, v0, v21
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v17, v17, v27, v95
	v_div_fmas_f32 v18, v18, v22, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v26, -v31, v29, 1.0
	v_fmac_f32_e32 v0, v20, v19
	v_rcp_f32_e32 v22, v34
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v28, null, v27, v27, v90
	v_fmac_f32_e32 v29, v26, v29
	v_div_scale_f32 v26, s9, v92, v27, v92
	v_mul_f32_e32 v24, v33, v32
	v_fma_f32 v21, -v25, v0, v21
	v_div_fixup_f32 v18, v18, v27, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v25, v26, v29
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v20, -v30, v24, v33
	v_div_fmas_f32 v0, v21, v19, v0
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v21, -v31, v25, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v24, v20, v32
	v_fma_f32 v20, -v34, v22, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v25, v21, v29
	v_fma_f32 v19, -v30, v24, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v20, v22
	v_rcp_f32_e32 v30, v28
	v_div_scale_f32 v33, s10, v91, v27, v91
	v_div_fmas_f32 v20, v19, v32, v24
	v_rcp_f32_e32 v24, v35
	v_div_fixup_f32 v19, v0, v27, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v32, v33, v22
	v_fma_f32 v0, -v31, v25, v26
	v_div_scale_f32 v31, s11, v90, v27, v90
	v_fma_f32 v21, -v28, v30, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v26, -v34, v32, v33
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v84, v37
	v_div_fmas_f32 v0, v0, v29, v25
	v_fmac_f32_e32 v30, v21, v30
	v_fma_f32 v21, -v35, v24, 1.0
	v_fmac_f32_e32 v32, v26, v22
	v_rcp_f32_e32 v26, v36
	v_div_scale_f32 v29, s9, v89, v27, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v25, v31, v30 :: v_dual_fmac_f32 v24, v21, v24
	v_div_fixup_f32 v21, v0, v27, v92
	v_fma_f32 v0, -v34, v32, v33
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v33, -v28, v25, v31
	v_mul_f32_e32 v34, v29, v24
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v36, v26, 1.0
	v_div_fmas_f32 v0, v0, v22, v32
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v20, v20, v27, v93
	v_fma_f32 v32, -v35, v34, v29
	v_fmac_f32_e32 v25, v33, v30
	v_fmac_f32_e32 v26, v92, v26
	v_div_scale_f32 v33, s10, v88, v27, v88
	v_fma_f32 v92, -v37, v84, 1.0
	v_div_fixup_f32 v22, v0, v27, v91
	v_fmac_f32_e32 v34, v32, v24
	v_fma_f32 v0, -v28, v25, v31
	v_mul_f32_e32 v28, v33, v26
	v_div_scale_f32 v32, null, v102, v102, v86
	v_fmac_f32_e32 v84, v92, v84
	v_div_scale_f32 v31, s12, v87, v27, v87
	v_div_fmas_f32 v0, v0, v30, v25
	v_fma_f32 v25, -v35, v34, v29
	v_fma_f32 v29, -v36, v28, v33
	v_rcp_f32_e32 v30, v32
	v_div_scale_f32 v91, null, v102, v102, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v35, v31, v84 :: v_dual_fmac_f32 v28, v29, v26
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v29, v91
	v_div_fmas_f32 v25, v25, v24, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v34, -v37, v35, v31
	v_div_fixup_f32 v24, v0, v27, v90
	v_fma_f32 v92, -v32, v30, 1.0
	v_fma_f32 v0, -v36, v28, v33
	v_div_scale_f32 v33, s9, v86, v102, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v35, v34, v84 :: v_dual_fmac_f32 v30, v92, v30
	v_fma_f32 v34, -v91, v29, 1.0
	v_div_scale_f32 v36, null, v102, v102, v83
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v25, v25, v27, v89
	v_fmac_f32_e32 v29, v34, v29
	v_div_fmas_f32 v0, v0, v26, v28
	v_fma_f32 v26, -v37, v35, v31
	v_mul_f32_e32 v28, v33, v30
	v_rcp_f32_e32 v31, v36
	v_div_scale_f32 v34, s10, v85, v102, v85
	v_div_scale_f32 v37, null, v102, v102, v82
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v89, v34, v29
	v_div_fmas_f32 v35, v26, v84, v35
	v_fma_f32 v84, -v32, v28, v33
	v_rcp_f32_e32 v92, v37
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v36, v31, 1.0
	v_div_fixup_f32 v26, v0, v27, v88
	v_fma_f32 v0, -v91, v89, v34
	v_fmac_f32_e32 v28, v84, v30
	v_div_scale_f32 v84, null, v102, v102, v81
	v_div_fixup_f32 v27, v35, v27, v87
	v_fmac_f32_e32 v31, v90, v31
	v_div_scale_f32 v35, s11, v83, v102, v83
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v37, v92, 1.0
	v_fma_f32 v32, -v32, v28, v33
	v_fmac_f32_e32 v89, v0, v29
	v_rcp_f32_e32 v33, v84
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v0, v35, v31
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, s12, v82, v102, v82
	v_div_fmas_f32 v28, v32, v30, v28
	v_fma_f32 v30, -v91, v89, v34
	v_div_scale_f32 v90, null, v102, v102, v80
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v32, -v36, v0, v35
	v_mul_f32_e32 v34, v87, v92
	v_fma_f32 v88, -v84, v33, 1.0
	v_div_fmas_f32 v29, v30, v29, v89
	v_rcp_f32_e32 v89, v90
	v_fmac_f32_e32 v0, v32, v31
	v_fma_f32 v30, -v37, v34, v87
	v_fmac_f32_e32 v33, v88, v33
	v_div_scale_f32 v32, s9, v81, v102, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v36, v0, v35
	v_fmac_f32_e32 v34, v30, v92
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v36, v32, v33
	v_fma_f32 v30, -v90, v89, 1.0
	v_div_fixup_f32 v28, v28, v102, v86
	v_div_fixup_f32 v29, v29, v102, v85
	v_div_scale_f32 v85, null, v102, v102, v79
	v_div_fmas_f32 v0, v35, v31, v0
	v_fma_f32 v35, -v84, v36, v32
	v_fmac_f32_e32 v89, v30, v89
	v_div_scale_f32 v86, s10, v80, v102, v80
	v_fma_f32 v31, -v37, v34, v87
	v_rcp_f32_e32 v37, v85
	v_fmac_f32_e32 v36, v35, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v35, v86, v89
	v_div_fixup_f32 v30, v0, v102, v83
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v87, null, v102, v102, v78
	v_fma_f32 v0, -v84, v36, v32
	v_fma_f32 v32, -v90, v35, v86
	v_div_scale_f32 v84, null, v102, v102, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v85, v37, 1.0
	v_div_scale_f32 v91, null, v102, v102, v76
	v_fmac_f32_e32 v35, v32, v89
	v_div_fmas_f32 v31, v31, v92, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v37, v88, v37
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v34, v87
	v_div_fmas_f32 v0, v0, v33, v36
	v_div_fixup_f32 v31, v31, v102, v82
	v_div_scale_f32 v82, s11, v79, v102, v79
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v32, v0, v102, v81
	v_fma_f32 v0, -v90, v35, v86
	v_mul_f32_e32 v36, v82, v37
	v_rcp_f32_e32 v86, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v87, v34, 1.0
	v_div_scale_f32 v88, s9, v78, v102, v78
	v_fma_f32 v33, -v85, v36, v82
	v_div_fmas_f32 v0, v0, v89, v35
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, s10, v77, v102, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v33, v37
	v_div_fixup_f32 v33, v0, v102, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v85, v36, v82
	v_div_scale_f32 v85, null, v102, v102, v75
	v_div_scale_f32 v82, s12, v76, v102, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v37, v36
	v_rcp_f32_e32 v37, v85
	v_fmac_f32_e32 v34, v83, v34
	v_rcp_f32_e32 v83, v84
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v84, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v90, v83
	v_fma_f32 v90, -v91, v86, 1.0
	v_mul_f32_e32 v80, v89, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v90, v86
	v_fma_f32 v90, -v85, v37, 1.0
	v_fma_f32 v36, -v84, v80, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v90, v37
	v_mul_f32_e32 v81, v88, v34
	v_fmac_f32_e32 v80, v36, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v87, v81, v88
	v_fmac_f32_e32 v81, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v87, v81, v88
	v_mul_f32_e32 v87, v82, v86
	v_div_scale_f32 v88, null, v102, v102, v74
	v_div_fmas_f32 v35, v35, v34, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v81, -v91, v87, v82
	v_div_fixup_f32 v34, v0, v102, v79
	v_fma_f32 v0, -v84, v80, v89
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v35, v35, v102, v78
	v_fmac_f32_e32 v87, v81, v86
	v_div_scale_f32 v78, s9, v75, v102, v75
	v_rcp_f32_e32 v36, v88
	v_div_fmas_f32 v0, v0, v83, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v91, v87, v82
	v_mul_f32_e32 v82, v78, v37
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v83, s10, v74, v102, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v80, v80, v86, v87
	v_fma_f32 v86, -v85, v82, v78
	v_div_scale_f32 v81, null, v102, v102, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v88, v36, 1.0
	v_div_scale_f32 v84, null, v102, v102, v72
	v_fmac_f32_e32 v82, v86, v37
	v_div_scale_f32 v86, null, v102, v102, v71
	v_div_fixup_f32 v77, v0, v102, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v90, v84
	v_fma_f32 v78, -v85, v82, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v85, v86
	v_fmac_f32_e32 v36, v79, v36
	v_rcp_f32_e32 v79, v81
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v76, v80, v102, v76
	v_div_fmas_f32 v37, v78, v37, v82
	v_mul_f32_e32 v87, v83, v36
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v80, s11, v73, v102, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v75, v37, v102, v75
	v_fma_f32 v0, -v88, v87, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v81, v79, 1.0
	v_div_scale_f32 v91, null, v102, v102, v70
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v0, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v89, v79
	v_fma_f32 v89, -v84, v90, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v88, v87, v83
	v_fma_f32 v88, -v86, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s12, v72, v102, v72
	v_fmac_f32_e32 v85, v88, v85
	v_div_fmas_f32 v36, v78, v36, v87
	v_div_scale_f32 v87, s9, v71, v102, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v83, v89, v90
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v74, v36, v102, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v37, v87, v85 :: v_dual_mul_f32 v0, v80, v79
	v_rcp_f32_e32 v78, v91
	v_fma_f32 v82, -v81, v0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v0, v82, v79
	v_fma_f32 v82, -v84, v83, v89
	v_fma_f32 v36, -v81, v0, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v83, v82, v90
	v_fma_f32 v80, -v91, v78, 1.0
	v_div_scale_f32 v81, null, v23, v23, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v36, v79, v0
	v_fma_f32 v36, -v84, v83, v89
	v_fma_f32 v79, -v86, v37, v87
	v_div_scale_f32 v84, null, v23, v23, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v73, v0, v102, v73
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v37, v79, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v79, v84
	v_div_fmas_f32 v36, v36, v90, v83
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v82, s10, v70, v102, v70
	v_fma_f32 v0, -v86, v37, v87
	v_div_fixup_f32 v72, v36, v102, v72
	v_div_scale_f32 v86, s11, v69, v23, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v84, v79, 1.0
	v_div_fmas_f32 v0, v0, v85, v37
	v_div_scale_f32 v85, s9, v68, v23, v68
	s_mov_b32 vcc_lo, s10
	v_dual_fmac_f32 v79, v87, v79 :: v_dual_fmac_f32 v78, v80, v78
	v_rcp_f32_e32 v80, v81
	v_div_scale_f32 v87, null, v23, v23, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v85, v79
	v_div_fixup_f32 v71, v0, v102, v71
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v90, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v81, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v83, v82, v78 :: v_dual_fmac_f32 v80, v88, v80
	v_fma_f32 v36, -v91, v83, v82
	v_div_scale_f32 v88, null, v23, v23, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v83, v36, v78
	v_rcp_f32_e32 v37, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v91, v83, v82
	v_div_fmas_f32 v0, v0, v78, v83
	v_fma_f32 v78, -v84, v89, v85
	v_fma_f32 v83, -v87, v90, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v88, v37, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v70, v0, v102, v70
	v_dual_fmac_f32 v89, v78, v79 :: v_dual_fmac_f32 v90, v83, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v36, v86, v80 :: v_dual_fmac_f32 v37, v91, v37
	v_div_scale_f32 v83, null, v23, v23, v65
	v_div_scale_f32 v91, null, v23, v23, v60
	v_fma_f32 v82, -v81, v36, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v36, v82, v80
	v_div_scale_f32 v82, s10, v67, v23, v67
	v_fma_f32 v0, -v81, v36, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v82, v37
	v_div_scale_f32 v81, s12, v66, v23, v66
	v_div_scale_f32 v86, null, v23, v23, v64
	v_div_fmas_f32 v0, v0, v80, v36
	v_fma_f32 v36, -v84, v89, v85
	v_rcp_f32_e32 v84, v83
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v80, -v88, v78, v82
	v_mul_f32_e32 v85, v81, v90
	v_div_fmas_f32 v36, v36, v79, v89
	v_rcp_f32_e32 v79, v86
	v_div_fixup_f32 v69, v0, v23, v69
	v_fmac_f32_e32 v78, v80, v37
	v_fma_f32 v80, -v87, v85, v81
	v_div_fixup_f32 v68, v36, v23, v68
	v_fma_f32 v89, -v83, v84, 1.0
	v_div_scale_f32 v36, s9, v65, v23, v65
	v_fma_f32 v0, -v88, v78, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v85, v80, v90 :: v_dual_fmac_f32 v84, v89, v84
	v_fma_f32 v80, -v86, v79, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v82, null, v23, v23, v63
	v_div_fmas_f32 v0, v0, v37, v78
	v_fma_f32 v37, -v87, v85, v81
	v_mul_f32_e32 v78, v36, v84
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v81, s10, v64, v23, v64
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v67, v0, v23, v67
	v_div_fmas_f32 v37, v37, v90, v85
	v_fma_f32 v85, -v83, v78, v36
	v_mul_f32_e32 v88, v81, v79
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v80, v82
	v_div_scale_f32 v87, null, v23, v23, v62
	v_fmac_f32_e32 v78, v85, v84
	v_fma_f32 v0, -v86, v88, v81
	v_div_scale_f32 v85, null, v23, v23, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v90, v87
	v_fma_f32 v36, -v83, v78, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v88, v0, v79
	v_fma_f32 v89, -v82, v80, 1.0
	v_div_fixup_f32 v66, v37, v23, v66
	v_div_scale_f32 v37, s11, v63, v23, v63
	v_div_fmas_f32 v36, v36, v84, v78
	v_fma_f32 v78, -v86, v88, v81
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v83, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v65, v36, v23, v65
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v64, v78, v23, v64
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v85, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v91, v79, 1.0
	v_fmac_f32_e32 v80, v89, v80
	v_fma_f32 v89, -v87, v90, 1.0
	v_fmac_f32_e32 v83, v86, v83
	v_div_scale_f32 v86, s9, v61, v23, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v79, v78, v79 :: v_dual_mul_f32 v0, v37, v80
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s12, v62, v23, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v82, v0, v37
	v_mul_f32_e32 v84, v89, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v0, v81, v80
	v_fma_f32 v81, -v87, v84, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v82, v0, v37
	v_dual_mul_f32 v37, v86, v83 :: v_dual_fmac_f32 v84, v81, v90
	v_div_scale_f32 v81, null, v23, v23, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v36, v80, v0
	v_fma_f32 v80, -v85, v37, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v87, v84, v89
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v87, null, v23, v23, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v80, v83
	v_div_scale_f32 v82, s10, v60, v23, v60
	v_rcp_f32_e32 v80, v87
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v63, v0, v23, v63
	v_div_fmas_f32 v36, v36, v90, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v78, 1.0
	v_mul_f32_e32 v84, v82, v79
	v_fma_f32 v0, -v85, v37, v86
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v62, v36, v23, v62
	v_fmac_f32_e32 v78, v88, v78
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_scale_f32 v88, null, v23, v23, v57
	v_fma_f32 v36, -v91, v84, v82
	v_div_scale_f32 v85, s11, v59, v23, v59
	v_div_fmas_f32 v0, v0, v83, v37
	v_fmac_f32_e32 v80, v86, v80
	v_rcp_f32_e32 v37, v88
	v_div_scale_f32 v86, null, v23, v23, v56
	v_fmac_f32_e32 v84, v36, v79
	v_mul_f32_e32 v36, v85, v78
	v_div_scale_f32 v83, s9, v58, v23, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v90, v86
	v_div_fixup_f32 v0, v0, v23, v61
	v_fma_f32 v61, -v91, v84, v82
	v_fma_f32 v82, -v81, v36, v85
	v_mul_f32_e32 v89, v83, v80
	v_fma_f32 v91, -v88, v37, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v61, v61, v79, v84
	v_fmac_f32_e32 v36, v82, v78
	v_fma_f32 v79, -v87, v89, v83
	v_fmac_f32_e32 v37, v91, v37
	v_div_scale_f32 v82, s10, v57, v23, v57
	v_fma_f32 v84, -v86, v90, 1.0
	v_div_fixup_f32 v60, v61, v23, v60
	v_fma_f32 v61, -v81, v36, v85
	v_fmac_f32_e32 v89, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v79, v82, v37 :: v_dual_fmac_f32 v90, v84, v90
	v_div_scale_f32 v84, null, v23, v23, v55
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v81, s12, v56, v23, v56
	v_div_fmas_f32 v36, v61, v78, v36
	v_fma_f32 v61, -v87, v89, v83
	v_fma_f32 v78, -v88, v79, v82
	v_rcp_f32_e32 v83, v84
	v_div_scale_f32 v87, null, v23, v23, v54
	v_mul_f32_e32 v85, v81, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v78, v37
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v78, v87
	v_div_fmas_f32 v61, v61, v80, v89
	v_fma_f32 v80, -v86, v85, v81
	v_div_fixup_f32 v36, v36, v23, v59
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v83, 1.0
	v_fma_f32 v59, -v88, v79, v82
	v_div_fixup_f32 v58, v61, v23, v58
	v_fmac_f32_e32 v85, v80, v90
	v_div_scale_f32 v61, s9, v55, v23, v55
	v_fmac_f32_e32 v83, v89, v83
	v_fma_f32 v80, -v87, v78, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, null, v10, v10, v52
	v_div_fmas_f32 v37, v59, v37, v79
	v_fma_f32 v59, -v86, v85, v81
	v_dual_mul_f32 v79, v61, v83 :: v_dual_fmac_f32 v78, v80, v78
	v_div_scale_f32 v80, null, v10, v10, v53
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v81, s10, v54, v23, v54
	v_div_fmas_f32 v59, v59, v90, v85
	v_rcp_f32_e32 v82, v80
	v_fma_f32 v85, -v84, v79, v61
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v81, v78
	v_div_fixup_f32 v37, v37, v23, v57
	v_div_fixup_f32 v56, v59, v23, v56
	v_rcp_f32_e32 v59, v88
	v_fmac_f32_e32 v79, v85, v83
	v_fma_f32 v57, -v87, v86, v81
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v10, v10, v50
	v_fma_f32 v85, -v80, v82, 1.0
	v_fma_f32 v61, -v84, v79, v61
	v_div_scale_f32 v84, null, v10, v10, v51
	v_fmac_f32_e32 v86, v57, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v85, v82
	v_div_scale_f32 v57, s11, v53, v10, v53
	v_rcp_f32_e32 v85, v84
	v_fma_f32 v89, -v88, v59, 1.0
	v_div_fmas_f32 v61, v61, v83, v79
	v_fma_f32 v79, -v87, v86, v81
	v_mul_f32_e32 v81, v57, v82
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v59, v89, v59
	v_div_scale_f32 v83, s9, v52, v10, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v89, -v80, v81, v57
	v_fma_f32 v87, -v84, v85, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v78, v79, v78, v86
	v_mul_f32_e32 v91, v83, v59
	v_div_fixup_f32 v55, v61, v23, v55
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s12, v51, v10, v51
	v_fmac_f32_e32 v81, v89, v82
	v_div_fixup_f32 v23, v78, v23, v54
	v_div_scale_f32 v78, null, v10, v10, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v87, v85
	v_fma_f32 v54, -v80, v81, v57
	v_fma_f32 v79, -v88, v91, v83
	v_fma_f32 v61, -v90, v92, 1.0
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v57, -v84, v86, v87
	v_div_fmas_f32 v54, v54, v82, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v91, v79, v59 :: v_dual_fmac_f32 v92, v61, v92
	v_div_scale_f32 v61, s10, v50, v10, v50
	v_fmac_f32_e32 v86, v57, v85
	v_rcp_f32_e32 v57, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v88, v91, v83
	v_mul_f32_e32 v80, v61, v92
	v_div_scale_f32 v81, null, v10, v10, v48
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v53, v54, v10, v53
	v_div_fmas_f32 v59, v79, v59, v91
	v_fma_f32 v79, -v84, v86, v87
	v_rcp_f32_e32 v83, v81
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v82, -v78, v57, 1.0
	v_fma_f32 v84, -v90, v80, v61
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v52, v59, v10, v52
	v_div_fmas_f32 v79, v79, v85, v86
	v_fmac_f32_e32 v57, v82, v57
	v_div_scale_f32 v82, s9, v49, v10, v49
	v_fmac_f32_e32 v80, v84, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v81, v83, 1.0
	v_div_fixup_f32 v51, v79, v10, v51
	v_mul_f32_e32 v54, v82, v57
	v_div_scale_f32 v79, null, v10, v10, v47
	v_fma_f32 v61, -v90, v80, v61
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v78, v54, v82
	v_fmac_f32_e32 v83, v59, v83
	v_div_scale_f32 v59, s11, v48, v10, v48
	v_div_fmas_f32 v61, v61, v92, v80
	v_fmac_f32_e32 v54, v84, v57
	v_rcp_f32_e32 v85, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v80, v59, v83
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v50, v61, v10, v50
	v_fma_f32 v61, -v78, v54, v82
	v_div_scale_f32 v84, null, v10, v10, v46
	v_fma_f32 v78, -v81, v80, v59
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v54, v61, v57, v54
	v_div_scale_f32 v57, null, v10, v10, v45
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v57
	v_div_scale_f32 v61, s9, v47, v10, v47
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v10, v10, v44
	v_div_fixup_f32 v49, v54, v10, v49
	v_fma_f32 v59, -v81, v80, v59
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v57, v78, 1.0
	v_mul_f32_e32 v81, v61, v85
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v54, v86
	v_div_scale_f32 v54, s10, v46, v10, v46
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v10, v10, v43
	v_div_fmas_f32 v59, v59, v83, v80
	v_fma_f32 v80, -v79, v81, v61
	v_div_scale_f32 v89, s11, v45, v10, v45
	v_fma_f32 v90, -v82, v88, 1.0
	v_mul_f32_e32 v83, v54, v86
	v_rcp_f32_e32 v91, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v81, v80, v85 :: v_dual_mul_f32 v92, v89, v78
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s12, v44, v10, v44
	v_fma_f32 v80, -v84, v83, v54
	v_div_fixup_f32 v48, v59, v10, v48
	v_fma_f32 v59, -v79, v81, v61
	v_fma_f32 v61, -v57, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v92, v61, v78
	v_fma_f32 v61, -v82, v79, v90
	v_fma_f32 v54, -v84, v83, v54
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s9, v43, v10, v43
	v_fma_f32 v57, -v57, v92, v89
	v_fmac_f32_e32 v79, v61, v88
	v_div_fmas_f32 v59, v59, v85, v81
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v61, v80, v91
	v_div_fmas_f32 v54, v54, v86, v83
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v81, null, v10, v10, v42
	v_div_fmas_f32 v57, v57, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v82, -v87, v61, v80
	v_rcp_f32_e32 v83, v81
	v_div_fixup_f32 v47, v59, v10, v47
	v_div_fmas_f32 v78, v78, v88, v79
	v_div_fixup_f32 v46, v54, v10, v46
	v_fmac_f32_e32 v61, v82, v91
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v45, v57, v10, v45
	v_div_fixup_f32 v44, v78, v10, v44
	v_div_scale_f32 v78, null, v10, v10, v40
	v_fma_f32 v54, -v87, v61, v80
	v_fma_f32 v59, -v81, v83, 1.0
	v_div_scale_f32 v57, null, v10, v10, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v82, v78
	v_div_fmas_f32 v54, v54, v91, v61
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v83, v59, v83
	v_div_scale_f32 v79, vcc_lo, v42, v10, v42
	v_rcp_f32_e32 v61, v57
	v_div_scale_f32 v59, null, v10, v10, v41
	v_div_fixup_f32 v43, v54, v10, v43
	v_div_scale_f32 v85, null, v10, v10, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v78, v82, 1.0
	v_rcp_f32_e32 v80, v59
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v54, -v57, v61, 1.0
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s11, v40, v10, v40
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v61, v54, v61
	v_div_scale_f32 v54, s9, v38, v10, v38
	v_dual_mul_f32 v93, v89, v82 :: v_dual_mul_f32 v84, v79, v83
	v_fma_f32 v86, -v59, v80, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v85, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v81, v84, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s12, v39, v10, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v84, v88, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v81, v84, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s10, v41, v10, v41
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v54, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v86, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v57, v90, v54
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v59, v92, v86
	v_mul_f32_e32 v94, v91, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v88, v61
	v_fma_f32 v88, -v78, v93, v89
	v_fmac_f32_e32 v92, v81, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v54, -v57, v90, v54
	v_fmac_f32_e32 v93, v88, v82
	v_fma_f32 v57, -v85, v94, v91
	v_fma_f32 v59, -v59, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v54, v54, v61, v90
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v94, v57, v87
	v_fma_f32 v57, -v78, v93, v89
	v_div_fmas_f32 v59, v59, v80, v92
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v42, v79, v10, v42
	v_div_fixup_f32 v38, v54, v10, v38
	v_div_fmas_f32 v57, v57, v82, v93
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v41, v59, v10, v41
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v76
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v40, v57, v10, v40
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v75
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v75, v23
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v25, 15, v27
	v_and_b32_e32 v27, 15, v29
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v31, 15, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v85, v94, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v61, v61, v87, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v20, v20, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v61, v10, v39
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v77
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v0, v0, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v10, v10, s9, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v88, v38
	v_cvt_i32_f32_e32 v91, v10
	v_and_b32_e32 v10, 15, v11
	v_and_b32_e32 v11, 15, v12
	v_and_b32_e32 v12, 15, v13
	v_and_b32_e32 v13, 15, v14
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v17
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v21
	v_and_b32_e32 v21, 15, v22
	v_and_b32_e32 v22, 15, v24
	v_and_b32_e32 v24, 15, v26
	v_and_b32_e32 v26, 15, v28
	v_and_b32_e32 v28, 15, v30
	v_and_b32_e32 v30, 15, v32
	v_and_b32_e32 v32, 15, v34
	v_and_b32_e32 v38, 15, v39
	v_and_b32_e32 v39, 15, v54
	v_and_b32_e32 v54, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v103
	v_and_b32_e32 v34, 16, v103
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v33, 15, v35
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v35, 4, v104
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v74
	v_rndne_f32_e32 v61, v73
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v46, v46
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_cvt_i32_f32_e32 v73, v56
	v_and_b32_e32 v56, 15, v36
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v36, 6, v34
	v_xor_b32_e32 v9, v35, v9
	v_lshlrev_b32_e32 v35, 6, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v76, v53
	v_cvt_i32_f32_e32 v77, v52
	v_cvt_i32_f32_e32 v78, v51
	v_cvt_i32_f32_e32 v79, v50
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v36
	v_and_or_b32 v6, 0x1b00, v35, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v84, v45
	v_cvt_i32_f32_e32 v85, v44
	v_cvt_i32_f32_e32 v86, v43
	v_cvt_i32_f32_e32 v87, v42
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v80, v49
	v_cvt_i32_f32_e32 v81, v48
	v_cvt_i32_f32_e32 v82, v47
	v_cvt_i32_f32_e32 v83, v46
	v_and_b32_e32 v46, 15, v69
	v_and_b32_e32 v47, 15, v68
	v_and_b32_e32 v48, 15, v67
	v_and_b32_e32 v49, 15, v66
	v_and_b32_e32 v50, 15, v65
	v_and_b32_e32 v51, 15, v64
	v_and_b32_e32 v52, 15, v63
	v_and_b32_e32 v53, 15, v62
	v_and_b32_e32 v62, 15, v76
	v_and_b32_e32 v63, 15, v77
	v_and_b32_e32 v64, 15, v78
	v_and_b32_e32 v65, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v9, v7
	v_xad_u32 v6, v6, v105, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v74, v55
	v_cvt_i32_f32_e32 v89, v41
	v_cvt_i32_f32_e32 v90, v40
	v_and_b32_e32 v40, 15, v57
	v_and_b32_e32 v41, 15, v59
	v_and_b32_e32 v42, 15, v61
	v_and_b32_e32 v43, 15, v72
	v_and_b32_e32 v44, 15, v71
	v_and_b32_e32 v45, 15, v70
	v_and_b32_e32 v55, 15, v60
	v_and_b32_e32 v57, 15, v58
	v_and_b32_e32 v59, 15, v73
	v_and_b32_e32 v70, 15, v84
	v_and_b32_e32 v71, 15, v85
	v_and_b32_e32 v72, 15, v86
	v_and_b32_e32 v73, 15, v87
	v_and_b32_e32 v58, 15, v37
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[10:13]
	ds_store_b128 v0, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v6
	ds_load_b128 v[18:21], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[26:29]
	ds_store_b128 v0, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v6
	ds_load_b128 v[37:40], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[46:49]
	ds_store_b128 v0, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v6
	ds_load_b128 v[54:57], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[62:65]
	ds_store_b128 v0, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v6
	ds_load_b128 v[70:73], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[14:17]
	ds_store_b128 v0, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v6
	ds_load_b128 v[22:25], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[30:33]
	ds_store_b128 v0, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v6
	ds_load_b128 v[41:44], v6 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v74
	v_and_b32_e32 v61, 15, v75
	v_and_b32_e32 v66, 15, v80
	v_and_b32_e32 v67, 15, v81
	v_and_b32_e32 v68, 15, v82
	v_and_b32_e32 v69, 15, v83
	v_and_b32_e32 v74, 15, v88
	v_and_b32_e32 v75, 15, v89
	v_and_b32_e32 v76, 15, v90
	v_and_b32_e32 v77, 15, v91
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[50:53]
	ds_store_b128 v0, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v6
	ds_load_b128 v[58:61], v6 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v25, 4, v16
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v43, 4, v32
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[66:69]
	ds_store_b128 v0, v[74:77] offset:512
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v0, v18, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, s34, v5
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v6
	ds_load_b128 v[74:77], v6 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v19, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v5, s41, 7, v43
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v7, v20, 4, v11
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 16, v9
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v17, v21, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 32, v9
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v22, 4, v13
	v_lshl_or_b32 v14, v23, 4, v14
	v_lshl_or_b32 v15, v24, 4, v15
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 48, v9
	v_mad_u64_u32 v[9:10], null, v9, s9, v[5:6]
	v_mad_u64_u32 v[10:11], null, v11, s9, v[5:6]
	v_mad_u64_u32 v[11:12], null, v12, s9, v[5:6]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v37, 4, v26
	v_lshl_or_b32 v20, v38, 4, v27
	v_lshl_or_b32 v21, v39, 4, v28
	v_lshl_or_b32 v22, v40, 4, v29
	v_lshl_or_b32 v23, v41, 4, v30
	v_lshl_or_b32 v24, v42, 4, v31
	v_lshl_or_b32 v26, v44, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v13, s9, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v17.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v4.l, 8, v6.l
	v_and_b16 v5.l, 0xff, v0.l
	v_lshlrev_b16 v5.h, 8, v16.l
	v_and_b16 v6.l, 0xff, v15.l
	v_lshlrev_b16 v6.h, 8, v14.l
	v_and_b16 v7.l, 0xff, v18.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v54, 4, v46
	v_lshl_or_b32 v28, v55, 4, v47
	v_lshl_or_b32 v29, v56, 4, v48
	v_lshl_or_b32 v30, v57, 4, v49
	v_lshl_or_b32 v31, v58, 4, v50
	v_lshl_or_b32 v32, v59, 4, v51
	v_lshl_or_b32 v33, v60, 4, v52
	v_lshl_or_b32 v35, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v13.h, v2.l, v1.l
	v_or_b16 v13.l, v5.l, v4.l
	v_or_b16 v14.h, v6.l, v5.h
	v_or_b16 v14.l, v7.l, v6.h
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v1.l, 8, v22.l
	v_and_b16 v2.l, 0xff, v21.l
	v_lshlrev_b16 v4.l, 8, v20.l
	v_and_b16 v5.l, 0xff, v19.l
	v_lshlrev_b16 v5.h, 8, v26.l
	v_and_b16 v6.l, 0xff, v25.l
	v_lshlrev_b16 v6.h, 8, v24.l
	v_and_b16 v7.l, 0xff, v23.l
	s_mov_b32 s12, s24
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v40, v74, 4, v66
	v_lshl_or_b32 v41, v75, 4, v67
	v_lshl_or_b32 v42, v76, 4, v68
	v_lshl_or_b32 v44, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[13:14], v0, s[12:15], 0 offen
	v_or_b16 v13.h, v2.l, v1.l
	v_or_b16 v13.l, v5.l, v4.l
	v_or_b16 v14.h, v6.l, v5.h
	v_or_b16 v14.l, v7.l, v6.h
	v_cndmask_b32_e32 v0, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v5.l, 0xff, v27.l
	v_lshlrev_b16 v5.h, 8, v35.l
	v_and_b16 v6.l, 0xff, v33.l
	v_lshlrev_b16 v6.h, 8, v32.l
	v_and_b16 v7.l, 0xff, v31.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v70, 4, v62
	v_lshl_or_b32 v37, v71, 4, v63
	v_lshl_or_b32 v38, v72, 4, v64
	v_lshl_or_b32 v39, v73, 4, v65
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[13:14], v0, s[12:15], 0 offen
	v_or_b16 v9.h, v2.l, v1.l
	v_or_b16 v9.l, v5.l, v4.l
	v_or_b16 v10.h, v6.l, v5.h
	v_or_b16 v10.l, v7.l, v6.h
	v_lshlrev_b16 v5.h, 8, v44.l
	v_and_b16 v6.l, 0xff, v42.l
	v_lshlrev_b16 v6.h, 8, v41.l
	v_and_b16 v7.l, 0xff, v40.l
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v38.l
	v_lshlrev_b16 v4.l, 8, v37.l
	v_and_b16 v5.l, 0xff, v36.l
	v_or_b16 v14.h, v6.l, v5.h
	v_or_b16 v14.l, v7.l, v6.h
	buffer_store_b64 v[9:10], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 4, v103
	v_lshrrev_b32_e32 v6, 2, v34
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v13.h, v2.l, v1.l
	v_or_b16 v13.l, v5.l, v4.l
	v_cndmask_b32_e32 v5, 0x80000000, v12, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 2, v0
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v8.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[13:14], v5, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v43
	v_mov_b16_e32 v1.l, v4.h
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
	ds_store_b64 v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v103
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
.Ltmp43:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 88
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 88
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17224
; TotalNumSgprs: 48
; NumVgprs: 256
; ScratchSize: 88
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 88
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 21
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
