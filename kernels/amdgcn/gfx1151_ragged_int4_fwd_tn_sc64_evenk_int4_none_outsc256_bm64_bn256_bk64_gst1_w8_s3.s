	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[28:29], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	v_dual_mov_b32 v110, v0 :: v_dual_mov_b32 v35, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v110
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s74, 0xff
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
	s_sub_i32 s5, s29, s4
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
	s_sub_i32 s75, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s75, s5
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
	s_load_b64 s[66:67], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[64:65], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[72:73], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s67, 0, s2
	v_add_nc_u32_e32 v1, s66, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[72:73], v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s28, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow560
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v38, 0 :: v_dual_and_b32 v111, 15, v110
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s3, s66, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s3
	s_clause 0x1
	s_load_b32 s16, s[0:1], 0x58
	s_load_b32 s29, s[0:1], 0x50
	v_add_co_u32 v4, vcc_lo, v2, 16
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[2:3]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s6, s4
	s_addc_u32 s5, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[4:5]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s17, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[2:3]
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v2, s66, v111
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v80, 0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[4:5]
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v4, 32, v2
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v2, s28
	v_add_nc_u32_e32 v3, 16, v2
	v_add_nc_u32_e32 v5, 48, v2
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v2, s75, 8, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[64:65], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[6:7]
	v_or_b32_e32 v7, 0x3f0, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[8:9]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v110, off offset:60
	v_mul_lo_u32 v0, v3, s28
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[72:73], v[8:9]
	v_or_b32_e32 v8, 0x7f0, v110
	v_or_b32_e32 v9, 0xb00, v110
	v_or_b32_e32 v10, 0xf00, v110
	v_or_b32_e32 v11, 0x1300, v110
	v_lshrrev_b32_e32 v3, 1, v110
	v_or_b32_e32 v12, 0x1700, v110
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:4
	scratch_store_b32 off, v111, off offset:64
	v_mul_lo_u32 v0, v4, s28
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v102, 0, v111
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v3, 0x70, v3
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v13, 0xf0, v110
	v_or_b32_e32 v14, 0x1b00, v110
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v5, s28
	v_dual_mov_b32 v51, 0 :: v_dual_lshlrev_b32 v16, 5, v110
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s16, s74
	v_mov_b32_e32 v57, 0
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v103, v102, v3
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, v2 :: v_dual_mov_b32 v75, 0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[3:4], null, s4, s17, v[2:3]
	v_or_b32_e32 v15, 0x1f00, v110
	scratch_store_b64 off, v[0:1], off offset:16 ; 8-byte Folded Spill
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v0, 0, v7
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v17, 2, v13
	v_dual_mov_b32 v49, 0 :: v_dual_lshlrev_b32 v18, 1, v110
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v0, 0, v8
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v4, 32, v16
	v_mov_b32_e32 v89, 0
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v9
	v_or_b32_e32 v5, 0x300, v110
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v16, 28, v18
	v_mov_b32_e32 v43, 0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v10
	v_add3_u32 v4, 0, v17, v4
	v_mov_b32_e32 v93, 0
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v105, 0, v5
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v0, 0, v11
	v_or_b32_e32 v6, 0x700, v110
	v_dual_mov_b32 v56, 0 :: v_dual_lshlrev_b32 v13, 1, v13
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v12
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v106, 0, v6
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v116, 0, v13
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v14
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v97, 6, v110
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v104, 0, v110
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v79, 0
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v15
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v71, 0
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v0, v4, v16
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[4:5], null, s74, 3, v[3:4]
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[5:6], null, s74, 5, v[3:4]
	v_mad_u64_u32 v[6:7], null, s74, 6, v[3:4]
	v_mad_u64_u32 v[7:8], null, s74, 7, v[3:4]
	v_mad_u64_u32 v[8:9], null, s74, 9, v[3:4]
	v_mad_u64_u32 v[9:10], null, s74, 10, v[3:4]
	v_mad_u64_u32 v[10:11], null, s74, 11, v[3:4]
	v_mad_u64_u32 v[11:12], null, s74, 12, v[3:4]
	v_mad_u64_u32 v[12:13], null, s74, 13, v[3:4]
	v_mad_u64_u32 v[13:14], null, s74, 14, v[3:4]
	v_mad_u64_u32 v[14:15], null, s74, 15, v[3:4]
	v_mad_u64_u32 v[15:16], null, s74, 17, v[3:4]
	v_mad_u64_u32 v[16:17], null, s74, 18, v[3:4]
	v_mad_u64_u32 v[17:18], null, s74, 19, v[3:4]
	v_mad_u64_u32 v[18:19], null, s74, 20, v[3:4]
	v_mad_u64_u32 v[19:20], null, s74, 21, v[3:4]
	v_mad_u64_u32 v[20:21], null, s74, 22, v[3:4]
	v_mad_u64_u32 v[21:22], null, s74, 23, v[3:4]
	v_mad_u64_u32 v[22:23], null, s74, 24, v[3:4]
	v_mad_u64_u32 v[23:24], null, s74, 25, v[3:4]
	v_mad_u64_u32 v[24:25], null, s74, 26, v[3:4]
	v_mad_u64_u32 v[25:26], null, s74, 27, v[3:4]
	v_mad_u64_u32 v[26:27], null, s74, 28, v[3:4]
	v_mad_u64_u32 v[27:28], null, s74, 29, v[3:4]
	v_mad_u64_u32 v[28:29], null, s74, 30, v[3:4]
	v_mad_u64_u32 v[29:30], null, s74, 31, v[3:4]
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v38, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	s_and_b32 s3, s3, s7
	s_mov_b32 s16, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s0, s0, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s30, s28, s17
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	s_mov_b32 s31, s16
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s33, s31, 5
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v124, s74, 1, v3
	v_or_b32_e32 v30, s33, v97
	v_lshl_add_u32 v125, s74, 2, v3
	v_lshl_add_u32 v126, s74, 3, v3
	v_lshl_add_u32 v127, s74, 4, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[30:31], null, v30, s29, v[1:2]
	v_cndmask_b32_e64 v117, 0x80000000, v30, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v30, 4, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v30, s33, v30
	v_mad_u64_u32 v[30:31], null, v30, s29, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v118, 0x80000000, v30, s2
	v_or_b32_e32 v30, 8, v97
	v_or_b32_e32 v30, s33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[30:31], null, v30, s29, v[1:2]
	v_cndmask_b32_e64 v119, 0x80000000, v30, s2
	v_or_b32_e32 v30, 12, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v30, s33, v30
	v_mad_u64_u32 v[30:31], null, v30, s29, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v120, 0x80000000, v30, s2
	v_or_b32_e32 v30, 16, v97
	v_or_b32_e32 v30, s33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[30:31], null, v30, s29, v[1:2]
	v_cndmask_b32_e64 v121, 0x80000000, v30, s2
	v_or_b32_e32 v30, 20, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v30, s33, v30
	v_mad_u64_u32 v[30:31], null, v30, s29, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v122, 0x80000000, v30, s2
	v_or_b32_e32 v30, 24, v97
	v_or_b32_e32 v30, s33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[30:31], null, v30, s29, v[1:2]
	v_cndmask_b32_e64 v123, 0x80000000, v30, s2
	v_or_b32_e32 v30, 28, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_or_b32_e32 v30, s33, v30
	s_mul_i32 s33, s33, s74
	v_add_nc_u32_e32 v128, s33, v22
	v_add_nc_u32_e32 v124, s33, v124
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[30:31], null, v30, s29, v[1:2]
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v31, s74, v3
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v237, v128, s[8:11], 0 offen
	v_add_nc_u32_e32 v128, s33, v23
	v_add_nc_u32_e32 v125, s33, v125
	v_add_nc_u32_e32 v126, s33, v126
	v_add_nc_u32_e32 v31, s33, v31
	v_add_nc_u32_e32 v127, s33, v127
	buffer_load_u8 v238, v128, s[8:11], 0 offen
	v_add_nc_u32_e32 v128, s33, v24
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	buffer_load_u8 v239, v128, s[8:11], 0 offen
	v_add_nc_u32_e32 v128, s33, v25
	buffer_load_u8 v240, v128, s[8:11], 0 offen
	v_add_nc_u32_e32 v128, s33, v26
	buffer_load_u8 v241, v128, s[8:11], 0 offen
	v_add_nc_u32_e32 v128, s33, v27
	buffer_load_u8 v242, v128, s[8:11], 0 offen
	v_add_nc_u32_e32 v128, s33, v28
	buffer_load_u8 v243, v128, s[8:11], 0 offen
	v_add_nc_u32_e32 v128, s33, v29
	buffer_load_u8 v244, v128, s[8:11], 0 offen
	v_add_nc_u32_e32 v128, s33, v3
	s_clause 0x2
	buffer_load_u8 v245, v128, s[8:11], 0 offen
	buffer_load_u8 v246, v31, s[8:11], 0 offen
	buffer_load_u8 v247, v124, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v4
	s_clause 0x1
	buffer_load_u8 v248, v31, s[8:11], 0 offen
	buffer_load_u8 v249, v125, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v5
	buffer_load_u8 v250, v31, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v6
	buffer_load_u8 v251, v31, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v7
	s_clause 0x1
	buffer_load_u8 v252, v31, s[8:11], 0 offen
	buffer_load_u8 v253, v126, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v8
	buffer_load_u8 v254, v31, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v9
	buffer_load_u8 v255, v31, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v10
	buffer_load_u8 v32, v31, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v11
	buffer_load_u8 v98, v31, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v12
	buffer_load_u8 v0, v31, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v13
	buffer_load_u8 v99, v31, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v14
	s_clause 0x1
	buffer_load_u8 v100, v31, s[8:11], 0 offen
	buffer_load_u8 v101, v127, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v15
	buffer_load_u8 v2, v31, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v16
	buffer_load_u8 v107, v31, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v17
	buffer_load_u8 v108, v31, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v18
	buffer_load_u8 v109, v31, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v19
	buffer_load_u8 v110, v31, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v20
	buffer_load_u8 v111, v31, s[8:11], 0 offen
	v_add_nc_u32_e32 v31, s33, v21
	buffer_load_u8 v112, v31, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v31, v117, s[24:27], 0 offen
	buffer_load_u8 v117, v118, s[24:27], 0 offen
	buffer_load_u8 v118, v119, s[24:27], 0 offen
	buffer_load_u8 v119, v121, s[24:27], 0 offen
	buffer_load_u8 v121, v122, s[24:27], 0 offen
	buffer_load_u8 v122, v123, s[24:27], 0 offen
	buffer_load_u8 v30, v30, s[24:27], 0 offen
	buffer_load_u8 v120, v120, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s33, s31, s30
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(7)
	ds_store_b8 v104, v31
	s_waitcnt vmcnt(6)
	ds_store_b8 v104, v117 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v104, v118 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v104, v119 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v104, v121 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v105, v120
	ds_store_b8 v104, v122 offset:1536
	ds_store_b8 v106, v30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_load_b32 v113, off, off offset:24 ; 4-byte Folded Reload
	ds_load_u8 v30, v102 offset:320
	ds_load_u8 v31, v102 offset:256
	ds_load_u8 v167, v102 offset:336
	ds_load_u8 v168, v102 offset:272
	ds_load_u8 v134, v102 offset:352
	ds_load_u8 v135, v102 offset:288
	ds_load_u8 v117, v102 offset:368
	ds_load_u8 v118, v102 offset:304
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s33, s33, s74
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v102 offset:448
	ds_load_u8 v121, v102 offset:384
	ds_load_u8 v171, v102 offset:464
	ds_load_u8 v172, v102 offset:400
	ds_load_u8 v138, v102 offset:480
	ds_load_u8 v139, v102 offset:416
	ds_load_u8 v119, v102 offset:496
	ds_load_u8 v120, v102 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v31, v121, v31, 0xc0c0004
	ds_load_u8 v123, v102 offset:64
	ds_load_u8 v124, v102
	ds_load_u8 v174, v102 offset:80
	ds_load_u8 v140, v102 offset:96
	ds_load_u8 v121, v102 offset:112
	ds_load_u8 v176, v102 offset:16
	ds_load_u8 v143, v102 offset:32
	ds_load_u8 v122, v102 offset:48
	v_lshl_or_b32 v31, v31, 16, v30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v125, v124, v123, 0xc0c0004
	ds_load_u8 v126, v102 offset:192
	ds_load_u8 v127, v102 offset:128
	ds_load_u8 v177, v102 offset:208
	ds_load_u8 v180, v102 offset:144
	ds_load_u8 v145, v102 offset:224
	ds_load_u8 v148, v102 offset:160
	ds_load_u8 v123, v102 offset:240
	ds_load_u8 v124, v102 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v126, 16, v125
	ds_load_u8 v225, v102 offset:960
	ds_load_u8 v227, v102 offset:896
	ds_load_u8 v213, v102 offset:1024
	ds_load_u8 v183, v102 offset:976
	ds_load_u8 v184, v102 offset:912
	ds_load_u8 v150, v102 offset:992
	ds_load_u8 v152, v102 offset:928
	ds_load_u8 v125, v102 offset:944
	ds_load_u8 v229, v102 offset:832
	ds_load_u8 v230, v102 offset:768
	ds_load_u8 v188, v102 offset:848
	ds_load_u8 v190, v102 offset:784
	ds_load_u8 v155, v102 offset:864
	ds_load_u8 v156, v102 offset:800
	ds_load_u8 v126, v102 offset:880
	ds_load_u8 v127, v102 offset:816
	ds_load_u8 v232, v102 offset:704
	ds_load_u8 v234, v102 offset:640
	ds_load_u8 v191, v102 offset:720
	ds_load_u8 v192, v102 offset:656
	ds_load_u8 v159, v102 offset:736
	ds_load_u8 v160, v102 offset:672
	ds_load_u8 v128, v102 offset:752
	ds_load_u8 v129, v102 offset:688
	ds_load_u8 v235, v102 offset:576
	ds_load_u8 v236, v102 offset:512
	ds_load_u8 v195, v102 offset:592
	ds_load_u8 v196, v102 offset:528
	ds_load_u8 v163, v102 offset:608
	ds_load_u8 v164, v102 offset:544
	ds_load_u8 v131, v102 offset:624
	ds_load_u8 v133, v102 offset:560
	ds_load_u8 v217, v102 offset:1216
	ds_load_u8 v219, v102 offset:1280
	ds_load_u8 v197, v102 offset:1232
	ds_load_u8 v198, v102 offset:1168
	ds_load_u8 v165, v102 offset:1248
	ds_load_u8 v166, v102 offset:1184
	ds_load_u8 v130, v102 offset:1264
	ds_load_u8 v132, v102 offset:1200
	ds_load_u8 v221, v102 offset:1152
	ds_load_u8 v223, v102 offset:1088
	ds_load_u8 v199, v102 offset:1104
	ds_load_u8 v200, v102 offset:1040
	ds_load_u8 v169, v102 offset:1120
	ds_load_u8 v170, v102 offset:1056
	ds_load_u8 v136, v102 offset:1136
	ds_load_u8 v137, v102 offset:1072
	ds_load_u8 v228, v102 offset:1472
	ds_load_u8 v214, v102 offset:1536
	ds_load_u8 v201, v102 offset:1488
	ds_load_u8 v202, v102 offset:1424
	ds_load_u8 v173, v102 offset:1504
	ds_load_u8 v175, v102 offset:1440
	ds_load_u8 v141, v102 offset:1520
	ds_load_u8 v142, v102 offset:1456
	ds_load_u8 v231, v102 offset:1408
	ds_load_u8 v233, v102 offset:1344
	ds_load_u8 v203, v102 offset:1360
	ds_load_u8 v205, v102 offset:1296
	ds_load_u8 v178, v102 offset:1376
	ds_load_u8 v181, v102 offset:1312
	ds_load_u8 v146, v102 offset:1392
	ds_load_u8 v149, v102 offset:1328
	ds_load_u8 v215, v102 offset:1984
	ds_load_u8 v204, v102 offset:2000
	ds_load_u8 v206, v102 offset:1936
	ds_load_u8 v179, v102 offset:2016
	ds_load_u8 v182, v102 offset:1952
	s_waitcnt vmcnt(0)
	ds_load_u8 v154, v113
	scratch_load_b32 v113, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v144, v113
	ds_load_u8 v147, v102 offset:1968
	ds_load_u8 v216, v102 offset:1920
	ds_load_u8 v218, v102 offset:1856
	ds_load_u8 v207, v102 offset:1872
	ds_load_u8 v208, v102 offset:1808
	ds_load_u8 v185, v102 offset:1888
	ds_load_u8 v186, v102 offset:1824
	ds_load_u8 v151, v102 offset:1904
	ds_load_u8 v153, v102 offset:1840
	ds_load_u8 v220, v102 offset:1728
	ds_load_u8 v222, v102 offset:1792
	ds_load_u8 v209, v102 offset:1744
	ds_load_u8 v210, v102 offset:1680
	ds_load_u8 v187, v102 offset:1760
	ds_load_u8 v189, v102 offset:1696
	ds_load_u8 v157, v102 offset:1776
	ds_load_u8 v158, v102 offset:1712
	ds_load_u8 v224, v102 offset:1664
	ds_load_u8 v226, v102 offset:1600
	ds_load_u8 v211, v102 offset:1616
	ds_load_u8 v212, v102 offset:1552
	ds_load_u8 v193, v102 offset:1632
	ds_load_u8 v194, v102 offset:1568
	ds_load_u8 v161, v102 offset:1648
	ds_load_u8 v162, v102 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v104, v245
	ds_store_b8 v104, v246 offset:256
	ds_store_b8 v104, v247 offset:512
	ds_store_b8 v104, v249 offset:1024
	ds_store_b8 v104, v250 offset:1280
	ds_store_b8 v104, v251 offset:1536
	ds_store_b8 v104, v253 offset:2048
	ds_store_b8 v104, v254 offset:2304
	ds_store_b8 v104, v255 offset:2560
	ds_store_b8 v104, v98 offset:3072
	ds_store_b8 v104, v0 offset:3328
	ds_store_b8 v104, v99 offset:3584
	ds_store_b8 v104, v101 offset:4096
	ds_store_b8 v104, v2 offset:4352
	ds_store_b8 v104, v107 offset:4608
	ds_store_b8 v104, v109 offset:5120
	ds_store_b8 v104, v110 offset:5376
	ds_store_b8 v104, v111 offset:5632
	ds_store_b8 v104, v237 offset:6144
	ds_store_b8 v104, v238 offset:6400
	ds_store_b8 v104, v239 offset:6656
	ds_store_b8 v104, v241 offset:7168
	ds_store_b8 v104, v242 offset:7424
	ds_store_b8 v104, v243 offset:7680
	ds_store_b8 v105, v248
	ds_store_b8 v106, v252
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v32
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v100
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v108
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v112
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v240
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v244
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v103 offset:1280
	ds_load_u8 v2, v103 offset:1024
	ds_load_u8 v32, v103 offset:1792
	ds_load_u8 v98, v103 offset:1536
	ds_load_u8 v99, v103 offset:1408
	ds_load_u8 v100, v103 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v2, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v98, v32, 0xc0c0004
	ds_load_u8 v32, v103 offset:256
	ds_load_u8 v98, v103
	ds_load_u8 v101, v103 offset:768
	ds_load_u8 v107, v103 offset:512
	ds_load_u8 v108, v103 offset:384
	ds_load_u8 v109, v103 offset:128
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_lshl_or_b32 v238, v2, 16, v0
	v_perm_b32 v0, v230, v229, 0xc0c0004
	v_perm_b32 v2, v227, v225, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v230, v2, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v32, v98, v32, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v98, v107, v101, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v237, v98, 16, v32
	v_perm_b32 v32, v236, v235, 0xc0c0004
	v_perm_b32 v98, v234, v232, 0xc0c0004
	v_lshl_or_b32 v229, v98, 16, v32
	ds_load_u8 v0, v103 offset:3328
	ds_load_u8 v2, v103 offset:3072
	ds_load_u8 v32, v103 offset:3840
	ds_load_u8 v98, v103 offset:3584
	ds_load_u8 v101, v103 offset:3456
	ds_load_u8 v107, v103 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v2, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v98, v32, 0xc0c0004
	ds_load_u8 v32, v103 offset:2304
	ds_load_u8 v98, v103 offset:2048
	ds_load_u8 v110, v103 offset:2816
	ds_load_u8 v111, v103 offset:2560
	ds_load_u8 v112, v103 offset:2432
	ds_load_u8 v236, v103 offset:2176
	v_lshl_or_b32 v235, v2, 16, v0
	v_perm_b32 v0, v219, v233, 0xc0c0004
	v_perm_b32 v2, v231, v228, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v232, v2, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v32, v98, v32, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v98, v111, v110, 0xc0c0004
	v_lshl_or_b32 v234, v98, 16, v32
	v_perm_b32 v32, v213, v223, 0xc0c0004
	v_perm_b32 v98, v221, v217, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v231, v98, 16, v32
	ds_load_u8 v0, v103 offset:5376
	ds_load_u8 v2, v103 offset:5120
	ds_load_u8 v32, v103 offset:5888
	ds_load_u8 v98, v103 offset:5632
	ds_load_u8 v110, v103 offset:5504
	ds_load_u8 v111, v103 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v2, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v98, v32, 0xc0c0004
	ds_load_u8 v32, v103 offset:4352
	ds_load_u8 v98, v103 offset:4096
	ds_load_u8 v213, v103 offset:4864
	ds_load_u8 v217, v103 offset:4608
	ds_load_u8 v233, v103 offset:4480
	ds_load_u8 v249, v103 offset:4224
	v_lshl_or_b32 v240, v2, 16, v0
	v_perm_b32 v0, v222, v218, 0xc0c0004
	v_perm_b32 v2, v216, v215, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v242, v2, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v32, v98, v32, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v98, v217, v213, 0xc0c0004
	v_lshl_or_b32 v239, v98, 16, v32
	v_perm_b32 v32, v214, v226, 0xc0c0004
	v_perm_b32 v98, v224, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v241, v98, 16, v32
	ds_load_u8 v0, v103 offset:7424
	ds_load_u8 v2, v103 offset:7168
	ds_load_u8 v32, v103 offset:7936
	ds_load_u8 v98, v103 offset:7680
	ds_load_u8 v251, v103 offset:7552
	ds_load_u8 v252, v103 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v2, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v98, v32, 0xc0c0004
	ds_load_u8 v32, v103 offset:6400
	ds_load_u8 v98, v103 offset:6144
	ds_load_u8 v213, v103 offset:6912
	ds_load_u8 v214, v103 offset:6656
	ds_load_u8 v253, v103 offset:6528
	ds_load_u8 v254, v103 offset:6272
	v_lshl_or_b32 v244, v2, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v32, v98, v32, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v98, v214, v213, 0xc0c0004
	v_dual_mov_b32 v220, s23 :: v_dual_mov_b32 v219, s22
	v_dual_mov_b32 v218, s21 :: v_dual_mov_b32 v217, s20
	v_dual_mov_b32 v216, s19 :: v_dual_mov_b32 v215, s18
	v_dual_mov_b32 v214, s17 :: v_dual_mov_b32 v213, s16
	v_lshl_or_b32 v243, v98, 16, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[221:228], v[237:238], v[30:31], v[213:220] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[221:228], v[234:235], v[229:230], v[221:228] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[221:228], v[239:240], v[231:232], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[221:228], v[243:244], v[241:242], v[221:228] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v221
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v100, v103 offset:1664
	ds_load_u8 v221, v103 offset:1920
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v2, v222
	v_cvt_f32_i32_e32 v32, v223
	v_cvt_f32_i32_e32 v98, v224
	v_cvt_f32_i32_e32 v255, v225
	v_cvt_f32_i32_e32 v113, v226
	v_cvt_f32_i32_e32 v114, v227
	v_cvt_f32_i32_e32 v115, v228
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v100, v221, 0xc0c0004
	ds_load_u8 v109, v103 offset:640
	ds_load_u8 v221, v103 offset:896
	v_lshl_or_b32 v246, v100, 16, v99
	v_perm_b32 v99, v107, v101, 0xc0c0004
	ds_load_u8 v100, v103 offset:3712
	ds_load_u8 v101, v103 offset:3968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v109, v109, v221, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v245, v109, 16, v108
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v100, v101, 0xc0c0004
	v_perm_b32 v101, v236, v112, 0xc0c0004
	v_perm_b32 v112, v176, v174, 0xc0c0004
	ds_load_u8 v107, v103 offset:2688
	ds_load_u8 v108, v103 offset:2944
	v_wmma_i32_16x16x16_iu4 v[221:228], v[245:246], v[30:31], v[213:220] neg_lo:[1,1,0]
	v_perm_b32 v30, v168, v167, 0xc0c0004
	v_perm_b32 v31, v172, v171, 0xc0c0004
	v_perm_b32 v167, v180, v177, 0xc0c0004
	v_perm_b32 v171, v196, v195, 0xc0c0004
	v_perm_b32 v172, v192, v191, 0xc0c0004
	v_perm_b32 v174, v200, v199, 0xc0c0004
	v_lshl_or_b32 v31, v31, 16, v30
	v_lshl_or_b32 v30, v167, 16, v112
	v_perm_b32 v112, v190, v188, 0xc0c0004
	v_perm_b32 v167, v184, v183, 0xc0c0004
	v_perm_b32 v176, v198, v197, 0xc0c0004
	v_perm_b32 v180, v210, v209, 0xc0c0004
	v_lshl_or_b32 v248, v100, 16, v99
	v_perm_b32 v99, v111, v110, 0xc0c0004
	v_lshl_or_b32 v168, v167, 16, v112
	v_lshl_or_b32 v167, v172, 16, v171
	v_perm_b32 v112, v205, v203, 0xc0c0004
	v_perm_b32 v171, v202, v201, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[195:202], v[237:238], v[30:31], v[213:220] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v172, v171, 16, v112
	v_lshl_or_b32 v171, v176, 16, v174
	v_perm_b32 v112, v208, v207, 0xc0c0004
	v_perm_b32 v174, v206, v204, 0xc0c0004
	v_perm_b32 v176, v212, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[195:202], v[234:235], v[167:168], v[195:202] neg_lo:[1,1,0]
	v_lshl_or_b32 v247, v107, 16, v101
	ds_load_u8 v100, v103 offset:5760
	ds_load_u8 v101, v103 offset:6016
	v_lshl_or_b32 v177, v174, 16, v112
	v_lshl_or_b32 v176, v180, 16, v176
	v_wmma_i32_16x16x16_iu4 v[195:202], v[239:240], v[171:172], v[195:202] neg_lo:[1,1,0]
	ds_load_u8 v107, v103 offset:4736
	ds_load_u8 v108, v103 offset:4992
	v_wmma_i32_16x16x16_iu4 v[221:228], v[247:248], v[229:230], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[195:202], v[243:244], v[176:177], v[195:202] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v112, v195
	v_cvt_f32_i32_e32 v174, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v180, v197
	v_cvt_f32_i32_e32 v183, v198
	v_cvt_f32_i32_e32 v184, v199
	v_cvt_f32_i32_e32 v188, v200
	v_cvt_f32_i32_e32 v190, v201
	v_cvt_f32_i32_e32 v191, v202
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[195:202], v[245:246], v[30:31], v[213:220] neg_lo:[1,1,0]
	v_perm_b32 v30, v135, v134, 0xc0c0004
	v_perm_b32 v31, v139, v138, 0xc0c0004
	v_perm_b32 v134, v143, v140, 0xc0c0004
	v_perm_b32 v135, v148, v145, 0xc0c0004
	v_perm_b32 v138, v164, v163, 0xc0c0004
	v_perm_b32 v139, v160, v159, 0xc0c0004
	v_lshl_or_b32 v31, v31, 16, v30
	v_wmma_i32_16x16x16_iu4 v[195:202], v[247:248], v[167:168], v[195:202] neg_lo:[1,1,0]
	v_lshl_or_b32 v30, v135, 16, v134
	v_perm_b32 v134, v156, v155, 0xc0c0004
	v_perm_b32 v135, v152, v150, 0xc0c0004
	v_perm_b32 v140, v170, v169, 0xc0c0004
	v_perm_b32 v143, v166, v165, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[163:170], v[237:238], v[30:31], v[213:220] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v135, v135, 16, v134
	v_lshl_or_b32 v134, v139, 16, v138
	v_perm_b32 v138, v181, v178, 0xc0c0004
	v_perm_b32 v139, v175, v173, 0xc0c0004
	v_perm_b32 v145, v194, v193, 0xc0c0004
	v_perm_b32 v148, v189, v187, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[163:170], v[234:235], v[134:135], v[163:170] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v100, v100, v101, 0xc0c0004
	v_lshl_or_b32 v139, v139, 16, v138
	v_lshl_or_b32 v138, v143, 16, v140
	v_perm_b32 v140, v186, v185, 0xc0c0004
	v_perm_b32 v143, v182, v179, 0xc0c0004
	v_lshl_or_b32 v155, v148, 16, v145
	v_perm_b32 v101, v249, v233, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[163:170], v[239:240], v[138:139], v[163:170] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v108, 0xc0c0004
	v_lshl_or_b32 v156, v143, 16, v140
	v_lshl_or_b32 v250, v100, 16, v99
	v_perm_b32 v99, v252, v251, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v249, v107, 16, v101
	v_wmma_i32_16x16x16_iu4 v[163:170], v[243:244], v[155:156], v[163:170] neg_lo:[1,1,0]
	ds_load_u8 v100, v103 offset:7808
	ds_load_u8 v101, v103 offset:8064
	ds_load_u8 v107, v103 offset:6784
	ds_load_u8 v108, v103 offset:7040
	v_wmma_i32_16x16x16_iu4 v[221:228], v[249:250], v[231:232], v[221:228] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v163
	v_cvt_f32_i32_e32 v143, v164
	v_cvt_f32_i32_e32 v145, v165
	v_cvt_f32_i32_e32 v148, v166
	v_cvt_f32_i32_e32 v150, v167
	v_cvt_f32_i32_e32 v152, v168
	v_cvt_f32_i32_e32 v159, v169
	v_cvt_f32_i32_e32 v160, v170
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[163:170], v[245:246], v[30:31], v[213:220] neg_lo:[1,1,0]
	v_perm_b32 v30, v118, v117, 0xc0c0004
	v_perm_b32 v31, v120, v119, 0xc0c0004
	v_perm_b32 v117, v122, v121, 0xc0c0004
	v_perm_b32 v118, v124, v123, 0xc0c0004
	v_perm_b32 v119, v127, v126, 0xc0c0004
	v_perm_b32 v120, v125, v154, 0xc0c0004
	v_lshl_or_b32 v31, v31, 16, v30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v100, v100, v101, 0xc0c0004
	v_lshl_or_b32 v30, v118, 16, v117
	v_perm_b32 v117, v133, v131, 0xc0c0004
	v_perm_b32 v118, v129, v128, 0xc0c0004
	v_lshl_or_b32 v126, v120, 16, v119
	v_perm_b32 v119, v137, v136, 0xc0c0004
	v_perm_b32 v120, v132, v130, 0xc0c0004
	v_perm_b32 v101, v254, v253, 0xc0c0004
	v_lshl_or_b32 v125, v118, 16, v117
	v_perm_b32 v117, v149, v146, 0xc0c0004
	v_perm_b32 v118, v142, v141, 0xc0c0004
	v_lshl_or_b32 v127, v120, 16, v119
	v_perm_b32 v119, v153, v151, 0xc0c0004
	v_perm_b32 v120, v147, v144, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v108, 0xc0c0004
	v_lshl_or_b32 v128, v118, 16, v117
	v_perm_b32 v117, v162, v161, 0xc0c0004
	v_perm_b32 v118, v158, v157, 0xc0c0004
	v_lshl_or_b32 v130, v120, 16, v119
	v_lshl_or_b32 v252, v100, 16, v99
	v_lshl_or_b32 v251, v107, 16, v101
	v_wmma_i32_16x16x16_iu4 v[163:170], v[247:248], v[134:135], v[163:170] neg_lo:[1,1,0]
	v_lshl_or_b32 v129, v118, 16, v117
	v_wmma_i32_16x16x16_iu4 v[117:124], v[237:238], v[30:31], v[213:220] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[221:228], v[251:252], v[241:242], v[221:228] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[195:202], v[249:250], v[171:172], v[195:202] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[163:170], v[249:250], v[138:139], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[234:235], v[125:126], v[117:124] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v107, v228
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[195:202], v[251:252], v[176:177], v[195:202] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[163:170], v[251:252], v[155:156], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[239:240], v[127:128], v[117:124] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v99, v221
	v_cvt_f32_i32_e32 v108, v222
	v_cvt_f32_i32_e32 v172, v200
	v_cvt_f32_i32_e32 v135, v168
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[117:124], v[243:244], v[129:130], v[117:124] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v176, v201
	v_cvt_f32_i32_e32 v139, v170
	v_cvt_f32_i32_e32 v109, v223
	v_cvt_f32_i32_e32 v110, v224
	v_cvt_f32_i32_e32 v131, v117
	v_cvt_f32_i32_e32 v132, v118
	v_cvt_f32_i32_e32 v133, v119
	v_cvt_f32_i32_e32 v136, v120
	v_cvt_f32_i32_e32 v137, v121
	v_cvt_f32_i32_e32 v141, v122
	v_cvt_f32_i32_e32 v142, v123
	v_cvt_f32_i32_e32 v144, v124
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[117:124], v[245:246], v[30:31], v[213:220] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v171, v195
	v_cvt_f32_i32_e32 v192, v196
	v_cvt_f32_i32_e32 v195, v197
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[117:124], v[247:248], v[125:126], v[117:124] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v196, v198
	v_cvt_f32_i32_e32 v134, v163
	v_cvt_f32_i32_e32 v155, v164
	v_cvt_f32_i32_e32 v156, v165
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[117:124], v[249:250], v[127:128], v[117:124] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v163, v166
	v_cvt_f32_i32_e32 v100, v226
	v_cvt_f32_i32_e32 v101, v227
	v_cvt_f32_i32_e32 v111, v225
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[117:124], v[251:252], v[129:130], v[117:124] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v177, v202
	v_cvt_f32_i32_e32 v197, v199
	v_cvt_f32_i32_e32 v138, v169
	v_cvt_f32_i32_e32 v164, v167
	v_cvt_f32_i32_e32 v30, v117
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v117, off, off         ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v127, v118
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v118, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v128, v119
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v119, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v129, v120
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v120, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v31, v122
	v_cvt_f32_i32_e32 v130, v121
	.loc	1 1213 40                       ; ragged.py:1213:40
	scratch_load_b64 v[121:122], off, off offset:16 ; 8-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v125, v123
	v_cvt_f32_i32_e32 v126, v124
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v117, s31, v117, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v118, s31, v118, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v119, s31, v119, 1
	v_cndmask_b32_e32 v117, 0x80000000, v117, vcc_lo
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v120, s31, v120, 1
	v_cndmask_b32_e64 v118, 0x80000000, v118, s0
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s31, s31, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v121, v121, s33, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v119, 0x80000000, v119, s1
	v_cndmask_b32_e64 v120, 0x80000000, v120, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v121, v121, s[4:7], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v117, v117, s[12:15], 0 offen
	buffer_load_u16 v146, v118, s[12:15], 0 offen
	buffer_load_u16 v147, v119, s[12:15], 0 offen
	buffer_load_u16 v149, v120, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v119, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s31, s28
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v118, 16, v121
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v151, 16, v117
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v151, v0
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v119, v118
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[117:120], v116
	ds_load_b128 v[121:124], v116 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v96, v0, v117
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v151, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v95, v0, v118 :: v_dual_mul_f32 v0, v151, v32
	v_fmac_f32_e32 v94, v0, v119
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v151, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v93, v0, v120 :: v_dual_lshlrev_b32 v0, 16, v146
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v2, v0, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v81, v2, v117 :: v_dual_mul_f32 v2, v0, v174
	v_dual_fmac_f32 v79, v2, v118 :: v_dual_mul_f32 v2, v0, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v2, v119
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v2, v0, v183
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v77, v2, v120 :: v_dual_lshlrev_b32 v2, 16, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v2, v140
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v64, v32, v117
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v2, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v63, v32, v118 :: v_dual_mul_f32 v32, v2, v145
	v_fmac_f32_e32 v62, v32, v119
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v2, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v61, v32, v120 :: v_dual_lshlrev_b32 v32, 16, v149
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v32, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v48, v98, v117
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v32, v132
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v47, v98, v118 :: v_dual_mul_f32 v98, v32, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v98, v119
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v32, v136
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v45, v98, v120 :: v_dual_mul_f32 v98, v151, v255
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v98, v121
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v151, v113
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v91, v98, v122
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v98, v151, v114 :: v_dual_mul_f32 v113, v126, v32
	v_mul_f32_e32 v30, v30, v32
	v_mul_f32_e32 v31, v31, v32
	v_mul_f32_e32 v112, v125, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v98, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v151, v115
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v98, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v0, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v76, v98, v121
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v0, v188
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v75, v98, v122
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v0, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v74, v98, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v0, v191
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v98, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v2, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v60, v98, v121
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v2, v152
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v59, v98, v122
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v2, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v58, v98, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v2, v160
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v57, v98, v124 :: v_dual_mul_f32 v98, v32, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v98, v121
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v32, v141
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v43, v98, v122
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v32, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v42, v98, v123
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v32, v144
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v41, v98, v124 :: v_dual_mul_f32 v98, v99, v151
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[117:120], v116 offset:512
	ds_load_b128 v[121:124], v116 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v99, v107, v151
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v107, v176, v0 :: v_dual_fmac_f32 v80, v98, v117
	v_mul_f32_e32 v98, v151, v108
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v40, v30, v117
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v32, v127
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v82, v99, v124
	v_fmac_f32_e32 v66, v107, v123
	v_fmac_f32_e32 v88, v98, v118
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v98, v151, v109 :: v_dual_fmac_f32 v39, v30, v118
	v_dual_mul_f32 v30, v32, v128 :: v_dual_mul_f32 v109, v135, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v36, v31, v122 :: v_dual_fmac_f32 v87, v98, v119
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v151, v110
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v38, v30, v119
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v32, v129
	v_mul_f32_e32 v110, v138, v2
	v_mul_f32_e32 v32, v32, v130
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v98, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v171, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v37, v30, v120 :: v_dual_mul_f32 v30, v100, v151
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v100, v151, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v111, v139, v2 :: v_dual_fmac_f32 v72, v98, v117
	v_mul_f32_e32 v98, v0, v192
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v84, v30, v122 :: v_dual_fmac_f32 v85, v100, v121
	v_dual_fmac_f32 v51, v109, v122 :: v_dual_fmac_f32 v50, v110, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v71, v98, v118 :: v_dual_mul_f32 v98, v0, v195
	v_fmac_f32_e32 v49, v111, v124
	v_fmac_f32_e32 v35, v32, v121
	v_dual_fmac_f32 v34, v112, v123 :: v_dual_fmac_f32 v33, v113, v124
	v_fmac_f32_e32 v70, v98, v119
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v0, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v69, v98, v120
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v134, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v56, v98, v117
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v2, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v55, v98, v118
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v2, v156
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v54, v98, v119
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v98, v2, v163
	v_mul_f32_e32 v2, v2, v164
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v53, v98, v120 :: v_dual_mul_f32 v98, v101, v151
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v101, v172, v0
	v_mul_f32_e32 v108, v177, v0
	v_mul_f32_e32 v0, v0, v197
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v52, v2, v121
	v_fmac_f32_e32 v83, v98, v123
	v_fmac_f32_e32 v67, v101, v122
	v_fmac_f32_e32 v65, v108, v124
	v_fmac_f32_e32 v68, v0, v121
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v110, off, off offset:60
	scratch_load_b32 v111, off, off offset:64
	v_mov_b32_e32 v5, v1
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v6, 7, v110
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v11, |v90|, |v89|, |v80|
	v_max_f32_e64 v12, |v63|, |v63|
	v_max_f32_e64 v15, |v64|, |v64|
	v_max_f32_e64 v16, |v48|, |v48|
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v6
	v_or_b32_e32 v3, 60, v6
	v_or_b32_e32 v9, 58, v6
	s_mov_b32 s26, 0x76543210
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp6:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s0
	v_add_co_u32 v3, s0, s66, v3
	v_add_co_ci_u32_e64 v4, null, s67, 0, s0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v9, s1, s66, v9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 54, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s67, 0, s1
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s66, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s6
	v_add_co_u32 v3, s6, s66, v3
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 52, v6
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[9:10]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[9:10]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 50, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[72:73], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s10, s66, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s10
	v_add_co_u32 v9, s10, s66, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v6
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[64:65], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s67, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[72:73], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 46, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[72:73], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s14, s66, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s14
	v_add_co_u32 v3, s14, s66, v3
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 44, v6
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[64:65], v[9:10]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[72:73], v[9:10]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 42, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[72:73], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s18, s66, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s18
	v_add_co_u32 v9, s18, s66, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 40, v6
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[64:65], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s67, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[72:73], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 38, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[72:73], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s22, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s22
	v_add_co_u32 v13, s22, s66, v3
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v95|, |v95|
	v_max_f32_e64 v3, |v96|, |v96|
.Ltmp8:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[72:73], v[1:2]
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, |v93|, |v92|, |v91|
	v_max3_f32 v2, |v88|, |v87|, |v86|
	v_max_f32_e32 v0, v3, v0
	v_max3_f32 v3, |v85|, |v84|, |v83|
.Ltmp10:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[64:65], v[9:10]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s67, 0, s22
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[72:73], v[9:10]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v4, |v79|, |v79|
	v_max_f32_e64 v9, |v81|, |v81|
	v_max3_f32 v0, v0, |v94|, v1
	v_max3_f32 v1, v2, v3, |v82|
	v_max3_f32 v3, |v77|, |v76|, |v75|
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v19, 8, v110
.Ltmp13:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 36, v6
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v0, v11, v1
	v_max_f32_e32 v2, v9, v4
	v_max3_f32 v4, |v71|, |v70|, |v69|
	v_max3_f32 v9, |v68|, |v67|, |v66|
	v_max3_f32 v1, |v74|, |v73|, |v72|
	v_max3_f32 v11, |v55|, |v54|, |v53|
	v_max3_f32 v2, v2, |v78|, v3
.Ltmp16:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[64:65], v[13:14]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v4, v9, |v65|
	v_max_f32_e32 v4, v15, v12
	v_max3_f32 v9, |v61|, |v60|, |v59|
	v_max3_f32 v12, |v52|, |v51|, |v50|
	v_max_f32_e64 v15, |v47|, |v47|
.Ltmp18:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v8, 0x80, v110
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v2, v1, v3
	v_max3_f32 v1, |v58|, |v57|, |v56|
	v_max3_f32 v3, v4, |v62|, v9
	v_max3_f32 v4, v11, v12, |v49|
	v_max_f32_e32 v9, v16, v15
	v_max3_f32 v11, |v45|, |v44|, |v43|
	v_max3_f32 v12, |v39|, |v38|, |v37|
	v_max3_f32 v15, |v35|, |v36|, |v34|
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v16, v0, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, v1, v4
	v_max3_f32 v1, |v42|, |v41|, |v40|
	v_max3_f32 v4, v9, |v46|, v11
	v_max3_f32 v9, v12, v15, |v33|
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v12, v2, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v3, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v16, v16
.Ltmp24:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s27, s66, v10
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v1, v9
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v21, 1, v8
	v_lshrrev_b32_e32 v22, 3, v8
.Ltmp27:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s67, 0, s27
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v9, v4, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v12, v12
	v_dual_max_f32 v12, v17, v17 :: v_dual_max_f32 v1, v0, v11
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v110
	v_and_b32_e32 v11, 4, v110
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v3, v3, v12 :: v_dual_lshlrev_b32 v12, 4, v110
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v17, v0, 9, 0
	v_lshlrev_b32_e32 v18, 5, v0
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v10
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v10, 0x60, v110
	v_lshl_add_u32 v23, v11, 6, 0
	v_lshl_add_u32 v17, v11, 2, v17
	v_and_or_b32 v20, 0x680, v12, v18
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v9
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v18, v18, v10
.Ltmp37:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[64:65], v[15:16]
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v17, v19, 4, v17
	v_xor_b32_e32 v20, v20, v10
.Ltmp39:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[72:73], v[15:16]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v15, 30, v6
	v_bfe_i32 v7, v110, 7, 1
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v9, v17, v21, v18
	v_add3_u32 v18, v23, v22, v20
.Ltmp41:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v17, 34, v6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v23.h, 0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v7, 0x2010, v7
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v9, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v18
.Ltmp43:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 32, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v17, s26, s66, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v18, null, s67, 0, s26
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[72:73], v[13:14]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s31, s66, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s67, 0, s31
	v_add_co_u32 v15, s31, s66, v15
	v_add_co_ci_u32_e64 v16, null, s67, 0, s31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[64:65], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[72:73], v[13:14]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v14, 28, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[64:65], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[72:73], v[15:16]
.Ltmp44:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v9, v1
	v_dual_mov_b32 v13, v2 :: v_dual_max_f32 v16, v4, v4
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_mov_b32 v15, v3
.Ltmp48:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[64:65], v[17:18]
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v4, v16, v4
.Ltmp50:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[72:73], v[17:18]
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v1, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v13, v2, v13
.Ltmp53:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s36, s66, v14
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_mov_b32 v14, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v17, v13
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v15, v15, v15 :: v_dual_mov_b32 v16, v4
.Ltmp57:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s36
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v15
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[72:73], v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v17, v17 :: v_dual_mov_b32 v15, v3
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v14, v14
.Ltmp65:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v18, 24, v6
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v13, v2
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(0)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v9, v1
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
	v_mov_b32_e32 v17, v2
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v15, v15
.Ltmp71:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v14, 26, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v12, 0x2f0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s38, s66, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v15, null, s67, 0, s38
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v17, v17
	v_dual_max_f32 v13, v16, v16 :: v_dual_mov_b32 v16, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[64:65], v[14:15]
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v4, v4, v13
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v13, v4
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v16, v16
.Ltmp79:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v16, s39, s66, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v17, null, s67, 0, s39
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[64:65], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[72:73], v[16:17]
.Ltmp82:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v18, v13, v13
	v_max_f32_e32 v3, v3, v9
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v13, 4, v0
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v20 :: v_dual_lshlrev_b32 v0, 3, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v4, v4, v18 :: v_dual_mov_b32 v9, v3
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v20, 1, v10
	v_add_nc_u32_e32 v19, 0, v8
.Ltmp86:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v8, 3, v8
	v_lshlrev_b32_e32 v10, 5, v10
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v18, v19, v20, v0
.Ltmp88:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v19, 22, v6
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v3, v3, v9
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v9, 5, v11
	v_add_nc_u32_e32 v11, 0, v13
	ds_store_b128 v18, v[1:4]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v11, v9, v0
	s_barrier
.Ltmp91:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v18, s39, s66, v19
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s67, 0, s39
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[1:4], v0
.Ltmp93:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 20, v6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[72:73], v[14:15]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 18, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[64:65], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[72:73], v[18:19]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v14, s44, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s67, 0, s44
	v_add_co_u32 v16, s44, s66, v9
	v_add_co_ci_u32_e64 v17, null, s67, 0, s44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[64:65], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[72:73], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 12, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[64:65], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[72:73], v[16:17]
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v1, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, v2, v2
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s48, s66, v1
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v1, 14, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, s67, 0, s48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v11, null, 0x40e00000, 0x40e00000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v16, s48, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v17, null, s67, 0, s48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v1, v11
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v18, s48, s66, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 10, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v19, null, s67, 0, s48
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[64:65], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[72:73], v[16:17]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[64:65], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[72:73], v[14:15]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v16, -v11, v1, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s54, s66, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 8, v6
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[64:65], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[72:73], v[18:19]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v1, v16, v1
	v_div_scale_f32 v18, vcc_lo, v0, 0x40e00000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, s67, 0, s54
	v_add_co_u32 v16, s54, s66, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v17, null, s67, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v9, v18, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[64:65], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[72:73], v[14:15]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[64:65], v[16:17]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[72:73], v[16:17]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v14, -v11, v9, v18
	v_max_f32_e32 v16, 0x2b8cbccc, v2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v15, 6, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v9, v14, v1 :: v_dual_max_f32 v14, 0x2b8cbccc, v4
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v11, -v11, v9, v18
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v18, v4
	v_div_fmas_f32 v9, v11, v1, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s58, s66, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v22, v21
	v_div_fixup_f32 v0, v9, 0x40e00000, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v4, v18, 1.0
	v_fmac_f32_e32 v18, v15, v18
	v_div_scale_f32 v15, s61, v16, 0x40e00000, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v21, v22, 1.0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v7, v7, v13
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v24, v15, v18 :: v_dual_max_f32 v3, 0x2b8cbccc, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v22, v25, v22
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v3
	v_div_scale_f32 v17, s60, v3, 0x40e00000, v3
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v2, v20
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v11, v17, v20
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[1:2]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v9, -v19, v11, v17
	v_fmac_f32_e32 v11, v9, v20
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v9.l, v0.h
	v_mov_b16_e32 v9.h, v23.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v19, v11, v17
	v_div_scale_f32 v17, s62, v14, 0x40e00000, v14
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v9, -v4, v24, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v1, v1, v20, v11
	v_mul_f32_e32 v11, v17, v22
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v24, v9, v18
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v9, v0, v2, 0x7fff
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 4, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v1, v1, 0x40e00000, v3
	v_fma_f32 v3, -v21, v11, v17
	v_fma_f32 v2, -v4, v24, v15
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v32, 0xffff0000, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v23.l, v1.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fmac_f32_e32 v11, v3, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v2, v2, v18, v24
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v18, null, v32, v32, v96
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s60, s66, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v15, -v21, v11, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v0, v18
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v16
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v30, null, v32, v32, v92
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v11, v15, v22, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v17, null, v32, v32, v95
	v_div_scale_f32 v31, null, v32, v32, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v18, v0, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v19, v11, 0x40e00000, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v20, v17
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v11.l, v2.h
	v_mov_b16_e32 v11.h, v23.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v0, v16, v0
	v_div_scale_f32 v16, vcc_lo, v96, v32, v96
	v_div_scale_f32 v22, null, v32, v32, v94
	v_div_scale_f32 v26, null, v32, v32, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v21, v16, v0
	v_rcp_f32_e32 v25, v22
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v27, s60, v95, v32, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v18, v21, v16
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v14, 2, v6
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v21, v24, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v22, v25, 1.0
	v_fma_f32 v16, -v18, v21, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v25, v24, v25
	v_div_scale_f32 v24, s61, v94, v32, v94
	v_div_fmas_f32 v0, v16, v0, v21
	v_rcp_f32_e32 v21, v30
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v16, v0, v32, v96
	v_rcp_f32_e32 v96, v31
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v98, -v30, v21, 1.0
	v_fmac_f32_e32 v21, v98, v21
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_and_b32_e32 v15, 1, v23
	v_mov_b16_e32 v23.l, v19.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v98, -v31, v96, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v1, v1, v15, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v15, -v17, v20, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v96, v98, v96 :: v_dual_and_b32 v23, 1, v23
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v11, v2, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v28, 0xffff0000, v1
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v20, v15, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v2, v19, v23, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v19, v26
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v9.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v23, v27, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v18, -v17, v23, v27
	v_fma_f32 v29, -v26, v19, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v23, v18, v20 :: v_dual_mul_f32 v18, v24, v25
	v_fmac_f32_e32 v19, v29, v19
	v_div_scale_f32 v29, s62, v93, v32, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v17, v23, v27
	v_fma_f32 v17, -v22, v18, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v27, v29, v19
	v_div_fmas_f32 v0, v0, v20, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, v17, v25
	v_div_scale_f32 v23, s60, v92, v32, v92
	v_fma_f32 v20, -v26, v27, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v0, v32, v95
	v_fma_f32 v0, -v22, v18, v24
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v22, s63, v91, v32, v91
	v_dual_fmac_f32 v27, v20, v19 :: v_dual_mul_f32 v20, v23, v21
	v_div_scale_f32 v24, null, v32, v32, v90
	v_div_fmas_f32 v0, v0, v25, v18
	v_div_scale_f32 v95, null, v32, v32, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v25, -v30, v20, v23
	v_fma_f32 v18, -v26, v27, v29
	v_rcp_f32_e32 v26, v24
	v_mul_f32_e32 v29, v22, v96
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v20, v25, v21
	v_rcp_f32_e32 v25, v95
	v_div_fmas_f32 v19, v18, v19, v27
	v_fma_f32 v27, -v31, v29, v22
	v_div_fixup_f32 v18, v0, v32, v94
	v_fma_f32 v0, -v30, v20, v23
	v_div_scale_f32 v30, null, v32, v32, v80
	v_fma_f32 v98, -v24, v26, 1.0
	v_fmac_f32_e32 v29, v27, v96
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v27, -v95, v25, 1.0
	v_div_scale_f32 v23, s61, v90, v32, v90
	v_fmac_f32_e32 v26, v98, v26
	v_div_fmas_f32 v0, v0, v21, v20
	v_fma_f32 v20, -v31, v29, v22
	v_fmac_f32_e32 v25, v27, v25
	v_rcp_f32_e32 v27, v30
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v19, v19, v32, v93
	v_mul_f32_e32 v22, v23, v26
	v_div_scale_f32 v31, s60, v89, v32, v89
	v_div_scale_f32 v93, null, v32, v32, v88
	v_div_fmas_f32 v21, v20, v96, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v94, v31, v25 :: v_dual_and_b32 v97, 0xffff0000, v11
	v_fma_f32 v29, -v24, v22, v23
	v_fma_f32 v96, -v30, v27, 1.0
	v_rcp_f32_e32 v98, v93
	v_div_fixup_f32 v21, v21, v32, v91
	v_div_scale_f32 v91, null, v32, v32, v87
	v_div_fixup_f32 v20, v0, v32, v92
	v_fmac_f32_e32 v22, v29, v26
	v_fma_f32 v0, -v95, v94, v31
	v_fmac_f32_e32 v27, v96, v27
	v_div_scale_f32 v29, s62, v80, v32, v80
	v_rcp_f32_e32 v96, v91
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v15, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v93, v98, 1.0
	v_fma_f32 v23, -v24, v22, v23
	v_fmac_f32_e32 v94, v0, v25
	v_mul_f32_e32 v0, v29, v27
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v98, v92, v98
	v_div_fmas_f32 v22, v23, v26, v22
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v26, -v30, v0, v29
	v_fma_f32 v92, -v91, v96, 1.0
	v_fma_f32 v23, -v95, v94, v31
	v_div_scale_f32 v24, s63, v88, v32, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v0, v26, v27
	v_fmac_f32_e32 v96, v92, v96
	v_div_scale_f32 v26, s60, v87, v32, v87
	v_div_fmas_f32 v23, v23, v25, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v30, v0, v29
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v30, v26, v96
	v_div_scale_f32 v95, null, v32, v32, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v29, v27, v0
	v_div_scale_f32 v92, null, v32, v32, v84
	v_fma_f32 v27, -v91, v30, v26
	v_mul_f32_e32 v31, v24, v98
	v_rcp_f32_e32 v94, v95
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v23, v23, v32, v89
	v_fmac_f32_e32 v30, v27, v96
	v_fma_f32 v25, -v93, v31, v24
	v_div_scale_f32 v89, null, v32, v32, v85
	v_div_fixup_f32 v22, v22, v32, v90
	v_div_scale_f32 v90, s61, v86, v32, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v31, v25, v98
	v_fma_f32 v25, -v95, v94, 1.0
	v_rcp_f32_e32 v29, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v24, -v93, v31, v24
	v_fmac_f32_e32 v94, v25, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v25, v24, v98, v31
	v_rcp_f32_e32 v31, v92
	v_div_fixup_f32 v24, v0, v32, v80
	v_fma_f32 v0, -v91, v30, v26
	v_div_scale_f32 v91, null, v32, v32, v83
	v_div_fixup_f32 v25, v25, v32, v88
	v_fma_f32 v93, -v89, v29, 1.0
	v_div_scale_f32 v80, s62, v85, v32, v85
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v92, v31, 1.0
	v_div_fmas_f32 v0, v0, v96, v30
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v96, null, v32, v32, v82
	v_fmac_f32_e32 v31, v88, v31
	v_rcp_f32_e32 v88, v91
	v_mul_f32_e32 v27, v90, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v26, -v95, v27, v90
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v11.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v98, -v91, v88, 1.0
	v_fmac_f32_e32 v27, v26, v94
	v_div_fixup_f32 v26, v0, v32, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v88, v98, v88 :: v_dual_fmac_f32 v29, v93, v29
	v_div_scale_f32 v93, s60, v84, v32, v84
	v_fma_f32 v0, -v95, v27, v90
	v_rcp_f32_e32 v95, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v30, v80, v29
	v_mul_f32_e32 v90, v93, v31
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v94, v27
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v87, -v89, v30, v80
	v_div_scale_f32 v94, s61, v83, v32, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v27, v0, v32, v86
	v_fma_f32 v98, -v96, v95, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v87, v29
	v_fma_f32 v87, -v92, v90, v93
	v_div_scale_f32 v86, s63, v82, v32, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v89, v30, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v87, v31
	v_mul_f32_e32 v80, v94, v88
	v_div_scale_f32 v87, null, v97, v97, v81
	v_div_fmas_f32 v0, v0, v29, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v29, -v92, v90, v93
	v_div_scale_f32 v93, null, v97, v97, v79
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v30, -v91, v80, v94
	v_div_fmas_f32 v31, v29, v31, v90
	v_rcp_f32_e32 v90, v93
	v_rcp_f32_e32 v89, v87
	v_div_fixup_f32 v29, v0, v32, v85
	v_fmac_f32_e32 v80, v30, v88
	v_div_fixup_f32 v30, v31, v32, v84
	v_div_scale_f32 v84, s60, v81, v97, v81
	v_div_scale_f32 v85, null, v97, v97, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v0, -v91, v80, v94
	v_fma_f32 v31, -v93, v90, 1.0
	v_fmac_f32_e32 v95, v98, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v99, -v87, v89, 1.0
	v_div_scale_f32 v94, null, v97, v97, v77
	v_fmac_f32_e32 v90, v31, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v92, v86, v95 :: v_dual_fmac_f32 v89, v99, v89
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v91, s61, v79, v97, v79
	v_fma_f32 v98, -v96, v92, v86
	v_div_fmas_f32 v0, v0, v88, v80
	v_rcp_f32_e32 v88, v85
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v98, v95
	v_rcp_f32_e32 v98, v94
	v_div_fixup_f32 v31, v0, v32, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v96, v92, v86
	v_mul_f32_e32 v86, v84, v89
	v_fma_f32 v96, -v85, v88, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v95, v92
	v_fma_f32 v92, -v87, v86, v84
	v_mul_f32_e32 v95, v91, v90
	v_fma_f32 v83, -v94, v98, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v80, v80, v32, v82
	v_fmac_f32_e32 v86, v92, v89
	v_fma_f32 v0, -v93, v95, v91
	v_div_scale_f32 v32, s62, v78, v97, v78
	v_fmac_f32_e32 v98, v83, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v87, v86, v84
	v_div_scale_f32 v83, s63, v77, v97, v77
	v_fmac_f32_e32 v88, v96, v88
	v_fmac_f32_e32 v95, v0, v90
	v_div_fmas_f32 v84, v84, v89, v86
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v82, null, v97, v97, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v93, v95, v91
	v_dual_mul_f32 v91, v83, v98 :: v_dual_mul_f32 v0, v32, v88
	v_div_scale_f32 v93, null, v97, v97, v75
	v_rcp_f32_e32 v87, v82
	v_div_fixup_f32 v81, v84, v97, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v85, v0, v32
	v_fmac_f32_e32 v0, v89, v88
	v_rcp_f32_e32 v89, v93
	v_div_fmas_f32 v86, v86, v90, v95
	v_fma_f32 v90, -v94, v91, v83
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v32, -v85, v0, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v82, v87, 1.0
	v_div_fixup_f32 v79, v86, v97, v79
	v_div_scale_f32 v86, null, v97, v97, v74
	v_fmac_f32_e32 v91, v90, v98
	v_fma_f32 v85, -v93, v89, 1.0
	v_div_fmas_f32 v0, v32, v88, v0
	v_div_scale_f32 v88, s61, v75, v97, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v94, v91, v83
	v_fmac_f32_e32 v89, v85, v89
	v_rcp_f32_e32 v85, v86
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v78, v0, v97, v78
	v_div_fmas_f32 v32, v32, v98, v91
	v_div_scale_f32 v90, null, v97, v97, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v77, v32, v97, v77
	v_fma_f32 v94, -v86, v85, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v94, v85
	v_fmac_f32_e32 v87, v92, v87
	v_div_scale_f32 v92, s60, v76, v97, v76
	v_div_scale_f32 v94, null, v97, v97, v72
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v84, v92, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v82, v84, v92
	v_dual_fmac_f32 v84, v83, v87 :: v_dual_mul_f32 v91, v88, v89
	v_rcp_f32_e32 v83, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v82, v84, v92
	v_fma_f32 v32, -v93, v91, v88
	v_div_scale_f32 v82, s62, v74, v97, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v91, v32, v89
	v_mul_f32_e32 v32, v82, v85
	v_div_fmas_f32 v0, v0, v87, v84
	v_rcp_f32_e32 v84, v94
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v90, v83, 1.0
	v_div_scale_f32 v87, s60, v73, v97, v73
	v_div_fixup_f32 v76, v0, v97, v76
	v_fma_f32 v0, -v93, v91, v88
	v_fma_f32 v88, -v86, v32, v82
	v_fma_f32 v96, -v94, v84, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v89, v91
	v_div_scale_f32 v89, s61, v72, v97, v72
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v84, v96, v84
	v_fmac_f32_e32 v32, v88, v85
	v_div_fixup_f32 v75, v0, v97, v75
	v_div_scale_f32 v96, null, v97, v97, v65
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v86, v32, v82
	v_mul_f32_e32 v82, v89, v84
	v_div_scale_f32 v86, s63, v71, v97, v71
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v85, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v85, -v94, v82, v89
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, null, v97, v97, v71
	s_mov_b32 vcc_lo, s60
	v_dual_fmac_f32 v82, v85, v84 :: v_dual_mul_f32 v93, v87, v83
	v_rcp_f32_e32 v95, v92
	v_div_fixup_f32 v74, v0, v97, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v94, v82, v89
	v_fma_f32 v88, -v90, v93, v87
	v_div_scale_f32 v89, null, v97, v97, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v88, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v92, v95, 1.0
	v_div_scale_f32 v88, null, v97, v97, v70
	v_fma_f32 v32, -v90, v93, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v95, v91, v95
	v_rcp_f32_e32 v87, v88
	v_div_scale_f32 v91, null, v97, v97, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v83, v93
	v_mul_f32_e32 v90, v86, v95
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v83, v91
	v_div_fmas_f32 v0, v0, v84, v82
	v_div_fixup_f32 v73, v32, v97, v73
	v_fma_f32 v85, -v92, v90, v86
	v_fma_f32 v93, -v88, v87, 1.0
	v_div_scale_f32 v32, s60, v70, v97, v70
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v90, v85, v95
	v_fmac_f32_e32 v87, v93, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v91, v83, 1.0
	v_div_fixup_f32 v72, v0, v97, v72
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v92, v90, v86
	v_mul_f32_e32 v84, v32, v87
	v_fmac_f32_e32 v83, v85, v83
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v86, s61, v69, v97, v69
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v88, v84, v32
	v_div_scale_f32 v92, null, v97, v97, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v93, v86, v83
	v_div_fixup_f32 v71, v82, v97, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v84, v90, v87
	v_fma_f32 v94, -v89, v85, 1.0
	v_div_scale_f32 v90, null, v97, v97, v66
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v0, -v91, v93, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v82, s62, v68, v97, v68
	v_fma_f32 v32, -v88, v84, v32
	v_rcp_f32_e32 v88, v90
	v_dual_fmac_f32 v93, v0, v83 :: v_dual_mul_f32 v0, v82, v85
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v92, v95, 1.0
	v_div_fmas_f32 v32, v32, v87, v84
	v_fma_f32 v84, -v91, v93, v86
	v_fma_f32 v86, -v89, v0, v82
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v95, v94, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v90, v88, 1.0
	v_div_scale_f32 v94, s63, v67, v97, v67
	v_fmac_f32_e32 v0, v86, v85
	v_div_fixup_f32 v70, v32, v97, v70
	v_fmac_f32_e32 v88, v91, v88
	v_div_scale_f32 v91, s60, v66, v97, v66
	v_mul_f32_e32 v87, v94, v95
	v_fma_f32 v32, -v89, v0, v82
	v_div_scale_f32 v89, s61, v65, v97, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v82, v91, v88
	v_div_fmas_f32 v83, v84, v83, v93
	v_rcp_f32_e32 v84, v96
	v_fma_f32 v86, -v92, v87, v94
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v69, v83, v97, v69
	v_div_fmas_f32 v0, v32, v85, v0
	v_fmac_f32_e32 v87, v86, v95
	v_div_scale_f32 v86, null, v28, v28, v64
	v_fma_f32 v85, -v90, v82, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v84, 1.0
	v_fma_f32 v32, -v92, v87, v94
	v_div_scale_f32 v92, null, v28, v28, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v85, v88
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v85, v92
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v68, v0, v97, v68
	v_div_fmas_f32 v32, v32, v95, v87
	v_fma_f32 v0, -v90, v82, v91
	v_div_scale_f32 v90, s62, v64, v28, v64
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v67, v32, v97, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v86, v83, 1.0
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_fmas_f32 v0, v0, v88, v82
	v_div_scale_f32 v88, s60, v63, v28, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v93, v83
	v_mul_f32_e32 v87, v89, v84
	v_div_scale_f32 v93, null, v28, v28, v62
	v_fmac_f32_e32 v85, v91, v85
	v_div_fixup_f32 v66, v0, v97, v66
	v_fma_f32 v32, -v96, v87, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v93
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v94, v88, v85
	v_div_scale_f32 v91, null, v28, v28, v61
	v_fmac_f32_e32 v87, v32, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v95, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v96, v87, v89
	v_fma_f32 v96, -v93, v82, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v84, v87
	v_fma_f32 v84, -v92, v94, v88
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v87, s61, v62, v28, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v65, v0, v97, v65
	v_fmac_f32_e32 v94, v84, v85
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v84, v87, v82
	v_mul_f32_e32 v32, v90, v83
	v_div_scale_f32 v96, null, v28, v28, v55
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v86, v32, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v32, v89, v83
	v_fma_f32 v89, -v91, v95, 1.0
	v_fma_f32 v0, -v86, v32, v90
	v_div_scale_f32 v86, s63, v61, v28, v61
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v83, v32
	v_fma_f32 v83, -v93, v84, v87
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v89, null, v28, v28, v60
	v_fma_f32 v32, -v92, v94, v88
	v_div_scale_f32 v92, null, v28, v28, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v88, v89
	v_fmac_f32_e32 v84, v83, v82
	v_mul_f32_e32 v90, v86, v95
	v_rcp_f32_e32 v83, v92
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v64, v0, v28, v64
	v_div_fmas_f32 v32, v32, v85, v94
	v_fma_f32 v85, -v91, v90, v86
	v_fma_f32 v0, -v93, v84, v87
	v_div_scale_f32 v87, null, v28, v28, v58
	v_fma_f32 v94, -v89, v88, 1.0
	v_div_fixup_f32 v63, v32, v28, v63
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v32, s60, v60, v28, v60
	v_fma_f32 v85, -v92, v83, 1.0
	v_fmac_f32_e32 v88, v94, v88
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v82, v84
	v_fma_f32 v82, -v91, v90, v86
	v_fmac_f32_e32 v83, v85, v83
	v_rcp_f32_e32 v85, v87
	v_div_scale_f32 v86, s61, v59, v28, v59
	v_mul_f32_e32 v84, v32, v88
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v91, null, v28, v28, v57
	v_div_fmas_f32 v82, v82, v95, v90
	v_mul_f32_e32 v93, v86, v83
	v_fma_f32 v90, -v89, v84, v32
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v87, v85, 1.0
	v_div_fixup_f32 v62, v0, v28, v62
	v_rcp_f32_e32 v95, v91
	v_fma_f32 v0, -v92, v93, v86
	v_fmac_f32_e32 v84, v90, v88
	v_div_scale_f32 v90, null, v28, v28, v56
	v_div_fixup_f32 v61, v82, v28, v61
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v82, s62, v58, v28, v58
	v_fmac_f32_e32 v93, v0, v83
	v_fma_f32 v32, -v89, v84, v32
	v_rcp_f32_e32 v89, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v0, v82, v85
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v94, -v91, v95, 1.0
	v_div_fmas_f32 v32, v32, v88, v84
	v_fma_f32 v84, -v92, v93, v86
	v_fma_f32 v86, -v87, v0, v82
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v60, v32, v28, v60
	v_fma_f32 v92, -v90, v89, 1.0
	v_fmac_f32_e32 v0, v86, v85
	v_div_fmas_f32 v83, v84, v83, v93
	v_rcp_f32_e32 v84, v96
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s60, v56, v28, v56
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s63, v57, v28, v57
	v_fma_f32 v32, -v87, v0, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v82, v92, v89
	v_div_fixup_f32 v59, v83, v28, v59
	v_mul_f32_e32 v88, v94, v95
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_fmas_f32 v0, v32, v85, v0
	v_fma_f32 v85, -v90, v82, v92
	v_div_scale_f32 v87, s61, v55, v28, v55
	v_fma_f32 v86, -v91, v88, v94
	v_fmac_f32_e32 v84, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v82, v85, v89
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v58, v0, v28, v58
	v_fmac_f32_e32 v88, v86, v95
	v_div_scale_f32 v86, null, v28, v28, v54
	v_fma_f32 v0, -v90, v82, v92
	v_div_scale_f32 v90, s62, v54, v28, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v91, v88, v94
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v91, null, v28, v28, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v32, v32, v95, v88
	v_mul_f32_e32 v88, v87, v84
	v_rcp_f32_e32 v85, v91
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v57, v32, v28, v57
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v86, v83, 1.0
	v_fma_f32 v32, -v96, v88, v87
	v_div_fmas_f32 v0, v0, v89, v82
	v_div_scale_f32 v89, s60, v53, v28, v53
	v_fmac_f32_e32 v83, v93, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v91, v85, 1.0
	v_div_scale_f32 v93, null, v28, v28, v52
	v_fmac_f32_e32 v88, v32, v84
	v_dual_mul_f32 v32, v90, v83 :: v_dual_fmac_f32 v85, v92, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v82, v93
	v_div_scale_f32 v92, null, v28, v28, v51
	v_div_fixup_f32 v0, v0, v28, v56
	v_fma_f32 v56, -v96, v88, v87
	v_fma_f32 v87, -v86, v32, v90
	v_rcp_f32_e32 v95, v92
	v_mul_f32_e32 v94, v89, v85
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v93, v82, 1.0
	v_div_fmas_f32 v56, v56, v84, v88
	v_fmac_f32_e32 v32, v87, v83
	v_fma_f32 v84, -v91, v94, v89
	v_div_scale_f32 v87, s61, v52, v28, v52
	v_fmac_f32_e32 v82, v96, v82
	v_fma_f32 v88, -v92, v95, 1.0
	v_div_fixup_f32 v55, v56, v28, v55
	v_fma_f32 v56, -v86, v32, v90
	v_fmac_f32_e32 v94, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v84, v87, v82 :: v_dual_fmac_f32 v95, v88, v95
	v_div_scale_f32 v88, null, v28, v28, v50
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v86, s63, v51, v28, v51
	v_div_fmas_f32 v32, v56, v83, v32
	v_fma_f32 v56, -v91, v94, v89
	v_fma_f32 v83, -v93, v84, v87
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v91, null, v28, v28, v49
	v_mul_f32_e32 v90, v86, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v83, v82
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v83, v91
	v_div_fmas_f32 v56, v56, v85, v94
	v_fma_f32 v85, -v92, v90, v86
	v_div_fixup_f32 v32, v32, v28, v54
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v54, -v93, v84, v87
	v_div_fixup_f32 v53, v56, v28, v53
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v56, s60, v50, v28, v50
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v85, -v91, v83, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v93, null, v15, v15, v47
	v_div_fmas_f32 v54, v54, v82, v84
	v_fma_f32 v82, -v92, v90, v86
	v_dual_mul_f32 v84, v56, v89 :: v_dual_fmac_f32 v83, v85, v83
	v_div_scale_f32 v85, null, v15, v15, v48
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v86, s61, v49, v28, v49
	v_div_fmas_f32 v82, v82, v95, v90
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v90, -v88, v84, v56
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v92, v86, v83
	v_div_fixup_f32 v52, v54, v28, v52
	v_div_fixup_f32 v51, v82, v28, v51
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v84, v90, v89
	v_fma_f32 v54, -v91, v92, v86
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v95, null, v15, v15, v45
	v_fma_f32 v90, -v85, v87, 1.0
	v_fma_f32 v56, -v88, v84, v56
	v_div_scale_f32 v88, null, v15, v15, v46
	v_fmac_f32_e32 v92, v54, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v54, s62, v48, v15, v48
	v_rcp_f32_e32 v90, v88
	v_fma_f32 v94, -v93, v82, 1.0
	v_div_fmas_f32 v56, v56, v89, v84
	v_fma_f32 v84, -v91, v92, v86
	v_mul_f32_e32 v86, v54, v87
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v82, v94, v82
	v_div_scale_f32 v89, s60, v47, v15, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v85, v86, v54
	v_fma_f32 v91, -v88, v90, 1.0
	v_rcp_f32_e32 v97, v95
	v_div_fmas_f32 v83, v84, v83, v92
	v_mul_f32_e32 v96, v89, v82
	v_fmac_f32_e32 v86, v94, v87
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, s63, v46, v15, v46
	v_div_fixup_f32 v50, v56, v28, v50
	v_div_fixup_f32 v28, v83, v28, v49
	v_fma_f32 v49, -v85, v86, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v91, v90
	v_div_scale_f32 v83, null, v15, v15, v44
	v_fma_f32 v84, -v93, v96, v89
	v_fma_f32 v56, -v95, v97, 1.0
	v_fma_f32 v54, -v88, v92, v91
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v84, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v97, v56, v97 :: v_dual_fmac_f32 v92, v54, v90
	v_rcp_f32_e32 v54, v83
	v_div_scale_f32 v56, s61, v45, v15, v45
	v_div_fmas_f32 v49, v49, v87, v86
	v_fma_f32 v84, -v93, v96, v89
	v_div_scale_f32 v86, null, v15, v15, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v85, v56, v97
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v48, v49, v15, v48
	v_fma_f32 v87, -v83, v54, 1.0
	v_div_fmas_f32 v82, v84, v82, v96
	v_fma_f32 v84, -v88, v92, v91
	v_rcp_f32_e32 v88, v86
	v_fma_f32 v89, -v95, v85, v56
	v_fmac_f32_e32 v54, v87, v54
	v_div_scale_f32 v87, s60, v44, v15, v44
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v85, v89, v97
	v_div_fmas_f32 v84, v84, v90, v92
	v_mul_f32_e32 v49, v87, v54
	v_div_fixup_f32 v47, v82, v15, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v86, v88, 1.0
	v_fma_f32 v56, -v95, v85, v56
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v89, -v83, v49, v87
	v_div_fixup_f32 v46, v84, v15, v46
	v_div_scale_f32 v84, null, v15, v15, v42
	v_fmac_f32_e32 v88, v82, v88
	v_div_scale_f32 v82, s62, v43, v15, v43
	v_div_fmas_f32 v56, v56, v97, v85
	v_fmac_f32_e32 v49, v89, v54
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v85, v82, v88
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v45, v56, v15, v45
	v_fma_f32 v56, -v83, v49, v87
	v_div_scale_f32 v89, null, v15, v15, v41
	v_fma_f32 v83, -v86, v85, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v49, v56, v54, v49
	v_div_scale_f32 v54, null, v15, v15, v40
	v_fma_f32 v87, -v84, v90, 1.0
	v_rcp_f32_e32 v91, v89
	v_fmac_f32_e32 v85, v83, v88
	v_rcp_f32_e32 v83, v54
	v_div_scale_f32 v56, s60, v42, v15, v42
	v_fmac_f32_e32 v90, v87, v90
	v_div_scale_f32 v87, null, v15, v15, v39
	v_div_fixup_f32 v44, v49, v15, v44
	v_fma_f32 v82, -v86, v85, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v89, v91, 1.0
	v_rcp_f32_e32 v93, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v54, v83, 1.0
	v_mul_f32_e32 v86, v56, v90
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v91, v49, v91
	v_div_scale_f32 v49, s61, v41, v15, v41
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, null, v15, v15, v38
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v84, v86, v56
	v_mul_f32_e32 v88, v49, v91
	v_div_scale_f32 v94, s62, v40, v15, v40
	v_fma_f32 v95, -v87, v93, 1.0
	v_rcp_f32_e32 v96, v92
	v_fmac_f32_e32 v86, v85, v90
	v_fma_f32 v85, -v89, v88, v49
	v_mul_f32_e32 v97, v94, v83
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s63, v39, v15, v39
	v_div_fixup_f32 v43, v82, v15, v43
	v_fma_f32 v56, -v84, v86, v56
	v_fmac_f32_e32 v88, v85, v91
	v_fma_f32 v82, -v54, v97, v94
	v_mul_f32_e32 v84, v95, v93
	v_fma_f32 v85, -v92, v96, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v49, -v89, v88, v49
	v_fmac_f32_e32 v97, v82, v83
	v_fma_f32 v82, -v87, v84, v95
	v_fmac_f32_e32 v96, v85, v96
	v_div_scale_f32 v85, s60, v38, v15, v38
	v_div_fmas_f32 v56, v56, v90, v86
	v_fma_f32 v54, -v54, v97, v94
	v_fmac_f32_e32 v84, v82, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v82, v85, v96
	v_div_scale_f32 v86, null, v15, v15, v37
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v42, v56, v15, v42
	v_div_fmas_f32 v49, v49, v91, v88
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v88, v86
	v_div_fmas_f32 v54, v54, v83, v97
	v_fma_f32 v83, -v87, v84, v95
	v_fma_f32 v87, -v92, v82, v85
	v_div_fixup_f32 v41, v49, v15, v41
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v40, v54, v15, v40
	v_div_fmas_f32 v83, v83, v93, v84
	v_fmac_f32_e32 v82, v87, v96
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v56, -v86, v88, 1.0
	v_div_scale_f32 v54, null, v15, v15, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v92, v82, v85
	v_div_fixup_f32 v39, v83, v15, v39
	v_fmac_f32_e32 v88, v56, v88
	v_div_scale_f32 v56, null, v15, v15, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v49, v49, v96, v82
	v_div_scale_f32 v84, vcc_lo, v37, v15, v37
	v_rcp_f32_e32 v82, v54
	v_div_scale_f32 v83, null, v15, v15, v34
	v_mul_f32_e32 v89, v84, v88
	v_div_scale_f32 v90, null, v15, v15, v33
	v_rcp_f32_e32 v85, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v87, v83
	v_fma_f32 v93, -v86, v89, v84
	v_div_fixup_f32 v38, v49, v15, v38
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v49, -v54, v82, 1.0
	v_rcp_f32_e32 v92, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v93, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v49, v82
	v_div_scale_f32 v49, s60, v35, v15, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v86, v89, v84
	v_fma_f32 v91, -v56, v85, 1.0
	v_fma_f32 v94, -v83, v87, 1.0
	v_mul_f32_e32 v95, v49, v82
	v_fma_f32 v96, -v90, v92, 1.0
	v_div_fmas_f32 v84, v84, v88, v89
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_fmac_f32_e32 v85, v91, v85
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v37, v84, v15, v37
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v91, s61, v36, v15, v36
	v_fmac_f32_e32 v87, v94, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v94, s62, v34, v15, v34
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v62, v62, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v54, v95, v49
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s63, v33, v15, v33
	v_mul_f32_e32 v97, v91, v85
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v88, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v98, v94, v87 :: v_dual_fmac_f32 v95, v93, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v105, v37
	v_and_b32_e32 v37, 15, v21
	v_and_b32_e32 v21, 15, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v99, v96, v92
	v_fma_f32 v86, -v56, v97, v91
	v_fma_f32 v93, -v83, v98, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v49, -v54, v95, v49
	v_fma_f32 v54, -v90, v99, v96
	v_fmac_f32_e32 v97, v86, v85
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s60, 0x40e00000
	v_cvt_i32_f32_e32 v89, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v98, v93, v87 :: v_dual_fmac_f32 v99, v54, v92
	v_fma_f32 v56, -v56, v97, v91
	v_div_fmas_f32 v49, v49, v82, v95
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v54, -v83, v98, v94
	v_fma_f32 v82, -v90, v99, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v56, v56, v85, v97
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v54, v54, v87, v98
	s_mov_b32 vcc_lo, s63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v73, v73, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v92, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v93, v51
	v_cvt_i32_f32_e32 v48, v48
	v_and_b32_e32 v51, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 16, v110
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v35, v49, v15, v35
	v_div_fixup_f32 v36, v56, v15, v36
	v_div_fixup_f32 v34, v54, v15, v34
	v_div_fixup_f32 v15, v82, v15, v33
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v81
	v_rndne_f32_e32 v54, v79
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v23
	v_cvt_i32_f32_e32 v84, v73
	v_cvt_i32_f32_e32 v103, v39
	v_and_b32_e32 v23, 15, v18
	v_and_b32_e32 v73, 15, v31
	v_and_b32_e32 v39, 15, v59
	v_and_b32_e32 v59, 15, v32
	v_and_b32_e32 v18, 15, v48
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v31, 13, v110
	v_lshlrev_b32_e32 v32, 8, v0
	v_and_b32_e32 v48, 64, v110
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v31, 0xe000, v31, v32
	v_xor_b32_e32 v12, v12, v48
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v80
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v82, v49
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v102, v40
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v8, v31, v8, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v106, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v19
	v_cvt_i32_f32_e32 v90, v58
	v_cvt_i32_f32_e32 v94, v50
	v_cvt_i32_f32_e32 v109, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v19, 15, v17
	v_and_b32_e32 v49, 15, v24
	v_and_b32_e32 v16, 15, v82
	v_and_b32_e32 v50, 15, v72
	v_and_b32_e32 v58, 15, v70
	v_and_b32_e32 v70, 15, v67
	v_and_b32_e32 v17, 15, v64
	v_and_b32_e32 v67, 15, v52
	v_and_b32_e32 v52, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v12, 0, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v33
	v_cvt_i32_f32_e32 v86, v66
	v_cvt_i32_f32_e32 v87, v65
	v_cvt_i32_f32_e32 v107, v36
	v_cvt_i32_f32_e32 v108, v34
	v_and_b32_e32 v33, 15, v20
	v_and_b32_e32 v65, 15, v29
	v_and_b32_e32 v34, 15, v76
	v_and_b32_e32 v66, 15, v68
	v_and_b32_e32 v35, 15, v60
	v_and_b32_e32 v36, 15, v44
	v_and_b32_e32 v68, 15, v106
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v38, v38
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v12, v[15:18]
	ds_store_b128 v12, v[33:36] offset:256
	ds_store_b128 v12, v[49:52] offset:2048
	ds_store_b128 v12, v[65:68] offset:2304
	v_lshlrev_b32_e32 v12, 6, v110
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v41, v41
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_med3_f32 v25, v25, s60, 0x40e00000
	v_med3_f32 v26, v26, s60, 0x40e00000
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v17, 2, v0
	v_and_or_b32 v10, 0x300, v12, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v80, v27
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v85, v69
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v92, v53
	v_cvt_i32_f32_e32 v96, v47
	v_cvt_i32_f32_e32 v97, v46
	v_cvt_i32_f32_e32 v104, v38
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v7, v7, v10, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v95, v28
	v_cvt_i32_f32_e32 v99, v43
	v_cvt_i32_f32_e32 v100, v42
	v_cvt_i32_f32_e32 v83, v77
	v_cvt_i32_f32_e32 v98, v45
	v_cvt_i32_f32_e32 v91, v57
	v_cvt_i32_f32_e32 v101, v41
	v_and_b32_e32 v41, 15, v22
	v_and_b32_e32 v53, 15, v25
	v_and_b32_e32 v57, 15, v26
	v_and_b32_e32 v61, 15, v80
	v_and_b32_e32 v20, 15, v54
	v_and_b32_e32 v24, 15, v56
	v_and_b32_e32 v54, 15, v71
	v_and_b32_e32 v62, 15, v85
	v_and_b32_e32 v25, 15, v88
	v_and_b32_e32 v55, 15, v55
	v_and_b32_e32 v63, 15, v92
	v_and_b32_e32 v22, 15, v96
	v_and_b32_e32 v26, 15, v97
	v_and_b32_e32 v56, 15, v103
	v_and_b32_e32 v60, 15, v104
	v_and_b32_e32 v64, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v15, v8, 16, 0
	v_xad_u32 v16, v8, 32, 0
	v_xad_u32 v8, v8, 48, 0
	v_add_nc_u32_e32 v10, 0, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v27, 15, v78
	v_and_b32_e32 v45, 15, v79
	v_and_b32_e32 v69, 15, v30
	v_and_b32_e32 v77, 15, v81
	v_and_b32_e32 v38, 15, v75
	v_and_b32_e32 v42, 15, v74
	v_and_b32_e32 v74, 15, v86
	v_and_b32_e32 v78, 15, v87
	v_and_b32_e32 v43, 15, v90
	v_and_b32_e32 v71, 15, v93
	v_and_b32_e32 v75, 15, v94
	v_and_b32_e32 v79, 15, v95
	v_and_b32_e32 v40, 15, v99
	v_and_b32_e32 v44, 15, v100
	v_and_b32_e32 v72, 15, v107
	v_and_b32_e32 v76, 15, v108
	v_and_b32_e32 v80, 15, v109
	v_and_b32_e32 v28, 15, v83
	v_and_b32_e32 v29, 15, v89
	v_and_b32_e32 v30, 15, v98
	v_and_b32_e32 v46, 15, v84
	v_and_b32_e32 v47, 15, v91
	v_and_b32_e32 v48, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v15, v[19:22]
	ds_store_b128 v15, v[37:40] offset:256
	ds_store_b128 v15, v[53:56] offset:2048
	ds_store_b128 v15, v[69:72] offset:2304
	ds_store_b128 v16, v[23:26]
	ds_store_b128 v16, v[41:44] offset:256
	ds_store_b128 v16, v[57:60] offset:2048
	ds_store_b128 v16, v[73:76] offset:2304
	ds_store_b128 v8, v[27:30]
	ds_store_b128 v8, v[45:48] offset:256
	ds_store_b128 v8, v[61:64] offset:2048
	ds_store_b128 v8, v[77:80] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v8, 0x4020, v7, 0
	ds_load_b128 v[15:18], v10
	ds_load_b128 v[19:22], v10 offset:128
	ds_load_b128 v[23:26], v10 offset:4096
	ds_load_b128 v[27:30], v10 offset:4224
	v_xad_u32 v10, 0x8040, v7, 0
	v_xad_u32 v7, 0xc060, v7, 0
	ds_load_b128 v[33:36], v8
	ds_load_b128 v[37:40], v8 offset:128
	ds_load_b128 v[41:44], v8 offset:4096
	ds_load_b128 v[45:48], v8 offset:4224
	ds_load_b128 v[49:52], v10
	ds_load_b128 v[53:56], v10 offset:128
	ds_load_b128 v[57:60], v10 offset:4096
	ds_load_b128 v[61:64], v10 offset:4224
	ds_load_b128 v[65:68], v7 offset:4096
	ds_load_b128 v[69:72], v7
	ds_load_b128 v[73:76], v7 offset:128
	ds_load_b128 v[77:80], v7 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v7, s60, s66, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s67, 0, s60
	v_add_co_u32 v12, s60, s66, v6
	v_add_co_ci_u32_e64 v13, null, s67, 0, s60
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[72:73], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, s66, v6
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v3, 0x7f, v110
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[64:65], v[7:8]
	v_cmp_le_i64_e64 s63, s[64:65], v[12:13]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s74, 31
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[72:73], v[12:13]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v32, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 42, v4
	v_lshl_or_b32 v3, s75, 7, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v54, v62, 4, v54
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v62, v78, 4, v74
	v_lshl_or_b32 v74, v43, 4, v35
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s74, s65
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 4, v4
	v_add_nc_u32_e32 v35, 44, v4
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v44, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 6, v4
	v_add_nc_u32_e32 v36, 46, v4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[72:73], v[7:8]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v10, v23, 4, v15
	v_lshl_or_b32 v45, v45, 4, v37
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 8, v4
	v_add_nc_u32_e32 v37, 48, v4
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v69, v24, 4, v16
	v_lshl_or_b32 v46, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 10, v4
	v_add_nc_u32_e32 v38, 50, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	v_lshl_or_b32 v61, v77, 4, v73
	v_lshl_or_b32 v73, v42, 4, v34
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v70, v25, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[33:34], null, v33, s72, v[3:4]
	v_add_nc_u32_e32 v17, 12, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v67, 4, v71
	v_lshl_or_b32 v47, v47, 4, v39
	v_lshl_or_b32 v71, v26, 4, v18
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 14, v4
	v_add_nc_u32_e32 v39, 52, v4
	v_mad_u64_u32 v[12:13], null, v12, s72, v[3:4]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v27, 4, v19
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 16, v4
	v_mad_u64_u32 v[13:14], null, v14, s72, v[3:4]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v28, 4, v20
	v_lshl_or_b32 v48, v48, 4, v40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 18, v4
	v_add_nc_u32_e32 v40, 54, v4
	v_mad_u64_u32 v[14:15], null, v15, s72, v[3:4]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v29, 4, v21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v41, 56, v4
	v_mad_u64_u32 v[15:16], null, v16, s72, v[3:4]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[3:4]
	v_add_nc_u32_e32 v21, 20, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v68, 4, v72
	v_lshl_or_b32 v68, v30, 4, v22
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 22, v4
	v_add_nc_u32_e32 v42, 58, v4
	v_mad_u64_u32 v[6:7], null, v4, s72, v[3:4]
	v_mad_u64_u32 v[16:17], null, v17, s72, v[3:4]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[3:4]
	v_mad_u64_u32 v[38:39], null, v39, s72, v[3:4]
	v_add_nc_u32_e32 v23, 24, v4
	v_add_nc_u32_e32 v8, 2, v4
	v_add_nc_u32_e32 v24, 26, v4
	v_add_nc_u32_e32 v43, 60, v4
	v_mad_u64_u32 v[18:19], null, v19, s72, v[3:4]
	v_mad_u64_u32 v[19:20], null, v20, s72, v[3:4]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[3:4]
	v_add_nc_u32_e32 v25, 28, v4
	v_add_nc_u32_e32 v26, 30, v4
	v_mad_u64_u32 v[20:21], null, v21, s72, v[3:4]
	v_mad_u64_u32 v[40:41], null, v41, s72, v[3:4]
	v_mad_u64_u32 v[21:22], null, v22, s72, v[3:4]
	v_mad_u64_u32 v[41:42], null, v42, s72, v[3:4]
	v_add_nc_u32_e32 v27, 32, v4
	v_add_nc_u32_e32 v28, 34, v4
	v_mad_u64_u32 v[22:23], null, v23, s72, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[7:8], null, v8, s72, v[3:4]
	v_mad_u64_u32 v[23:24], null, v24, s72, v[3:4]
	v_mad_u64_u32 v[42:43], null, v43, s72, v[3:4]
	v_add_nc_u32_e32 v29, 36, v4
	v_add_nc_u32_e32 v30, 38, v4
	v_mad_u64_u32 v[24:25], null, v25, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 40, v4
	v_add_nc_u32_e32 v72, 62, v4
	v_mad_u64_u32 v[25:26], null, v26, s72, v[3:4]
	v_mad_u64_u32 v[26:27], null, v27, s72, v[3:4]
	v_mad_u64_u32 v[27:28], null, v28, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	s_mov_b32 s64, s68
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[28:29], null, v29, s72, v[3:4]
	v_mad_u64_u32 v[29:30], null, v30, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v10, v6, s[64:67], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[30:31], null, v31, s72, v[3:4]
	v_mad_u64_u32 v[3:4], null, v72, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v7, s61
	v_cndmask_b32_e32 v7, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v79, 4, v75
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v32, v4, s[64:67], 0 offen
	buffer_store_b8 v49, v6, s[64:67], 0 offen
	buffer_store_b8 v57, v7, s[64:67], 0 offen
	buffer_store_b8 v65, v8, s[64:67], 0 offen
	buffer_store_b8 v45, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v56, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 2, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v53, v4, s[64:67], 0 offen
	buffer_store_b8 v61, v6, s[64:67], 0 offen
	buffer_store_b8 v69, v7, s[64:67], 0 offen
	buffer_store_b8 v73, v8, s[64:67], 0 offen
	buffer_store_b8 v50, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v58, v4, s[64:67], 0 offen
	buffer_store_b8 v66, v6, s[64:67], 0 offen
	buffer_store_b8 v46, v7, s[64:67], 0 offen
	buffer_store_b8 v54, v8, s[64:67], 0 offen
	buffer_store_b8 v62, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v70, v4, s[64:67], 0 offen
	buffer_store_b8 v74, v6, s[64:67], 0 offen
	buffer_store_b8 v51, v7, s[64:67], 0 offen
	buffer_store_b8 v59, v8, s[64:67], 0 offen
	buffer_store_b8 v67, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v47, v4, s[64:67], 0 offen
	buffer_store_b8 v55, v6, s[64:67], 0 offen
	buffer_store_b8 v63, v7, s[64:67], 0 offen
	buffer_store_b8 v71, v8, s[64:67], 0 offen
	buffer_store_b8 v44, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v40, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v41, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s3, s74, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v42, vcc_lo
	s_clause 0x4
	buffer_store_b8 v52, v4, s[64:67], 0 offen
	buffer_store_b8 v60, v6, s[64:67], 0 offen
	buffer_store_b8 v68, v7, s[64:67], 0 offen
	buffer_store_b8 v48, v8, s[64:67], 0 offen
	buffer_store_b8 v56, v10, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v110
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 3, v111
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v64, v3, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v3, 0, v4
	v_add3_u32 v0, v0, v6, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s74, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v3, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v110
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s75, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp94:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 72
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
		.amdhsa_next_free_sgpr 76
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 72
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19612
; TotalNumSgprs: 78
; NumVgprs: 256
; ScratchSize: 72
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 78
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
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 72
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 17
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
