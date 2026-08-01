	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[24:25], s[0:1], 0x5c
	v_dual_mov_b32 v106, v0 :: v_dual_mov_b32 v9, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s74, 0xff
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
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
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
	s_sub_i32 s5, s25, s4
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
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v106
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	v_add_co_u32 v1, s2, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s2
	v_add_nc_u32_e32 v65, s66, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[72:73], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s24, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v107, 15, v106
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v69, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v64, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s66, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s3
	s_clause 0x1
	s_load_b32 s16, s[0:1], 0x58
	s_load_b32 s25, s[0:1], 0x50
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	v_mov_b32_e32 v71, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[72:73], v[0:1]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v0, s66, v107
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s6, s4
	s_addc_u32 s5, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[64:65], v[2:3]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s26, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[2:3]
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v1, 16, v0
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[4:5]
	v_lshrrev_b32_e32 v4, 1, v106
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v97, 0, v107
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v10, 0xf0, v106
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:172
	scratch_store_b32 off, v106, off offset:204
	v_mul_lo_u32 v0, v1, s24
	v_dual_mov_b32 v153, 0 :: v_dual_and_b32 v4, 0x70, v4
	v_dual_mov_b32 v129, 0 :: v_dual_lshlrev_b32 v12, 5, v106
	v_dual_mov_b32 v146, 0 :: v_dual_lshlrev_b32 v13, 1, v106
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v122, v97, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:176
	scratch_store_b32 off, v107, off offset:208
	v_mul_lo_u32 v0, v2, s24
	v_dual_mov_b32 v125, 0 :: v_dual_lshlrev_b32 v4, 2, v10
	v_dual_mov_b32 v123, 0 :: v_dual_and_b32 v12, 32, v12
	v_dual_mov_b32 v144, 0 :: v_dual_and_b32 v13, 28, v13
	v_or_b32_e32 v1, 0x700, v106
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s24
	v_add3_u32 v4, 0, v4, v12
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[64:65], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[72:73], v[6:7]
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	v_or_b32_e32 v2, 0x3f0, v106
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v136, 0, v1
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v106
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v1, s75, 8, v106
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s4, s4, s7
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s7, s16, s74
	v_or_b32_e32 v3, 0x7f0, v106
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v135, 0, v0
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v0, v4, v13
	v_or_b32_e32 v5, 0xb00, v106
	v_or_b32_e32 v6, 0xf00, v106
	v_or_b32_e32 v7, 0x1300, v106
	v_or_b32_e32 v8, 0x1700, v106
	v_or_b32_e32 v9, 0x1b00, v106
	v_or_b32_e32 v11, 0x1f00, v106
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v0, 0, v10
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, s7, s26, v[1:2]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v81, 6, v106
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v133, 0, v106
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v137, 0, v2
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v138, 0, v3
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v139, 0, v5
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v141, 0, v6
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v143, 0, v7
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v145, 0, v8
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v147, 0, v9
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v149, 0, v11
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v0, v1
	v_mov_b32_e32 v46, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 s1, s1, s5
	s_and_b32 s3, s3, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s24, s26
	.loc	1 1135 13                       ; ragged.py:1135:13
	s_mov_b32 s6, 0
	s_and_b32 s17, s13, 0xffff
	s_mov_b32 s16, s12
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	scratch_store_b64 off, v[0:1], off offset:196 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v21, off offset:168
	scratch_store_b32 off, v22, off offset:164
	scratch_store_b32 off, v23, off offset:160
	scratch_store_b32 off, v24, off offset:156
	scratch_store_b32 off, v25, off offset:152
	scratch_store_b32 off, v26, off offset:148
	scratch_store_b32 off, v27, off offset:144
	scratch_store_b32 off, v28, off offset:140
	scratch_store_b32 off, v29, off offset:136
	scratch_store_b32 off, v30, off offset:132
	scratch_store_b32 off, v31, off offset:128
	scratch_store_b32 off, v32, off offset:124
	scratch_store_b32 off, v33, off offset:120
	scratch_store_b32 off, v34, off offset:116
	scratch_store_b32 off, v35, off offset:112
	scratch_store_b32 off, v36, off offset:108
	scratch_store_b32 off, v37, off offset:104
	scratch_store_b32 off, v38, off offset:100
	scratch_store_b32 off, v39, off offset:96
	scratch_store_b32 off, v40, off offset:92
	scratch_store_b32 off, v41, off offset:88
	scratch_store_b32 off, v42, off offset:84
	scratch_store_b32 off, v43, off offset:80
	scratch_store_b32 off, v78, off offset:76
	scratch_store_b32 off, v77, off offset:72
	scratch_store_b32 off, v76, off offset:68
	scratch_store_b32 off, v75, off offset:64
	scratch_store_b32 off, v44, off offset:60
	scratch_store_b32 off, v74, off offset:56
	scratch_store_b32 off, v73, off offset:52
	scratch_store_b32 off, v72, off offset:48
	scratch_store_b32 off, v69, off offset:44
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v66, off offset:40
	scratch_store_b32 off, v54, off offset:36
	scratch_store_b32 off, v53, off offset:32
	scratch_store_b32 off, v52, off offset:28
	scratch_store_b32 off, v51, off offset:24
	scratch_store_b32 off, v50, off offset:20
	scratch_store_b32 off, v49, off offset:16
	scratch_store_b32 off, v48, off offset:12
	scratch_store_b32 off, v47, off offset:8
	scratch_store_b32 off, v46, off offset:4
	scratch_store_b32 off, v45, off
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v71
	v_mov_b32_e32 v3, v71
	v_dual_mov_b32 v4, v71 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v71
	v_dual_mov_b32 v6, v71 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v71
	v_dual_mov_b32 v8, v71 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v71 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v71
	v_dual_mov_b32 v12, v71 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v71
	v_dual_mov_b32 v14, v71 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v71
	v_dual_mov_b32 v16, v71 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v71
	v_mov_b32_e32 v19, v71
	v_mov_b32_e32 v20, v71
	v_mov_b32_e32 v21, v71
	v_mov_b32_e32 v22, v71
	v_mov_b32_e32 v23, v71
	v_mov_b32_e32 v24, v71
	v_mov_b32_e32 v26, v71
	v_mov_b32_e32 v27, v71
	v_mov_b32_e32 v28, v71
	v_mov_b32_e32 v29, v71
	v_mov_b32_e32 v30, v71
	v_mov_b32_e32 v31, v71
	v_mov_b32_e32 v32, v71
	v_mov_b32_e32 v34, v71
	v_mov_b32_e32 v35, v71
	v_mov_b32_e32 v36, v71
	v_mov_b32_e32 v37, v71
	v_mov_b32_e32 v38, v71
	v_mov_b32_e32 v39, v71
	v_mov_b32_e32 v40, v71
	v_mov_b32_e32 v42, v71
	v_mov_b32_e32 v43, v71
	v_mov_b32_e32 v44, v71
	v_mov_b32_e32 v45, v71
	v_mov_b32_e32 v46, v71
	v_mov_b32_e32 v47, v71
	v_mov_b32_e32 v48, v71
	v_mov_b32_e32 v50, v71
	v_mov_b32_e32 v51, v71
	v_mov_b32_e32 v52, v71
	v_mov_b32_e32 v53, v71
	v_mov_b32_e32 v54, v71
	v_mov_b32_e32 v55, v71
	v_mov_b32_e32 v56, v71
	v_mov_b32_e32 v58, v71
	v_mov_b32_e32 v59, v71
	v_mov_b32_e32 v60, v71
	v_mov_b32_e32 v61, v71
	v_mov_b32_e32 v62, v71
	v_mov_b32_e32 v63, v71
	v_mov_b32_e32 v64, v71
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s7, s6, 6
	s_mov_b32 s14, -1
	s_mov_b32 s15, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	s_or_b32 s15, s15, s7
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s14
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s15, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 1
	v_or_b32_e32 v0, s15, v81
	s_mov_b32 s14, 0
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v75, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 2
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v77, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 3
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v78, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 4
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v76, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 5
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v80, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 6
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v82, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 7
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v83, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 8
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v79, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 9
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v85, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 10
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v86, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 11
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v87, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 12
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v84, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 13
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v91, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 14
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v93, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 15
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v95, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 16
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v89, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 17
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v98, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 18
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v99, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 19
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v100, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 20
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v96, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 21
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v101, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 22
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v103, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 23
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v104, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 24
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v102, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 25
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v105, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 26
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v107, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 27
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v108, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 28
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v106, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 29
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v109, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 30
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v111, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s26, s15, 31
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v114, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v113, v68, s[8:11], 0 offen
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v0, s25, v[65:66]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v66, 4, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v66, s15, v66
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v0, 0x80000000, v68, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42 is_stmt 0             ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v66, s25, v[65:66]
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v66, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 8, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s25, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v70, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 12, v81
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s25, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v72, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 16, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s25, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v73, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 20, v81
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s25, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v74, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 24, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s25, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v88, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 28, v81
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	s_mov_b32 s15, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s25, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	s_clause 0x7
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	buffer_load_u8 v66, v66, s[20:23], 0 offen
	buffer_load_u8 v69, v70, s[20:23], 0 offen
	buffer_load_u8 v70, v73, s[20:23], 0 offen
	buffer_load_u8 v73, v74, s[20:23], 0 offen
	buffer_load_u8 v74, v88, s[20:23], 0 offen
	buffer_load_u8 v68, v68, s[20:23], 0 offen
	buffer_load_u8 v72, v72, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v133, v0
	s_waitcnt vmcnt(6)
	ds_store_b8 v133, v66 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v133, v69 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v133, v70 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v133, v73 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v135, v72
	ds_store_b8 v133, v74 offset:1536
	ds_store_b8 v136, v68
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31 is_stmt 1             ; ragged.py:1161:31
	ds_load_u8 v0, v97 offset:320
	ds_load_u8 v66, v97 offset:256
	ds_load_u8 v110, v97 offset:336
	ds_load_u8 v112, v97 offset:272
	ds_load_u8 v250, v97 offset:352
	ds_load_u8 v251, v97 offset:288
	ds_load_u8 v244, v97 offset:368
	ds_load_u8 v245, v97 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v66, v66, v0, 0xc0c0004
	ds_load_u8 v68, v97 offset:448
	ds_load_u8 v69, v97 offset:384
	ds_load_u8 v115, v97 offset:464
	ds_load_u8 v116, v97 offset:400
	ds_load_u8 v70, v97 offset:480
	ds_load_u8 v0, v97 offset:416
	ds_load_u8 v248, v97 offset:496
	ds_load_u8 v249, v97 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v97 offset:64
	ds_load_u8 v72, v97
	ds_load_u8 v117, v97 offset:80
	ds_load_u8 v94, v97 offset:96
	ds_load_u8 v253, v97 offset:112
	ds_load_u8 v118, v97 offset:16
	ds_load_u8 v151, v97 offset:32
	ds_load_u8 v255, v97 offset:48
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v0, v0, v70, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v72, v72, v69, 0xc0c0004
	ds_load_u8 v69, v97 offset:192
	ds_load_u8 v88, v97 offset:128
	ds_load_u8 v119, v97 offset:208
	ds_load_u8 v120, v97 offset:144
	ds_load_u8 v73, v97 offset:224
	ds_load_u8 v74, v97 offset:160
	ds_load_u8 v92, v97 offset:240
	ds_load_u8 v150, v97 offset:176
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v70, v151, v94, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v88, v88, v69, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v66
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v68, v88, 16, v72
	ds_load_u8 v246, v97 offset:960
	ds_load_u8 v247, v97 offset:896
	ds_load_u8 v212, v97 offset:1024
	ds_load_u8 v220, v97 offset:976
	ds_load_u8 v222, v97 offset:912
	ds_load_u8 v215, v97 offset:992
	ds_load_u8 v217, v97 offset:928
	ds_load_u8 v213, v97 offset:944
	ds_load_u8 v252, v97 offset:832
	ds_load_u8 v254, v97 offset:768
	ds_load_u8 v227, v97 offset:848
	ds_load_u8 v229, v97 offset:784
	ds_load_u8 v224, v97 offset:864
	ds_load_u8 v225, v97 offset:800
	ds_load_u8 v218, v97 offset:880
	ds_load_u8 v219, v97 offset:816
	ds_load_u8 v88, v97 offset:704
	ds_load_u8 v90, v97 offset:640
	ds_load_u8 v233, v97 offset:720
	ds_load_u8 v234, v97 offset:656
	ds_load_u8 v230, v97 offset:736
	ds_load_u8 v231, v97 offset:672
	ds_load_u8 v226, v97 offset:752
	ds_load_u8 v228, v97 offset:688
	ds_load_u8 v66, v97 offset:576
	ds_load_u8 v72, v97 offset:512
	ds_load_u8 v241, v97 offset:592
	ds_load_u8 v242, v97 offset:528
	ds_load_u8 v237, v97 offset:608
	ds_load_u8 v239, v97 offset:544
	ds_load_u8 v235, v97 offset:624
	ds_load_u8 v236, v97 offset:560
	ds_load_u8 v214, v97 offset:1216
	ds_load_u8 v216, v97 offset:1280
	ds_load_u8 v186, v97 offset:1232
	ds_load_u8 v187, v97 offset:1168
	ds_load_u8 v183, v97 offset:1248
	ds_load_u8 v184, v97 offset:1184
	ds_load_u8 v181, v97 offset:1264
	ds_load_u8 v182, v97 offset:1200
	ds_load_u8 v221, v97 offset:1152
	ds_load_u8 v223, v97 offset:1088
	ds_load_u8 v194, v97 offset:1104
	ds_load_u8 v195, v97 offset:1040
	ds_load_u8 v190, v97 offset:1120
	ds_load_u8 v192, v97 offset:1056
	ds_load_u8 v188, v97 offset:1136
	ds_load_u8 v189, v97 offset:1072
	ds_load_u8 v232, v97 offset:1472
	ds_load_u8 v180, v97 offset:1536
	ds_load_u8 v202, v97 offset:1488
	ds_load_u8 v203, v97 offset:1424
	ds_load_u8 v199, v97 offset:1504
	ds_load_u8 v200, v97 offset:1440
	ds_load_u8 v196, v97 offset:1520
	ds_load_u8 v197, v97 offset:1456
	ds_load_u8 v238, v97 offset:1408
	ds_load_u8 v240, v97 offset:1344
	ds_load_u8 v210, v97 offset:1360
	ds_load_u8 v211, v97 offset:1296
	ds_load_u8 v208, v97 offset:1376
	ds_load_u8 v209, v97 offset:1312
	ds_load_u8 v204, v97 offset:1392
	ds_load_u8 v206, v97 offset:1328
	ds_load_u8 v185, v97 offset:1984
	ds_load_u8 v160, v97 offset:2000
	ds_load_u8 v162, v97 offset:1936
	ds_load_u8 v158, v97 offset:2016
	ds_load_u8 v159, v97 offset:1952
	ds_load_u8 v243, v137
	ds_load_u8 v156, v138
	ds_load_u8 v157, v97 offset:1968
	ds_load_u8 v191, v97 offset:1920
	ds_load_u8 v193, v97 offset:1856
	ds_load_u8 v167, v97 offset:1872
	ds_load_u8 v169, v97 offset:1808
	ds_load_u8 v164, v97 offset:1888
	ds_load_u8 v165, v97 offset:1824
	ds_load_u8 v161, v97 offset:1904
	ds_load_u8 v163, v97 offset:1840
	ds_load_u8 v198, v97 offset:1728
	ds_load_u8 v201, v97 offset:1792
	ds_load_u8 v172, v97 offset:1744
	ds_load_u8 v173, v97 offset:1680
	ds_load_u8 v170, v97 offset:1760
	ds_load_u8 v171, v97 offset:1696
	ds_load_u8 v166, v97 offset:1776
	ds_load_u8 v168, v97 offset:1712
	ds_load_u8 v205, v97 offset:1664
	ds_load_u8 v207, v97 offset:1600
	ds_load_u8 v178, v97 offset:1616
	ds_load_u8 v179, v97 offset:1552
	ds_load_u8 v176, v97 offset:1632
	ds_load_u8 v177, v97 offset:1568
	ds_load_u8 v174, v97 offset:1648
	ds_load_u8 v175, v97 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v133, v75
	ds_store_b8 v133, v77 offset:256
	ds_store_b8 v133, v78 offset:512
	ds_store_b8 v133, v80 offset:1024
	ds_store_b8 v133, v82 offset:1280
	ds_store_b8 v133, v83 offset:1536
	ds_store_b8 v133, v85 offset:2048
	ds_store_b8 v133, v86 offset:2304
	ds_store_b8 v133, v87 offset:2560
	ds_store_b8 v133, v91 offset:3072
	ds_store_b8 v133, v93 offset:3328
	ds_store_b8 v133, v95 offset:3584
	ds_store_b8 v133, v98 offset:4096
	ds_store_b8 v133, v99 offset:4352
	ds_store_b8 v133, v100 offset:4608
	ds_store_b8 v133, v101 offset:5120
	ds_store_b8 v133, v103 offset:5376
	ds_store_b8 v133, v104 offset:5632
	ds_store_b8 v133, v105 offset:6144
	ds_store_b8 v133, v107 offset:6400
	ds_store_b8 v133, v108 offset:6656
	ds_store_b8 v133, v109 offset:7168
	ds_store_b8 v133, v111 offset:7424
	ds_store_b8 v133, v114 offset:7680
	ds_store_b8 v135, v76
	ds_store_b8 v136, v79
	ds_store_b8 v139, v84
	ds_store_b8 v141, v89
	ds_store_b8 v143, v96
	ds_store_b8 v145, v102
	ds_store_b8 v147, v106
	ds_store_b8 v149, v113
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v75, v122 offset:1280
	ds_load_u8 v76, v122 offset:1024
	ds_load_u8 v77, v122 offset:1920
	ds_load_u8 v78, v122 offset:1664
	ds_load_u8 v79, v122 offset:1408
	ds_load_u8 v80, v122 offset:1152
	v_lshl_or_b32 v73, v73, 16, v70
	v_perm_b32 v70, v249, v248, 0xc0c0004
	v_perm_b32 v66, v72, v66, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v122 offset:1792
	ds_load_u8 v82, v122 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v77, 16, v79
	v_perm_b32 v79, v112, v110, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v82, v76, 0xc0c0004
	ds_load_u8 v82, v122 offset:256
	ds_load_u8 v83, v122
	ds_load_u8 v84, v122 offset:896
	ds_load_u8 v85, v122 offset:640
	ds_load_u8 v86, v122 offset:384
	ds_load_u8 v87, v122 offset:128
	v_lshl_or_b32 v76, v76, 16, v75
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v122 offset:768
	ds_load_u8 v89, v122 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v80, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v89, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v75, v83, 16, v82
	v_perm_b32 v82, v85, v84, 0xc0c0004
	v_perm_b32 v83, v120, v119, 0xc0c0004
	v_perm_b32 v84, v150, v92, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[68:69], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v77, v82, 16, v80
	v_perm_b32 v80, v116, v115, 0xc0c0004
	v_perm_b32 v82, v118, v117, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[68:69], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v80, v80, 16, v79
	v_lshl_or_b32 v79, v83, 16, v82
	v_perm_b32 v82, v251, v250, 0xc0c0004
	v_perm_b32 v68, v247, v246, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v0, 16, v82
	v_perm_b32 v0, v245, v244, 0xc0c0004
	v_perm_b32 v82, v255, v253, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[77:78], v[79:80], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v70, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v82, v84, 16, v82
	v_perm_b32 v0, v254, v252, 0xc0c0004
	v_perm_b32 v70, v90, v88, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[77:78], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[75:76], v[82:83], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v69, v68, 16, v0
	v_lshl_or_b32 v68, v70, 16, v66
	ds_load_u8 v0, v122 offset:3328
	ds_load_u8 v66, v122 offset:3072
	ds_load_u8 v70, v122 offset:3968
	ds_load_u8 v74, v122 offset:3712
	ds_load_u8 v75, v122 offset:3456
	ds_load_u8 v76, v122 offset:3200
	v_wmma_i32_16x16x16_iu4 v[57:64], v[77:78], v[82:83], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v122 offset:3840
	ds_load_u8 v72, v122 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v72, v66, 0xc0c0004
	ds_load_u8 v72, v122 offset:2304
	ds_load_u8 v73, v122 offset:2048
	ds_load_u8 v77, v122 offset:2944
	ds_load_u8 v78, v122 offset:2688
	ds_load_u8 v79, v122 offset:2432
	ds_load_u8 v80, v122 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v122 offset:2816
	ds_load_u8 v82, v122 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v73, 0xc0c0004
	v_lshl_or_b32 v73, v66, 16, v0
	v_perm_b32 v0, v76, v75, 0xc0c0004
	v_perm_b32 v66, v74, v70, 0xc0c0004
	v_perm_b32 v70, v80, v79, 0xc0c0004
	v_perm_b32 v74, v78, v77, 0xc0c0004
	v_perm_b32 v76, v234, v233, 0xc0c0004
	v_perm_b32 v78, v231, v230, 0xc0c0004
	v_lshl_or_b32 v75, v66, 16, v0
	v_perm_b32 v0, v229, v227, 0xc0c0004
	v_lshl_or_b32 v74, v74, 16, v70
	v_perm_b32 v66, v222, v220, 0xc0c0004
	v_perm_b32 v70, v242, v241, 0xc0c0004
	v_lshl_or_b32 v72, v82, 16, v72
	v_perm_b32 v80, v213, v243, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[74:75], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v66, 16, v0
	v_lshl_or_b32 v76, v76, 16, v70
	v_perm_b32 v0, v225, v224, 0xc0c0004
	v_perm_b32 v66, v217, v215, 0xc0c0004
	v_perm_b32 v70, v239, v237, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[72:73], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v68, v212, v223, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[72:73], v[76:77], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v79, v66, 16, v0
	v_lshl_or_b32 v78, v78, 16, v70
	v_perm_b32 v0, v236, v235, 0xc0c0004
	v_perm_b32 v66, v228, v226, 0xc0c0004
	v_perm_b32 v70, v219, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[74:75], v[76:77], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[74:75], v[78:79], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[72:73], v[78:79], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v66, 16, v0
	v_lshl_or_b32 v83, v80, 16, v70
	v_perm_b32 v0, v216, v240, 0xc0c0004
	v_perm_b32 v66, v238, v232, 0xc0c0004
	v_perm_b32 v70, v221, v214, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[74:75], v[82:83], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[72:73], v[82:83], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v66, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v68, v70, 16, v68
	ds_load_u8 v0, v122 offset:5376
	ds_load_u8 v66, v122 offset:5120
	ds_load_u8 v70, v122 offset:6016
	ds_load_u8 v74, v122 offset:5760
	ds_load_u8 v75, v122 offset:5504
	ds_load_u8 v76, v122 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v122 offset:5888
	ds_load_u8 v72, v122 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v72, v66, 0xc0c0004
	ds_load_u8 v72, v122 offset:4352
	ds_load_u8 v73, v122 offset:4096
	ds_load_u8 v77, v122 offset:4992
	ds_load_u8 v78, v122 offset:4736
	ds_load_u8 v79, v122 offset:4480
	ds_load_u8 v80, v122 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v122 offset:4864
	ds_load_u8 v82, v122 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v73, 0xc0c0004
	v_lshl_or_b32 v73, v66, 16, v0
	v_perm_b32 v0, v76, v75, 0xc0c0004
	v_perm_b32 v66, v74, v70, 0xc0c0004
	v_perm_b32 v70, v80, v79, 0xc0c0004
	v_perm_b32 v74, v78, v77, 0xc0c0004
	v_perm_b32 v76, v187, v186, 0xc0c0004
	v_perm_b32 v78, v184, v183, 0xc0c0004
	v_lshl_or_b32 v75, v66, 16, v0
	v_perm_b32 v0, v211, v210, 0xc0c0004
	v_lshl_or_b32 v74, v74, 16, v70
	v_perm_b32 v66, v203, v202, 0xc0c0004
	v_perm_b32 v70, v195, v194, 0xc0c0004
	v_lshl_or_b32 v72, v82, 16, v72
	v_perm_b32 v80, v182, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[74:75], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v66, 16, v0
	v_lshl_or_b32 v76, v76, 16, v70
	v_perm_b32 v0, v209, v208, 0xc0c0004
	v_perm_b32 v66, v200, v199, 0xc0c0004
	v_perm_b32 v70, v192, v190, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[72:73], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v68, v180, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[72:73], v[76:77], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v79, v66, 16, v0
	v_lshl_or_b32 v78, v78, 16, v70
	v_perm_b32 v0, v206, v204, 0xc0c0004
	v_perm_b32 v66, v197, v196, 0xc0c0004
	v_perm_b32 v70, v189, v188, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[74:75], v[76:77], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[74:75], v[78:79], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[72:73], v[78:79], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v66, 16, v0
	v_lshl_or_b32 v82, v80, 16, v70
	v_perm_b32 v0, v201, v193, 0xc0c0004
	v_perm_b32 v66, v191, v185, 0xc0c0004
	v_perm_b32 v70, v205, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[74:75], v[82:83], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[72:73], v[82:83], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v66, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v68, v70, 16, v68
	ds_load_u8 v0, v122 offset:7424
	ds_load_u8 v66, v122 offset:7168
	ds_load_u8 v70, v122 offset:8064
	ds_load_u8 v74, v122 offset:7808
	ds_load_u8 v75, v122 offset:7552
	ds_load_u8 v76, v122 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v122 offset:7936
	ds_load_u8 v72, v122 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v72, v66, 0xc0c0004
	ds_load_u8 v72, v122 offset:6400
	ds_load_u8 v73, v122 offset:6144
	ds_load_u8 v77, v122 offset:7040
	ds_load_u8 v78, v122 offset:6784
	ds_load_u8 v79, v122 offset:6528
	ds_load_u8 v80, v122 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v122 offset:6912
	ds_load_u8 v82, v122 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v73, 0xc0c0004
	v_lshl_or_b32 v73, v66, 16, v0
	v_perm_b32 v0, v76, v75, 0xc0c0004
	v_perm_b32 v66, v74, v70, 0xc0c0004
	v_perm_b32 v70, v80, v79, 0xc0c0004
	v_perm_b32 v74, v78, v77, 0xc0c0004
	v_perm_b32 v76, v173, v172, 0xc0c0004
	v_perm_b32 v78, v171, v170, 0xc0c0004
	v_lshl_or_b32 v75, v66, 16, v0
	v_perm_b32 v0, v169, v167, 0xc0c0004
	v_lshl_or_b32 v74, v74, 16, v70
	v_perm_b32 v66, v162, v160, 0xc0c0004
	v_perm_b32 v70, v179, v178, 0xc0c0004
	v_perm_b32 v80, v157, v156, 0xc0c0004
	v_lshl_or_b32 v72, v82, 16, v72
	v_wmma_i32_16x16x16_iu4 v[9:16], v[74:75], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v66, 16, v0
	v_lshl_or_b32 v76, v76, 16, v70
	v_perm_b32 v0, v165, v164, 0xc0c0004
	v_perm_b32 v66, v159, v158, 0xc0c0004
	v_perm_b32 v70, v177, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[72:73], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[72:73], v[76:77], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[74:75], v[76:77], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v79, v66, 16, v0
	v_lshl_or_b32 v78, v78, 16, v70
	v_perm_b32 v0, v175, v174, 0xc0c0004
	v_perm_b32 v66, v168, v166, 0xc0c0004
	v_perm_b32 v70, v163, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[72:73], v[78:79], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[74:75], v[78:79], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v66, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v80, 16, v70
	v_wmma_i32_16x16x16_iu4 v[49:56], v[72:73], v[82:83], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[74:75], v[82:83], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x4                            ; 24-byte Folded Reload
	scratch_load_b32 v0, off, off offset:172
	scratch_load_b32 v66, off, off offset:176
	scratch_load_b32 v68, off, off offset:180
	scratch_load_b32 v69, off, off offset:184
	scratch_load_b64 v[72:73], off, off offset:196
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s7, s6, s5
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s14, s18
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s7, s7, s74
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s15, s19
	.loc	1 1201 27                       ; ragged.py:1201:27
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v73, v2
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v84, v12
	v_cvt_f32_i32_e32 v74, v3
	v_cvt_f32_i32_e32 v75, v4
	v_cvt_f32_i32_e32 v76, v5
	v_cvt_f32_i32_e32 v77, v6
	v_cvt_f32_i32_e32 v78, v7
	v_cvt_f32_i32_e32 v79, v8
	v_cvt_f32_i32_e32 v80, v9
	v_cvt_f32_i32_e32 v82, v10
	v_cvt_f32_i32_e32 v83, v11
	v_cvt_f32_i32_e32 v85, v13
	v_cvt_f32_i32_e32 v86, v14
	v_cvt_f32_i32_e32 v87, v15
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v0, s6, v0, 1
	v_add_lshl_u32 v66, s6, v66, 1
	v_add_lshl_u32 v68, s6, v68, 1
	v_add_lshl_u32 v69, s6, v69, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v70, v72, s7, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	v_cndmask_b32_e64 v69, 0x80000000, v69, s4
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v70, v70, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v0, v0, s[16:19], 0 offen
	buffer_load_u16 v66, v66, s[16:19], 0 offen
	buffer_load_u16 v68, v68, s[16:19], 0 offen
	buffer_load_u16 v69, v69, s[16:19], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v72, v1
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s6, s24
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v1, 16, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v33, v33, v68 :: v_dual_lshlrev_b32 v66, 16, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v17, v17, v66 :: v_dual_lshlrev_b32 v70, 16, v0
	.loc	1 1216 21                       ; ragged.py:1216:21
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v72, v72, v70 :: v_dual_lshlrev_b32 v69, 16, v69
	v_dual_mul_f32 v73, v73, v70 :: v_dual_mul_f32 v34, v34, v68
	v_dual_mul_f32 v79, v79, v70 :: v_dual_mul_f32 v40, v40, v68
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v21, v21, v66 :: v_dual_mul_f32 v50, v50, v69
	v_dual_mul_f32 v76, v76, v70 :: v_dual_mul_f32 v37, v37, v68
	v_dual_mul_f32 v22, v22, v66 :: v_dual_mul_f32 v55, v55, v69
	v_dual_mul_f32 v23, v23, v66 :: v_dual_mul_f32 v52, v52, v69
	v_dual_mul_f32 v77, v77, v70 :: v_dual_mul_f32 v38, v38, v68
	v_dual_mul_f32 v82, v82, v70 :: v_dual_mul_f32 v43, v43, v68
	v_dual_mul_f32 v24, v24, v66 :: v_dual_mul_f32 v57, v57, v69
	v_dual_mul_f32 v25, v25, v66 :: v_dual_mul_f32 v54, v54, v69
	v_dual_mul_f32 v80, v80, v70 :: v_dual_mul_f32 v41, v41, v68
	v_dual_mul_f32 v26, v26, v66 :: v_dual_mul_f32 v59, v59, v69
	v_dual_mul_f32 v27, v27, v66 :: v_dual_mul_f32 v56, v56, v69
	v_dual_mul_f32 v83, v83, v70 :: v_dual_mul_f32 v42, v42, v68
	v_dual_mul_f32 v28, v28, v66 :: v_dual_mul_f32 v61, v61, v69
	v_dual_mul_f32 v29, v29, v66 :: v_dual_mul_f32 v58, v58, v69
	v_dual_mul_f32 v85, v85, v70 :: v_dual_mul_f32 v44, v44, v68
	v_dual_mul_f32 v30, v30, v66 :: v_dual_mul_f32 v63, v63, v69
	v_dual_mul_f32 v31, v31, v66 :: v_dual_mul_f32 v60, v60, v69
	v_dual_mul_f32 v87, v87, v70 :: v_dual_mul_f32 v46, v46, v68
	v_dual_mul_f32 v86, v86, v70 :: v_dual_mul_f32 v47, v47, v68
	v_dual_mul_f32 v19, v19, v66 :: v_dual_mul_f32 v48, v48, v68
	v_dual_mul_f32 v74, v74, v70 :: v_dual_mul_f32 v35, v35, v68
	v_dual_mul_f32 v20, v20, v66 :: v_dual_mul_f32 v53, v53, v69
	v_dual_mul_f32 v75, v75, v70 :: v_dual_mul_f32 v36, v36, v68
	v_dual_mul_f32 v18, v18, v66 :: v_dual_mul_f32 v51, v51, v69
	v_dual_mul_f32 v78, v78, v70 :: v_dual_mul_f32 v39, v39, v68
	v_dual_mul_f32 v84, v84, v70 :: v_dual_mul_f32 v45, v45, v68
	v_dual_mul_f32 v16, v16, v70 :: v_dual_mul_f32 v49, v49, v69
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v12, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	ds_load_b128 v[8:11], v12 offset:512
	ds_load_b128 v[12:15], v12 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v32, v66
	v_mul_f32_e32 v62, v62, v69
	v_mul_f32_e32 v64, v64, v69
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:44
	scratch_load_b32 v66, off, off offset:40
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v155, v72, v0 :: v_dual_fmac_f32 v142, v79, v7
	v_fmac_f32_e32 v121, v21, v4
	scratch_load_b32 v21, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v148, v76, v4 :: v_dual_fmac_f32 v129, v86, v13
	v_dual_fmac_f32 v144, v78, v6 :: v_dual_fmac_f32 v123, v20, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v78, off, off offset:76
	scratch_load_b32 v76, off, off offset:68
	v_dual_fmac_f32 v154, v73, v1 :: v_dual_fmac_f32 v131, v84, v11
	v_dual_fmac_f32 v153, v74, v2 :: v_dual_fmac_f32 v152, v75, v3
	v_fmac_f32_e32 v125, v18, v1
	v_dual_fmac_f32 v146, v77, v5 :: v_dual_fmac_f32 v127, v16, v15
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v77, off, off offset:72
	scratch_load_b32 v75, off, off offset:64
	scratch_load_b32 v74, off, off offset:56
	scratch_load_b32 v72, off, off offset:48
	scratch_load_b32 v73, off, off offset:52
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v69, v53, v4 :: v_dual_fmac_f32 v66, v54, v5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:32
	scratch_load_b32 v54, off, off offset:36
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v21, v22, v5
	scratch_load_b32 v22, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v77, v46, v13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v75, v48, v15 :: v_dual_fmac_f32 v74, v50, v1
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v72, v52, v3 :: v_dual_fmac_f32 v73, v51, v2
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v52, off, off offset:28
	scratch_load_b32 v50, off, off offset:20
	scratch_load_b32 v51, off, off offset:24
	scratch_load_b32 v48, off, off offset:12
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v53, v55, v6
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v54, v59, v10
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v22, v23, v6
	scratch_load_b32 v23, off, off offset:160 ; 4-byte Folded Reload
	v_fmac_f32_e32 v134, v82, v9
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v52, v56, v7
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v51, v60, v11
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v23, v24, v7
	scratch_load_b32 v24, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v24, v25, v8
	scratch_load_b32 v25, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v140, v80, v8 :: v_dual_fmac_f32 v25, v26, v9
	scratch_load_b32 v26, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v27, v10
	scratch_load_b32 v27, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v132, v83, v10 :: v_dual_fmac_f32 v27, v28, v11
	scratch_load_b32 v28, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v28, v29, v12
	scratch_load_b32 v29, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v130, v85, v12 :: v_dual_fmac_f32 v29, v30, v13
	scratch_load_b32 v30, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v30, v31, v14
	scratch_load_b32 v31, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v128, v87, v14 :: v_dual_fmac_f32 v31, v32, v15
	scratch_load_b32 v32, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v32, v33, v0
	scratch_load_b32 v33, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v126, v17, v0 :: v_dual_fmac_f32 v33, v34, v1
	scratch_load_b32 v34, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v34, v35, v2
	scratch_load_b32 v35, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v124, v19, v2 :: v_dual_fmac_f32 v35, v36, v3
	scratch_load_b32 v36, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v36, v37, v4
	scratch_load_b32 v37, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v37, v38, v5
	scratch_load_b32 v38, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v38, v39, v6
	scratch_load_b32 v39, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v39, v40, v7
	scratch_load_b32 v40, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v40, v41, v8
	scratch_load_b32 v41, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v41, v42, v9
	scratch_load_b32 v42, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v42, v43, v10
	scratch_load_b32 v43, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v43, v44, v11
	scratch_load_b32 v44, off, off offset:60 ; 4-byte Folded Reload
	v_fmac_f32_e32 v76, v47, v14
	scratch_load_b32 v47, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v44, v49, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:16
	scratch_load_b32 v46, off, off offset:4
	v_fmac_f32_e32 v78, v45, v12
	scratch_load_b32 v45, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v50, v57, v8 :: v_dual_fmac_f32 v47, v58, v9
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v48, v61, v12 :: v_dual_fmac_f32 v49, v62, v13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v46, v63, v14 :: v_dual_fmac_f32 v45, v64, v15
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %._crit_edge.loopexit
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v106, off, off offset:204
	scratch_load_b32 v107, off, off offset:208
	.loc	1 1234 19 is_stmt 1             ; ragged.py:1234:19
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v37, v37, v37
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v35, v35, v35
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v39, v39, v39
	v_dual_max_f32 v40, v40, v40 :: v_dual_max_f32 v43, v43, v43
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v35, 0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v41, v41, v41
	v_dual_max_f32 v63, 0, v39 :: v_dual_max_f32 v40, 0, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v81, 0, v42
	v_dual_max_f32 v39, v78, v78 :: v_dual_max_f32 v42, v76, v76
	v_dual_max_f32 v70, 0, v41 :: v_dual_max_f32 v83, 0, v43
	v_dual_max_f32 v41, v77, v77 :: v_dual_max_f32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v43, v75, v75 :: v_dual_max_f32 v86, 0, v42
	v_dual_max_f32 v84, 0, v39 :: v_dual_max_f32 v85, 0, v41
	v_dual_max_f32 v39, v74, v74 :: v_dual_max_f32 v42, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v87, 0, v43 :: v_dual_max_f32 v88, 0, v44
	v_dual_max_f32 v41, v73, v73 :: v_dual_max_f32 v44, v66, v66
	v_max_f32_e32 v43, v69, v69
	v_max_f32_e32 v91, 0, v42
	v_max_f32_e32 v42, v50, v50
	v_dual_max_f32 v0, v155, v155 :: v_dual_max_f32 v1, v154, v154
	v_dual_max_f32 v4, v148, v148 :: v_dual_max_f32 v5, v146, v146
	v_dual_max_f32 v6, v144, v144 :: v_dual_max_f32 v7, v142, v142
	v_max_f32_e32 v8, v140, v140
	v_dual_max_f32 v14, v128, v128 :: v_dual_max_f32 v15, v127, v127
	v_dual_max_f32 v16, v126, v126 :: v_dual_max_f32 v17, v125, v125
	v_max_f32_e32 v18, v124, v124
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v25, v25, v25
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v27, v27, v27
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v89, 0, v39
	v_max_f32_e32 v90, 0, v41
	v_dual_max_f32 v92, 0, v43 :: v_dual_max_f32 v93, 0, v44
	v_dual_max_f32 v44, v54, v54 :: v_dual_max_f32 v39, v53, v53
	v_dual_max_f32 v96, 0, v42 :: v_dual_max_f32 v41, v52, v52
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v43, v47, v47 :: v_dual_max_f32 v98, 0, v44
	v_dual_max_f32 v2, v153, v153 :: v_dual_max_f32 v3, v152, v152
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v11, v131, v131 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v9, v134, v134 :: v_dual_max_f32 v10, v132, v132
	v_dual_max_f32 v13, v129, v129 :: v_dual_max_f32 v12, v130, v130
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v19, v123, v123 :: v_dual_max_f32 v18, 0, v18
	v_max_f32_e32 v21, v21, v21
	v_dual_max_f32 v20, v121, v121 :: v_dual_max_f32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v30, v30, v30
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v32, v32, v32
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v94, 0, v39
	v_dual_max_f32 v97, 0, v43 :: v_dual_max_f32 v42, v49, v49
	v_dual_max_f32 v39, v51, v51 :: v_dual_max_f32 v44, v45, v45
	v_max_f32_e32 v43, v46, v46
	v_max_f32_e32 v95, 0, v41
	v_dual_max_f32 v41, v48, v48 :: v_dual_mul_f32 v82, v1, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v30, 0, v30
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v32, 0, v32
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v34, 0, v34
	v_max_f32_e32 v37, 0, v37
	v_dual_max_f32 v99, 0, v39 :: v_dual_mul_f32 v64, v0, v0
	v_dual_max_f32 v100, 0, v41 :: v_dual_max_f32 v101, 0, v42
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v74, v4, v4
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v102, 0, v43 :: v_dual_max_f32 v103, 0, v44
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v78, v7, v7 :: v_dual_mul_f32 v69, v2, v2
	v_dual_mul_f32 v80, v8, v8 :: v_dual_mul_f32 v71, v3, v3
	v_dual_mul_f32 v76, v10, v10 :: v_dual_mul_f32 v75, v5, v5
	v_dual_mul_f32 v72, v12, v12 :: v_dual_mul_f32 v77, v6, v6
	v_mul_f32_e32 v68, v13, v13
	v_dual_mul_f32 v79, v9, v9 :: v_dual_mul_f32 v66, v15, v15
	v_dual_mul_f32 v73, v11, v11 :: v_dual_mul_f32 v62, v16, v16
	v_dual_mul_f32 v67, v14, v14 :: v_dual_mul_f32 v58, v20, v20
	v_dual_mul_f32 v61, v17, v17 :: v_dual_mul_f32 v60, v18, v18
	v_dual_mul_f32 v59, v19, v19 :: v_dual_mul_f32 v56, v22, v22
	v_dual_mul_f32 v57, v21, v21 :: v_dual_mul_f32 v54, v24, v24
	v_dual_mul_f32 v55, v23, v23 :: v_dual_mul_f32 v52, v26, v26
	v_dual_mul_f32 v53, v25, v25 :: v_dual_mul_f32 v50, v28, v28
	v_dual_mul_f32 v51, v27, v27 :: v_dual_mul_f32 v48, v30, v30
	v_dual_mul_f32 v49, v29, v29 :: v_dual_mul_f32 v46, v32, v32
	v_dual_mul_f32 v47, v31, v31 :: v_dual_mul_f32 v44, v34, v34
	v_dual_mul_f32 v45, v33, v33 :: v_dual_mul_f32 v42, v36, v36
	v_dual_mul_f32 v43, v35, v35 :: v_dual_mul_f32 v36, v70, v70
	v_mul_f32_e32 v41, v37, v37
	v_dual_mul_f32 v39, v38, v38 :: v_dual_mul_f32 v34, v83, v83
	v_dual_mul_f32 v38, v63, v63 :: v_dual_mul_f32 v37, v40, v40
	v_dual_mul_f32 v28, v87, v87 :: v_dual_mul_f32 v35, v81, v81
	v_dual_mul_f32 v32, v84, v84 :: v_dual_mul_f32 v31, v85, v85
	v_dual_mul_f32 v26, v88, v88 :: v_dual_mul_f32 v29, v86, v86
	v_dual_mul_f32 v22, v91, v91 :: v_dual_mul_f32 v25, v89, v89
	v_mul_f32_e32 v24, v90, v90
	v_dual_mul_f32 v20, v92, v92 :: v_dual_mul_f32 v19, v93, v93
	v_dual_mul_f32 v18, v94, v94 :: v_dual_mul_f32 v17, v95, v95
	v_dual_mul_f32 v16, v96, v96 :: v_dual_mul_f32 v15, v97, v97
	v_dual_mul_f32 v14, v98, v98 :: v_dual_mul_f32 v13, v99, v99
	v_dual_mul_f32 v12, v100, v100 :: v_dual_mul_f32 v11, v101, v101
	v_dual_mul_f32 v10, v102, v102 :: v_dual_mul_f32 v9, v103, v103
	v_mov_b32_e32 v5, v65
.LBB0_9:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v6, 7, v106
	v_and_b32_e32 v8, 0x80, v106
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v40, v26, v26
	v_max3_f32 v27, v77, v78, v80
	v_max_f32_e32 v30, v45, v45
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v6
	v_or_b32_e32 v2, 60, v6
	v_or_b32_e32 v4, 58, v6
	v_or_b32_e32 v21, 50, v6
	s_mov_b32 s26, 0x76543210
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s0
	v_add_co_u32 v2, s0, s66, v2
	v_add_co_u32 v83, s1, s66, v4
	v_add_co_ci_u32_e64 v3, null, s67, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[0:1]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 54, v6
	v_or_b32_e32 v4, 52, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s6
	v_add_co_u32 v2, s6, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s6
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s10, s66, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s10
	v_add_co_u32 v83, s10, s66, v21
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[64:65], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v6
	v_or_b32_e32 v3, 46, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v4, 44, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s14, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s14
	v_add_co_u32 v2, s14, s66, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v21, 42, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s14
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s18, s66, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[64:65], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[72:73], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s18
	v_add_co_u32 v83, s18, s66, v21
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[64:65], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 40, v6
	v_or_b32_e32 v3, 38, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[72:73], v[0:1]
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v61, v61 :: v_dual_max_f32 v21, v62, v62
.Ltmp6:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s22, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s22
	v_add_co_u32 v85, s22, s66, v3
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v82, v82 :: v_dual_max_f32 v3, v64, v64
.Ltmp8:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[72:73], v[0:1]
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v71, v74, v75
	v_max_f32_e32 v33, v46, v46
	v_max_f32_e32 v0, v3, v2
	v_max3_f32 v2, v79, v76, v73
	v_max3_f32 v3, v72, v68, v67
.Ltmp10:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v23, 36, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[64:65], v[83:84]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v0, v69, v1
.Ltmp12:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s67, 0, s22
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v2, v3, v66
	v_max_f32_e32 v2, v21, v4
	v_max3_f32 v3, v59, v58, v57
	v_max3_f32 v4, v53, v52, v51
	v_max3_f32 v21, v50, v49, v48
	v_max3_f32 v0, v0, v27, v1
	v_max3_f32 v1, v56, v55, v54
	v_max3_f32 v2, v2, v60, v3
	v_max3_f32 v27, v36, v35, v34
	v_max3_f32 v3, v4, v21, v47
	v_max_f32_e32 v4, v33, v30
	v_max3_f32 v21, v43, v42, v41
	v_max3_f32 v30, v32, v31, v29
	v_max_f32_e32 v33, v25, v25
	v_max3_f32 v1, v2, v1, v3
	v_max3_f32 v2, v39, v38, v37
	v_max3_f32 v3, v4, v44, v21
	v_max3_f32 v4, v27, v30, v28
	v_max_f32_e32 v21, v40, v33
	v_max3_f32 v27, v22, v20, v19
	v_max3_f32 v30, v15, v14, v13
	v_max3_f32 v33, v12, v11, v10
	v_max3_f32 v2, v3, v2, v4
.Ltmp14:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[72:73], v[83:84]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v21, v24, v27
	v_max3_f32 v3, v18, v17, v16
	v_max3_f32 v21, v30, v33, v9
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v30, v1, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v2, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s27, s66, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v4, v3, v21
	v_dual_max_f32 v23, v30, v30 :: v_dual_max_f32 v30, v33, v33
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v63, 8, v106
	v_lshlrev_b32_e32 v70, 1, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v21, v3, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v23
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v40, v0, s26, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v4, 3, v106
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v30
	v_dual_max_f32 v21, v21, v21 :: v_dual_lshlrev_b32 v30, 4, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v27, v40, v40
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v33, v4, 9, 0
	v_lshlrev_b32_e32 v40, 5, v4
	v_and_b32_e32 v23, 0x60, v106
	v_lshrrev_b32_e32 v81, 3, v8
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v27 :: v_dual_and_b32 v27, 4, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v65, 0x680, v30, v40
	v_xor_b32_e32 v40, v40, v23
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v21
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u32 v33, v27, 2, v33
	v_xor_b32_e32 v65, v65, v23
	v_lshl_add_u32 v87, v27, 6, 0
	s_barrier
.Ltmp28:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s27
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v33, v63, 4, v33
.Ltmp30:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[64:65], v[85:86]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_bfe_i32 v7, v106, 7, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[64:65], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[72:73], v[83:84]
.Ltmp31:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v21, v33, v70, v40
	v_add3_u32 v40, v87, v81, v65
.Ltmp32:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v33, 34, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v7, 0x2010, v7
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v21, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v40
.Ltmp34:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v21, 32, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v87, s26, s66, v33
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v33, 30, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v88, null, s67, 0, s26
	s_delay_alu instid0(VALU_DEP_4)
	v_add_co_u32 v83, s31, s66, v21
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[72:73], v[85:86]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s31
	v_add_co_u32 v85, s31, s66, v33
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v40, 28, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s67, 0, s31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[64:65], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[72:73], v[83:84]
.Ltmp35:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v21, v0
	v_dual_mov_b32 v33, v1 :: v_dual_max_f32 v0, v0, v0
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v70, v3, v3
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v33, v33 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v65, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v21, v21, v21
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp42:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[64:65], v[85:86]
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[72:73], v[85:86]
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v0, v21
	v_max_f32_e32 v3, v3, v3
.Ltmp46:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s36, s66, v40
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[64:65], v[87:88]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v40, v21 :: v_dual_max_f32 v3, v70, v3
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v33, v33, v33
.Ltmp49:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[72:73], v[87:88]
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v70, v3 :: v_dual_max_f32 v33, v1, v33
.Ltmp51:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s36
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp53:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[72:73], v[0:1]
.Ltmp54:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v40, v40
.Ltmp55:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v40, 26, v6
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v21, v0
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s38, s66, v40
	v_add_co_ci_u32_e64 v84, null, s67, 0, s38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v40, v0 :: v_dual_mov_b32 v81, v33
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[64:65], v[83:84]
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v65, v2 :: v_dual_max_f32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v81, v81
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v65, v65 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v81, 6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v40 :: v_dual_max_f32 v1, v33, v1
	v_max_f32_e32 v33, v70, v70
	v_max_f32_e32 v21, v65, v65
.Ltmp66:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v70, 24, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v65, v1
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v2, v2, v21
.Ltmp69:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s39, s66, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v33, v3
.Ltmp71:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s67, 0, s39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v65, v65, v65
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v2
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp74:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[64:65], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[72:73], v[85:86]
.Ltmp75:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v65
	v_max_f32_e32 v40, v33, v33
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v33, 4, v4
	v_lshrrev_b32_e32 v65, 1, v23
	v_lshlrev_b32_e32 v4, 3, v63
	v_add_nc_u32_e32 v63, 0, v8
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v21, v21
	v_max_f32_e32 v3, v3, v40
.Ltmp78:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v8, 3, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v40, v63, v65, v4
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v21 :: v_dual_lshlrev_b32 v21, 5, v27
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v27, 0, v33
.Ltmp82:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v63, 22, v6
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v40, v[0:3]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v4, v27, v21, v4
	s_barrier
.Ltmp84:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v21, 18, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v87, s39, s66, v63
.Ltmp85:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[0:3], v4
.Ltmp86:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 20, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v88, null, s67, 0, s39
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[72:73], v[83:84]
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s44, s66, v4
	v_add_co_ci_u32_e64 v84, null, s67, 0, s44
	v_add_co_u32 v85, s44, s66, v21
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s67, 0, s44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[64:65], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[72:73], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v83, s48, s66, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[64:65], v[85:86]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v0, v0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[72:73], v[85:86]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s48
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 12, v6
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v21, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 14, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[64:65], v[87:88]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[72:73], v[87:88]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v2, v2, v2
	v_div_scale_f32 v27, null, 0x40e00000, 0x40e00000, v21
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s48, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v86, null, s67, 0, s48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v0, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v87, s48, s66, v4
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 10, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v88, null, s67, 0, s48
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[64:65], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[72:73], v[83:84]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v83, s54, s66, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v40, -v27, v0, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 8, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[64:65], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[72:73], v[85:86]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v0, v40, v0
	v_div_scale_f32 v40, vcc_lo, v21, 0x40e00000, v21
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v63, null, 0x40e00000, 0x40e00000, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s54, s66, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v4, v40, v0 :: v_dual_max_f32 v1, v1, v1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s67, 0, s54
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[64:65], v[83:84]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v65, v63
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[72:73], v[83:84]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v70, -v27, v4, v40
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v83, 0x2b8cbccc, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[64:65], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[72:73], v[85:86]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v4, v70, v0
	v_max_f32_e32 v70, 0x2b8cbccc, v3
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v83
	v_fma_f32 v1, -v63, v65, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v27, v4, v40
	v_div_scale_f32 v40, s60, v2, 0x40e00000, v2
	v_rcp_f32_e32 v84, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v1, v65
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v70
	v_div_fmas_f32 v4, v27, v0, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s58, s66, v81
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v27, v40, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v86, v85
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[64:65], v[87:88]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v81, -v3, v84, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[72:73], v[87:88]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v21
	v_fma_f32 v21, -v63, v27, v40
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v87.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v84, v81, v84
	v_div_scale_f32 v81, s61, v83, 0x40e00000, v83
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s67, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v27, v21, v65
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v21.l, v4.h
	v_mov_b16_e32 v21.h, v87.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v88, v81, v84
	v_fma_f32 v89, -v85, v86, 1.0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v0, -v63, v27, v40
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v21
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v21, -v3, v88, v81
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v40, s62, v70, 0x40e00000, v70
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v88, v21, v84
	v_div_fmas_f32 v0, v0, v65, v27
	v_mul_f32_e32 v27, v40, v86
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v21, v4, v1, 0x7fff
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 4, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v0, v0, 0x40e00000, v2
	v_fma_f32 v2, -v3, v88, v81
	v_fma_f32 v3, -v85, v27, v40
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v89, 0xffff0000, v21
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v87.l, v0.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v84, v88
	v_fmac_f32_e32 v27, v3, v86
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v65, null, v89, v89, v64
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s60, s66, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v85, v27, v40
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v65
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v89, v89, v82
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v86, v27
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v27, 1, v87
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v86, vcc_lo, v64, v89, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v83
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v63, v1, 0x40e00000, v70
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v40, -v65, v84, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v70.l, v2.h
	v_mov_b16_e32 v70.h, v87.h
	v_add3_u32 v1, v0, v27, 0x7fff
	v_mov_b16_e32 v87.l, v63.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v40, v84
	v_div_scale_f32 v88, null, v89, v89, v69
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v0, 1, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v87, 1, v87
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v92, null, v89, v89, v71
	v_mul_f32_e32 v70, v86, v84
	v_fma_f32 v81, -v83, v85, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v27, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v91, v88
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v63, v87, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v92
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v65, v70, v86
	v_fmac_f32_e32 v85, v81, v85
	v_div_scale_f32 v93, s60, v82, v89, v82
	v_div_scale_f32 v96, null, v89, v89, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v90, v84
	v_mul_f32_e32 v90, v93, v85
	v_fma_f32 v94, -v88, v91, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v92, v87, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v0, 0xffff0000, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v65, -v65, v70, v86
	v_fma_f32 v86, -v83, v90, v93
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s61, v69, v89, v69
	v_fmac_f32_e32 v87, v95, v87
	v_div_scale_f32 v95, null, v89, v89, v75
	v_div_fmas_f32 v65, v65, v84, v70
	v_fmac_f32_e32 v90, v86, v85
	v_mul_f32_e32 v70, v94, v91
	v_rcp_f32_e32 v84, v96
	v_rcp_f32_e32 v97, v95
	v_div_scale_f32 v86, s62, v71, v89, v71
	v_div_fixup_f32 v64, v65, v89, v64
	v_fma_f32 v65, -v83, v90, v93
	v_fma_f32 v83, -v88, v70, v94
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v93, v86, v87
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	v_xor_b32_e32 v7, v7, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v98, -v96, v84, 1.0
	v_div_fmas_f32 v65, v65, v85, v90
	v_fmac_f32_e32 v70, v83, v91
	v_fma_f32 v90, -v95, v97, 1.0
	v_fma_f32 v83, -v92, v93, v86
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v85, s60, v74, v89, v74
	v_div_fixup_f32 v65, v65, v89, v82
	v_fma_f32 v82, -v88, v70, v94
	v_fmac_f32_e32 v97, v90, v97
	v_div_scale_f32 v90, null, v89, v89, v77
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v93, v83, v87
	v_mul_f32_e32 v83, v85, v84
	v_div_fmas_f32 v70, v82, v91, v70
	v_rcp_f32_e32 v91, v90
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v82, -v92, v93, v86
	v_fma_f32 v86, -v96, v83, v85
	v_div_fixup_f32 v69, v70, v89, v69
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v40, 2, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v87, v93
	v_fmac_f32_e32 v83, v86, v84
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v90, v91, 1.0
	v_div_fixup_f32 v71, v82, v89, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v96, v83, v85
	v_div_scale_f32 v82, s61, v77, v89, v77
	v_fmac_f32_e32 v91, v93, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v70, v70, v84, v83
	v_mul_f32_e32 v84, v82, v91
	v_div_scale_f32 v88, s63, v75, v89, v75
	v_div_scale_f32 v94, null, v89, v89, v78
	v_div_scale_f32 v93, null, v89, v89, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v92, v88, v97
	v_rcp_f32_e32 v86, v94
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v74, v70, v89, v74
	v_div_scale_f32 v98, null, v89, v89, v73
	v_fma_f32 v87, -v95, v92, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v92, v87, v97
	v_fma_f32 v85, -v94, v86, 1.0
	v_div_scale_f32 v87, null, v89, v89, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v95, v92, v88
	v_fmac_f32_e32 v86, v85, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v87
	v_div_scale_f32 v88, s60, v78, v89, v78
	v_div_fmas_f32 v83, v83, v97, v92
	v_fma_f32 v92, -v90, v84, v82
	v_rcp_f32_e32 v97, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v95, v88, v86
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v75, v83, v89, v75
	v_fmac_f32_e32 v84, v92, v91
	v_fma_f32 v96, -v87, v85, 1.0
	v_div_scale_f32 v92, null, v89, v89, v76
	v_fma_f32 v70, -v94, v95, v88
	v_div_scale_f32 v83, s62, v80, v89, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v85, v96, v85
	v_fma_f32 v96, -v93, v97, 1.0
	v_fma_f32 v82, -v90, v84, v82
	v_rcp_f32_e32 v90, v92
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v63, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v95, v70, v86 :: v_dual_mul_f32 v70, v83, v85
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s63, v79, v89, v79
	v_div_fmas_f32 v82, v82, v91, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v94, v95, v88
	v_fma_f32 v88, -v87, v70, v83
	v_mul_f32_e32 v91, v96, v97
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v90, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v81, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v86, v95
	v_fmac_f32_e32 v70, v88, v85
	v_rcp_f32_e32 v86, v98
	v_fma_f32 v88, -v93, v91, v96
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s60, v76, v89, v76
	v_div_fixup_f32 v77, v82, v89, v77
	v_fma_f32 v82, -v87, v70, v83
	v_fmac_f32_e32 v91, v88, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v94, v90
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v78, v84, v89, v78
	v_fma_f32 v84, -v98, v86, 1.0
	v_div_scale_f32 v87, null, v89, v89, v72
	v_div_fmas_f32 v70, v82, v85, v70
	v_fma_f32 v82, -v93, v91, v96
	v_fma_f32 v85, -v92, v83, v94
	v_div_scale_f32 v93, null, v89, v89, v68
	v_fmac_f32_e32 v86, v84, v86
	v_rcp_f32_e32 v84, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v85, v90
	v_rcp_f32_e32 v85, v93
	v_div_scale_f32 v88, s61, v73, v89, v73
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v80, v70, v89, v80
	v_div_fmas_f32 v82, v82, v97, v91
	v_mul_f32_e32 v91, v88, v86
	v_fma_f32 v70, -v92, v83, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v87, v84, 1.0
	v_div_scale_f32 v92, s62, v72, v89, v72
	v_fma_f32 v94, -v93, v85, 1.0
	v_div_fixup_f32 v79, v82, v89, v79
	v_fma_f32 v82, -v98, v91, v88
	v_fmac_f32_e32 v84, v95, v84
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v94, null, v89, v89, v66
	v_div_fmas_f32 v70, v70, v90, v83
	v_dual_fmac_f32 v91, v82, v86 :: v_dual_mul_f32 v82, v92, v84
	v_div_scale_f32 v90, s60, v68, v89, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v97, v94
	v_div_fixup_f32 v76, v70, v89, v76
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v70, -v98, v91, v88
	v_fma_f32 v88, -v87, v82, v92
	v_mul_f32_e32 v96, v90, v85
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v95, null, v89, v89, v67
	v_div_fmas_f32 v70, v70, v86, v91
	v_fmac_f32_e32 v82, v88, v84
	v_fma_f32 v86, -v93, v96, v90
	v_fma_f32 v91, -v94, v97, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v73, v70, v89, v73
	v_fma_f32 v70, -v87, v82, v92
	v_fmac_f32_e32 v96, v86, v85
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v91, null, v0, v0, v62
	v_rcp_f32_e32 v83, v95
	v_div_fmas_f32 v70, v70, v84, v82
	v_fma_f32 v82, -v93, v96, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v90, v91
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v88, s61, v67, v89, v67
	v_div_fmas_f32 v82, v82, v85, v96
	v_div_scale_f32 v87, s63, v66, v89, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v98, -v95, v83, 1.0
	v_div_scale_f32 v93, null, v0, v0, v61
	v_fma_f32 v96, -v91, v90, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v92, v87, v97
	v_div_fixup_f32 v72, v70, v89, v72
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v68, v82, v89, v68
	v_dual_fmac_f32 v90, v96, v90 :: v_dual_fmac_f32 v83, v98, v83
	v_fma_f32 v85, -v94, v92, v87
	v_div_scale_f32 v82, s60, v62, v0, v62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v86, v88, v83
	v_fmac_f32_e32 v92, v85, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v95, v86, v88
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v27.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v84, v83
	v_rcp_f32_e32 v84, v93
	v_fma_f32 v70, -v95, v86, v88
	v_div_scale_f32 v88, null, v0, v0, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v70, v70, v83, v86
	v_fma_f32 v85, -v93, v84, 1.0
	v_fma_f32 v83, -v94, v92, v87
	v_div_scale_f32 v94, null, v0, v0, v59
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v86, v82, v90
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	v_div_fmas_f32 v83, v83, v97, v92
	v_rcp_f32_e32 v97, v94
	v_div_scale_f32 v87, s61, v61, v0, v61
	v_fma_f32 v92, -v91, v86, v82
	v_div_fixup_f32 v67, v70, v89, v67
	v_div_fixup_f32 v66, v83, v89, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v95, v87, v84
	v_div_scale_f32 v83, s62, v60, v0, v60
	v_fma_f32 v96, -v88, v85, 1.0
	v_fmac_f32_e32 v86, v92, v90
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v70, -v93, v95, v87
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v85, v96, v85
	v_fma_f32 v82, -v91, v86, v82
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v92, s63, v59, v0, v59
	v_div_scale_f32 v96, null, v0, v0, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v90, v86
	v_dual_mul_f32 v90, v92, v97 :: v_dual_fmac_f32 v95, v70, v84
	v_mul_f32_e32 v70, v83, v85
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v89, null, v0, v0, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v93, v95, v87
	v_fma_f32 v87, -v88, v70, v83
	v_div_fixup_f32 v62, v82, v0, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v91, v89
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v70, v87, v85
	v_fma_f32 v87, -v94, v90, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v88, v70, v83
	v_fmac_f32_e32 v90, v87, v97
	v_div_fmas_f32 v84, v86, v84, v95
	v_rcp_f32_e32 v86, v96
	v_div_scale_f32 v87, null, v0, v0, v56
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v61, v84, v0, v61
	v_fma_f32 v93, -v89, v91, 1.0
	v_div_fmas_f32 v70, v82, v85, v70
	v_fma_f32 v82, -v94, v90, v92
	v_div_scale_f32 v88, s61, v57, v0, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v96, v86, 1.0
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v92, null, v0, v0, v55
	v_div_fmas_f32 v82, v82, v97, v90
	v_fmac_f32_e32 v86, v84, v86
	v_rcp_f32_e32 v84, v87
	v_div_fixup_f32 v60, v70, v0, v60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v59, v82, v0, v59
	v_mul_f32_e32 v90, v88, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v96, v90, v88
	v_fma_f32 v94, -v87, v84, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v90, v82, v86
	v_dual_fmac_f32 v84, v94, v84 :: v_dual_fmac_f32 v91, v93, v91
	v_div_scale_f32 v93, s60, v58, v0, v58
	v_div_scale_f32 v94, null, v0, v0, v54
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v83, v93, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v89, v83, v93
	v_fmac_f32_e32 v83, v85, v91
	v_rcp_f32_e32 v85, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v89, v83, v93
	v_div_scale_f32 v89, s62, v56, v0, v56
	v_div_fmas_f32 v70, v70, v91, v83
	v_rcp_f32_e32 v83, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v82, v89, v84
	v_fma_f32 v93, -v92, v85, 1.0
	v_div_scale_f32 v91, s60, v55, v0, v55
	v_div_fixup_f32 v58, v70, v0, v58
	v_fma_f32 v70, -v96, v90, v88
	v_fma_f32 v88, -v87, v82, v89
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v97, -v94, v83, 1.0
	v_div_fmas_f32 v70, v70, v86, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v88, v84
	v_div_scale_f32 v88, s61, v54, v0, v54
	v_fmac_f32_e32 v83, v97, v83
	v_fmac_f32_e32 v85, v93, v85
	v_div_scale_f32 v93, null, v0, v0, v53
	v_div_fixup_f32 v57, v70, v0, v57
	v_fma_f32 v70, -v87, v82, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v95, v91, v85
	v_rcp_f32_e32 v96, v93
	v_div_scale_f32 v89, null, v0, v0, v52
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v86, -v92, v95, v91
	v_div_scale_f32 v87, s63, v53, v0, v53
	v_div_fmas_f32 v70, v70, v84, v82
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v95, v86, v85
	v_fma_f32 v90, -v93, v96, 1.0
	v_mul_f32_e32 v86, v88, v83
	v_div_fixup_f32 v56, v70, v0, v56
	v_div_scale_f32 v97, null, v0, v0, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v96, v90, v96
	v_fma_f32 v82, -v92, v95, v91
	v_fma_f32 v84, -v94, v86, v88
	v_rcp_f32_e32 v90, v89
	v_div_scale_f32 v92, null, v0, v0, v51
	v_dual_mul_f32 v91, v87, v96 :: v_dual_fmac_f32 v86, v84, v83
	v_div_fmas_f32 v82, v82, v85, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v84, v92
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v85, -v93, v91, v87
	v_fma_f32 v70, -v94, v86, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v89, v90, 1.0
	v_div_fixup_f32 v55, v82, v0, v55
	v_div_scale_f32 v82, s60, v52, v0, v52
	v_dual_fmac_f32 v91, v85, v96 :: v_dual_fmac_f32 v90, v95, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v92, v84, 1.0
	v_div_scale_f32 v88, null, v0, v0, v50
	v_div_fmas_f32 v70, v70, v83, v86
	v_fma_f32 v83, -v93, v91, v87
	v_mul_f32_e32 v86, v82, v90
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v87, s61, v51, v0, v51
	v_div_fmas_f32 v83, v83, v96, v91
	v_fma_f32 v91, -v89, v86, v82
	v_div_scale_f32 v93, null, v0, v0, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v94, v87, v84
	v_div_fixup_f32 v54, v70, v0, v54
	v_fma_f32 v95, -v88, v85, 1.0
	v_fmac_f32_e32 v86, v91, v90
	v_div_scale_f32 v91, null, v0, v0, v48
	v_div_fixup_f32 v53, v83, v0, v53
	v_fma_f32 v70, -v92, v94, v87
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v83, s62, v50, v0, v50
	v_fma_f32 v82, -v89, v86, v82
	v_rcp_f32_e32 v89, v91
	v_rcp_f32_e32 v96, v93
	v_fmac_f32_e32 v94, v70, v84
	v_mul_f32_e32 v70, v83, v85
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v90, v86
	v_fma_f32 v86, -v92, v94, v87
	v_fma_f32 v87, -v88, v70, v83
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v92, -v91, v89, 1.0
	v_fma_f32 v95, -v93, v96, 1.0
	v_div_fixup_f32 v52, v82, v0, v52
	v_fmac_f32_e32 v70, v87, v85
	v_div_fmas_f32 v84, v86, v84, v94
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s60, v48, v0, v48
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s63, v49, v0, v49
	v_fma_f32 v82, -v88, v70, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v92, v89
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v86, v97
	v_div_fixup_f32 v51, v84, v0, v51
	v_div_fmas_f32 v70, v82, v85, v70
	v_fma_f32 v85, -v91, v83, v92
	v_mul_f32_e32 v90, v95, v96
	v_div_scale_f32 v88, s61, v47, v0, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v50, v70, v0, v50
	v_fmac_f32_e32 v83, v85, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v87, -v93, v90, v95
	v_fma_f32 v84, -v97, v86, 1.0
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v91, v83, v92
	v_fmac_f32_e32 v90, v87, v96
	v_div_scale_f32 v87, null, v81, v81, v46
	v_fmac_f32_e32 v86, v84, v86
	v_div_scale_f32 v91, s62, v46, v81, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v93, v90, v95
	v_div_scale_f32 v93, null, v81, v81, v45
	v_rcp_f32_e32 v84, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v85, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v55, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v87, v84, 1.0
	v_fma_f32 v92, -v93, v85, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v81, v81, v44
	v_fmac_f32_e32 v85, v92, v85
	v_div_fmas_f32 v82, v82, v96, v90
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v92, null, v81, v81, v43
	v_div_fmas_f32 v70, v70, v89, v83
	v_div_scale_f32 v89, s60, v45, v81, v45
	v_mul_f32_e32 v90, v88, v86
	v_div_fixup_f32 v49, v82, v0, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v48, v70, v0, v48
	v_mul_f32_e32 v95, v89, v85
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v82, -v97, v90, v88
	v_rcp_f32_e32 v83, v94
	v_rcp_f32_e32 v96, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v82, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v70, -v97, v90, v88
	v_fma_f32 v97, -v94, v83, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v70, v70, v86, v90
	v_fma_f32 v86, -v93, v95, v89
	v_mul_f32_e32 v82, v91, v84
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v83, v97, v83
	v_div_fixup_f32 v0, v70, v0, v47
	v_fmac_f32_e32 v95, v86, v85
	v_fma_f32 v88, -v87, v82, v91
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_scale_f32 v86, s63, v43, v81, v43
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v88, v84
	v_div_scale_f32 v88, s61, v44, v81, v44
	v_fmac_f32_e32 v96, v90, v96
	v_fma_f32 v47, -v87, v82, v91
	v_div_scale_f32 v87, null, v81, v81, v42
	v_div_scale_f32 v91, null, v81, v81, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v47, v47, v84, v82
	v_fma_f32 v82, -v93, v95, v89
	v_rcp_f32_e32 v89, v87
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v90, v86, v96
	v_div_fixup_f32 v46, v47, v81, v46
	v_div_fmas_f32 v82, v82, v85, v95
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v92, v90, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v45, v82, v81, v45
	v_fma_f32 v93, -v87, v89, 1.0
	v_div_scale_f32 v82, s60, v42, v81, v42
	v_fmac_f32_e32 v90, v85, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v89, v93, v89 :: v_dual_mul_f32 v70, v88, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v94, v70, v88
	v_fmac_f32_e32 v70, v84, v83
	v_rcp_f32_e32 v84, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v94, v70, v88
	v_div_scale_f32 v88, null, v81, v81, v39
	v_div_fmas_f32 v47, v47, v83, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v91, v84, 1.0
	v_mul_f32_e32 v83, v82, v89
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v44, v47, v81, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v88, v85, 1.0
	v_fmac_f32_e32 v85, v94, v85
	v_fma_f32 v70, -v92, v90, v86
	v_div_scale_f32 v86, s61, v41, v81, v41
	v_div_scale_f32 v92, null, v81, v81, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v70, v70, v96, v90
	v_fma_f32 v90, -v87, v83, v82
	v_mul_f32_e32 v93, v86, v84
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v95, v92
	v_div_fixup_f32 v43, v70, v81, v43
	v_fmac_f32_e32 v83, v90, v89
	v_fma_f32 v47, -v91, v93, v86
	v_div_scale_f32 v70, s62, v39, v81, v39
	v_div_scale_f32 v96, null, v81, v81, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v87, v83, v82
	v_fmac_f32_e32 v93, v47, v84
	v_div_scale_f32 v90, null, v81, v81, v37
	v_mul_f32_e32 v47, v70, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v82, v82, v89, v83
	v_fma_f32 v83, -v91, v93, v86
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v94, -v92, v95, 1.0
	v_rcp_f32_e32 v87, v90
	v_fma_f32 v86, -v88, v47, v70
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_div_fixup_f32 v42, v82, v81, v42
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v41, v83, v81, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v90, v87, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v96, v84, 1.0
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s63, v38, v81, v38
	v_fmac_f32_e32 v87, v91, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v83, v84
	v_div_scale_f32 v91, s60, v37, v81, v37
	v_mul_f32_e32 v89, v94, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v47, v86, v85 :: v_dual_mul_f32 v82, v91, v87
	v_fma_f32 v86, -v92, v89, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v88, v47, v70
	v_div_scale_f32 v88, s61, v36, v81, v36
	v_fmac_f32_e32 v89, v86, v95
	v_div_scale_f32 v86, null, v81, v81, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v47, v70, v85, v47
	v_fma_f32 v85, -v90, v82, v91
	v_fma_f32 v70, -v92, v89, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v92, null, v81, v81, v34
	v_fmac_f32_e32 v82, v85, v87
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v39, v47, v81, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v70, v70, v95, v89
	v_mul_f32_e32 v89, v88, v84
	v_fma_f32 v47, -v90, v82, v91
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_scale_f32 v90, s62, v35, v81, v35
	v_div_fixup_f32 v38, v70, v81, v38
	v_fma_f32 v70, -v96, v89, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v83, v93, v83
	v_fma_f32 v91, -v92, v85, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v93, null, v81, v81, v32
	v_fmac_f32_e32 v89, v70, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v70, v90, v83 :: v_dual_fmac_f32 v85, v91, v85
	v_div_scale_f32 v91, null, v81, v81, v31
	v_div_fmas_f32 v47, v47, v87, v82
	v_div_scale_f32 v87, s60, v34, v81, v34
	v_rcp_f32_e32 v95, v91
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v37, v47, v81, v37
	v_fma_f32 v47, -v96, v89, v88
	v_fma_f32 v88, -v86, v70, v90
	v_mul_f32_e32 v94, v87, v85
	v_rcp_f32_e32 v82, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v70, v88, v83
	v_div_fmas_f32 v47, v47, v84, v89
	v_fma_f32 v84, -v92, v94, v87
	v_fma_f32 v89, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v88, s61, v32, v81, v32
	v_div_fixup_f32 v36, v47, v81, v36
	v_fma_f32 v47, -v86, v70, v90
	v_dual_fmac_f32 v94, v84, v85 :: v_dual_fmac_f32 v95, v89, v95
	v_div_scale_f32 v89, null, v81, v81, v29
	v_fma_f32 v96, -v93, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v47, v47, v83, v70
	v_fma_f32 v70, -v92, v94, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v87, v89
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v86, s63, v31, v81, v31
	v_div_fmas_f32 v70, v70, v85, v94
	v_div_scale_f32 v92, null, v81, v81, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v90, v86, v95
	v_div_fixup_f32 v35, v47, v81, v35
	v_fma_f32 v94, -v89, v87, 1.0
	v_mul_f32_e32 v84, v88, v82
	v_div_fixup_f32 v34, v70, v81, v34
	v_fma_f32 v85, -v91, v90, v86
	v_div_scale_f32 v70, s60, v29, v81, v29
	v_fmac_f32_e32 v87, v94, v87
	v_fma_f32 v83, -v93, v84, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v90, v85, v95
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v83, v82
	v_rcp_f32_e32 v83, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v92, v83, 1.0
	v_fmac_f32_e32 v83, v85, v83
	v_fma_f32 v47, -v93, v84, v88
	v_div_scale_f32 v85, null, v63, v63, v26
	v_div_scale_f32 v93, null, v63, v63, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v47, v47, v82, v84
	v_fma_f32 v82, -v91, v90, v86
	v_mul_f32_e32 v84, v70, v87
	v_rcp_f32_e32 v88, v85
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v86, s61, v28, v81, v28
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v89, v84, v70
	v_div_fixup_f32 v32, v47, v81, v32
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v95, null, v63, v63, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v84, v90, v87
	v_fma_f32 v90, -v85, v88, 1.0
	v_div_fixup_f32 v31, v82, v81, v31
	v_rcp_f32_e32 v82, v93
	v_rcp_f32_e32 v97, v95
	v_fma_f32 v70, -v89, v84, v70
	v_fmac_f32_e32 v88, v90, v88
	v_mul_f32_e32 v91, v86, v83
	v_div_scale_f32 v89, null, v63, v63, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v70, v70, v87, v84
	v_div_scale_f32 v87, s60, v25, v63, v25
	v_fma_f32 v47, -v92, v91, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v94, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v90, v89
	v_div_fixup_f32 v29, v70, v81, v29
	v_dual_fmac_f32 v91, v47, v83 :: v_dual_fmac_f32 v82, v94, v82
	v_div_scale_f32 v47, s62, v26, v63, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v92, v91, v86
	v_mul_f32_e32 v96, v87, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v86, v47, v88
	v_fma_f32 v92, -v89, v90, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v84, v83, v91
	v_fma_f32 v84, -v93, v96, v87
	v_fma_f32 v94, -v85, v86, v47
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v28, v83, v81, v28
	v_fmac_f32_e32 v96, v84, v82
	v_fmac_f32_e32 v86, v94, v88
	v_div_scale_f32 v83, null, v63, v63, v20
	v_fma_f32 v81, -v95, v97, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v93, v96, v87
	v_fma_f32 v47, -v85, v86, v47
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v81, v97
	v_div_scale_f32 v81, s61, v22, v63, v22
	v_div_fmas_f32 v47, v47, v88, v86
	v_div_scale_f32 v86, null, v63, v63, v19
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v85, v81, v97
	v_div_fmas_f32 v82, v84, v82, v96
	v_rcp_f32_e32 v88, v86
	v_div_fixup_f32 v26, v47, v63, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v25, v82, v63, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v86, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v88, v82, v88
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s63, v24, v63, v24
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v82, s62, v19, v63, v19
	v_mul_f32_e32 v91, v92, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v89, v91, v92
	v_fmac_f32_e32 v91, v70, v90
	v_rcp_f32_e32 v70, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v84, -v89, v91, v92
	v_fma_f32 v89, -v95, v85, v81
	v_div_fmas_f32 v84, v84, v90, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v83, v70, 1.0
	v_fmac_f32_e32 v85, v89, v97
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v84, v63, v24
	v_fmac_f32_e32 v70, v87, v70
	v_div_scale_f32 v87, s60, v20, v63, v20
	v_div_scale_f32 v84, null, v63, v63, v18
	v_fma_f32 v81, -v95, v85, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v47, v87, v70
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v81, v81, v97, v85
	v_fma_f32 v89, -v83, v47, v87
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v22, v81, v63, v22
	v_fmac_f32_e32 v47, v89, v70
	v_div_scale_f32 v89, null, v63, v63, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v83, v47, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v84, v90, 1.0
	v_rcp_f32_e32 v91, v89
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v47, v81, v70, v47
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v94, s62, v16, v63, v16
	v_fmac_f32_e32 v90, v87, v90
	v_div_scale_f32 v87, null, v63, v63, v15
	v_div_scale_f32 v70, null, v63, v63, v16
	v_div_scale_f32 v81, s60, v18, v63, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v93, v87
	v_div_fixup_f32 v20, v47, v63, v20
	v_fma_f32 v47, -v89, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v47, v91
	v_div_scale_f32 v47, s61, v17, v63, v17
	v_fma_f32 v95, -v87, v93, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v93, v95, v93
	v_mul_f32_e32 v85, v82, v88
	v_div_scale_f32 v95, s63, v15, v63, v15
	v_fma_f32 v83, -v86, v85, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v83, v88
	v_rcp_f32_e32 v83, v70
	v_fma_f32 v82, -v86, v85, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v92, -v70, v83, 1.0
	v_mul_f32_e32 v88, v47, v91
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v19, v82, v63, v19
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, null, v63, v63, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v94, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v96, v92
	v_fma_f32 v82, -v70, v97, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v86, v81, v90 :: v_dual_fmac_f32 v97, v82, v83
	v_fma_f32 v85, -v84, v86, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v70, v97, v94
	v_fmac_f32_e32 v86, v85, v90
	v_fma_f32 v85, -v89, v88, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v84, v86, v81
	v_fmac_f32_e32 v88, v85, v91
	v_mul_f32_e32 v84, v95, v93
	v_fma_f32 v85, -v92, v96, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v81, v90, v86
	v_fma_f32 v47, -v89, v88, v47
	v_div_scale_f32 v86, null, v63, v63, v13
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v82, -v87, v84, v95
	v_div_fmas_f32 v47, v47, v91, v88
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v96, v85, v96
	v_div_scale_f32 v85, s60, v14, v63, v14
	v_div_fixup_f32 v18, v81, v63, v18
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v17, v47, v63, v17
	v_div_fmas_f32 v70, v70, v83, v97
	v_div_scale_f32 v90, null, v63, v63, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v86, v88, 1.0
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v16, v70, v63, v16
	v_div_scale_f32 v70, null, v63, v63, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v81, v88
	v_fmac_f32_e32 v84, v82, v93
	v_mul_f32_e32 v82, v85, v96
	v_div_scale_f32 v81, null, v63, v63, v11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v87, v84, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v92, v82, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v93, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v82, v87, v96
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v15, v83, v63, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v92, v82, v85
	v_rcp_f32_e32 v85, v81
	v_rcp_f32_e32 v92, v90
	v_div_scale_f32 v83, null, v63, v63, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v83
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v81, v85, 1.0
	v_fmac_f32_e32 v85, v91, v85
	v_div_fmas_f32 v47, v47, v96, v82
	v_rcp_f32_e32 v82, v70
	v_div_scale_f32 v84, vcc_lo, v13, v63, v13
	v_div_scale_f32 v91, s61, v11, v63, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v14, v47, v63, v14
	v_fma_f32 v96, -v90, v92, 1.0
	v_fma_f32 v94, -v83, v87, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v97, v91, v85
	v_mul_f32_e32 v89, v84, v88
	v_fma_f32 v47, -v70, v82, 1.0
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s63, v9, v63, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v86, v89, v84
	v_fmac_f32_e32 v82, v47, v82
	v_div_scale_f32 v47, s60, v12, v63, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v99, v96, v92
	v_fmac_f32_e32 v89, v93, v88
	v_fmac_f32_e32 v87, v94, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v95, v47, v82
	v_div_scale_f32 v94, s62, v10, v63, v10
	v_fma_f32 v84, -v86, v89, v84
	v_fma_f32 v86, -v81, v97, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v70, v95, v47
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v88, v89
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v95, v93, v82
	s_mov_b32 s60, 0xc1000000
	v_fmac_f32_e32 v97, v86, v85
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v47, -v70, v95, v47
	v_fma_f32 v70, -v90, v99, v96
	v_fma_f32 v81, -v81, v97, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v47, v82, v95
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v99, v70, v92
	v_div_fmas_f32 v81, v81, v85, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v97, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v12, v47, v63, v12
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v64
	v_rndne_f32_e32 v64, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v90, v99, v96
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v25, v25, s60, 0x40e00000
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v94, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v89, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_and_b32_e32 v17, 15, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v83, v98, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v93, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v91, v36
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v83, v98, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	v_and_b32_e32 v36, 15, v43
	v_and_b32_e32 v43, 15, v89
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v89, 16, v106
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v87, v98
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v11, v81, v63, v11
	v_div_fmas_f32 v82, v82, v92, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v92, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v70, v63, v10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v75
	v_rndne_f32_e32 v75, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v9, v82, v63, v9
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v94, v20
	v_cvt_i32_f32_e32 v98, v16
	v_and_b32_e32 v35, 15, v59
	v_and_b32_e32 v86, 15, v0
	v_and_b32_e32 v59, 15, v37
	v_and_b32_e32 v16, 15, v25
	v_and_b32_e32 v20, 15, v24
	v_and_b32_e32 v37, 15, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v106
	v_and_b32_e32 v22, 0x2f0, v30
	v_lshlrev_b32_e32 v24, 8, v89
	v_and_b32_e32 v25, 64, v106
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v84, v63, v13
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v65
	v_rndne_f32_e32 v65, v71
	v_rndne_f32_e32 v69, v74
	v_rndne_f32_e32 v74, v78
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v26, v26, s60, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v0, 0xe000, v0, v24
	v_xor_b32_e32 v22, v22, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v77
	v_rndne_f32_e32 v77, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_med3_f32 v9, v9, s60, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v80, v54
	v_cvt_i32_f32_e32 v87, v46
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v8, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v83, v50
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v102, v12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_cvt_i32_f32_e32 v79, v57
	v_cvt_i32_f32_e32 v96, v18
	v_cvt_i32_f32_e32 v103, v11
	v_cvt_i32_f32_e32 v104, v10
	v_cvt_i32_f32_e32 v105, v9
	v_and_b32_e32 v9, 15, v47
	v_and_b32_e32 v57, 15, v75
	v_and_b32_e32 v10, 15, v62
	v_and_b32_e32 v18, 15, v60
	v_and_b32_e32 v42, 15, v58
	v_and_b32_e32 v58, 15, v80
	v_and_b32_e32 v11, 15, v87
	v_and_b32_e32 v12, 15, v26
	v_and_b32_e32 v60, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v8, 0, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_cvt_i32_f32_e32 v82, v53
	v_cvt_i32_f32_e32 v90, v41
	v_cvt_i32_f32_e32 v93, v34
	v_cvt_i32_f32_e32 v95, v19
	v_and_b32_e32 v34, 15, v65
	v_and_b32_e32 v41, 15, v69
	v_and_b32_e32 v53, 15, v74
	v_and_b32_e32 v65, 15, v76
	v_and_b32_e32 v69, 15, v73
	v_and_b32_e32 v73, 15, v72
	v_and_b32_e32 v74, 15, v83
	v_and_b32_e32 v19, 15, v44
	v_and_b32_e32 v75, 15, v32
	v_and_b32_e32 v44, 15, v94
	v_and_b32_e32 v76, 15, v102
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v78, v61
	v_cvt_i32_f32_e32 v88, v45
	v_cvt_i32_f32_e32 v99, v15
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v8, v[9:12]
	ds_store_b128 v8, v[41:44] offset:256
	ds_store_b128 v8, v[57:60] offset:2048
	ds_store_b128 v8, v[73:76] offset:2304
	v_lshlrev_b32_e32 v8, 6, v106
	v_lshlrev_b32_e32 v10, 5, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v84, v49
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v31, v31
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_cvt_i32_f32_e32 v100, v14
	v_cvt_i32_f32_e32 v101, v13
	v_and_b32_e32 v13, 15, v63
	v_and_b32_e32 v61, 15, v77
	v_and_b32_e32 v14, 15, v78
	v_and_b32_e32 v62, 15, v82
	v_and_b32_e32 v15, 15, v88
	v_and_b32_e32 v63, 15, v91
	v_and_b32_e32 v64, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v9, v0, 16, 0
	v_xad_u32 v11, v0, 32, 0
	v_lshlrev_b32_e32 v12, 2, v89
	v_and_or_b32 v8, 0x300, v8, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v45, 15, v70
	v_and_b32_e32 v49, 15, v71
	v_and_b32_e32 v77, 15, v68
	v_and_b32_e32 v85, 15, v66
	v_and_b32_e32 v46, 15, v79
	v_and_b32_e32 v50, 15, v56
	v_and_b32_e32 v66, 15, v52
	v_and_b32_e32 v70, 15, v51
	v_and_b32_e32 v78, 15, v84
	v_and_b32_e32 v82, 15, v48
	v_and_b32_e32 v47, 15, v90
	v_and_b32_e32 v51, 15, v39
	v_and_b32_e32 v79, 15, v31
	v_and_b32_e32 v48, 15, v95
	v_and_b32_e32 v52, 15, v96
	v_and_b32_e32 v80, 15, v103
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v9, v[13:16]
	ds_store_b128 v9, v[45:48] offset:256
	ds_store_b128 v9, v[61:64] offset:2048
	ds_store_b128 v9, v[77:80] offset:2304
	ds_store_b128 v11, v[17:20]
	ds_store_b128 v11, v[49:52] offset:256
	v_or3_b32 v19, v7, v8, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v38, v38
	v_and_b32_e32 v81, 15, v67
	v_and_b32_e32 v67, 15, v92
	v_and_b32_e32 v71, 15, v93
	v_and_b32_e32 v68, 15, v100
	v_and_b32_e32 v72, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v0, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v83, 15, v29
	v_and_b32_e32 v87, 15, v28
	v_and_b32_e32 v84, 15, v104
	v_and_b32_e32 v88, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v20, 0, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v54, 15, v55
	v_and_b32_e32 v55, 15, v38
	v_and_b32_e32 v56, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v11, v[65:68] offset:2048
	ds_store_b128 v11, v[81:84] offset:2304
	ds_store_b128 v0, v[34:37]
	ds_store_b128 v0, v[53:56] offset:256
	ds_store_b128 v0, v[69:72] offset:2048
	ds_store_b128 v0, v[85:88] offset:2304
	v_xad_u32 v0, 0x4020, v19, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v20
	ds_load_b128 v[11:14], v20 offset:128
	ds_load_b128 v[15:18], v20 offset:4096
	ds_load_b128 v[22:25], v20 offset:4224
	v_xad_u32 v20, 0x8040, v19, 0
	ds_load_b128 v[28:31], v0
	ds_load_b128 v[32:35], v0 offset:128
	ds_load_b128 v[36:39], v0 offset:4096
	ds_load_b128 v[41:44], v0 offset:4224
	v_xad_u32 v0, 0xc060, v19, 0
	ds_load_b128 v[45:48], v20
	ds_load_b128 v[49:52], v20 offset:128
	ds_load_b128 v[53:56], v20 offset:4096
	ds_load_b128 v[57:60], v20 offset:4224
	ds_load_b128 v[61:64], v0 offset:4096
	ds_load_b128 v[65:68], v0
	ds_load_b128 v[69:72], v0 offset:128
	ds_load_b128 v[73:76], v0 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v19, s60, s66, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v20, null, s67, 0, s60
	v_add_co_u32 v77, s60, s66, v6
	v_add_co_ci_u32_e64 v78, null, s67, 0, s60
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[72:73], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v3, s66, v6
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v0, 0x7f, v106
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[64:65], v[19:20]
	v_cmp_le_i64_e64 s63, s[64:65], v[77:78]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s74, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, 2, v3
	v_lshl_or_b32 v0, s75, 7, v0
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v45, v53, 4, v45
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v53, v61, 4, v65
	v_lshl_or_b32 v65, v16, 4, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s74, s65
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 4, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v62, 4, v66
	v_lshl_or_b32 v66, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 6, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[72:73], v[19:20]
	v_cmp_gt_i64_e64 s64, s[72:73], v[77:78]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v55, 4, v47
	v_lshl_or_b32 v55, v63, 4, v67
	v_lshl_or_b32 v67, v18, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 8, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v61, v22, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 10, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v77, v15, 4, v7
	v_lshl_or_b32 v62, v23, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 12, v3
	v_mad_u64_u32 v[6:7], null, v6, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v78, v36, 4, v28
	v_lshl_or_b32 v63, v24, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 14, v3
	v_add_nc_u32_e32 v28, 38, v3
	v_mad_u64_u32 v[7:8], null, v8, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v58, v74, 4, v70
	v_lshl_or_b32 v70, v38, 4, v30
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v64, 4, v68
	v_lshl_or_b32 v64, v25, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 16, v3
	v_add_nc_u32_e32 v30, 40, v3
	v_mad_u64_u32 v[8:9], null, v9, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v75, 4, v71
	v_lshl_or_b32 v71, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 18, v3
	v_add_nc_u32_e32 v31, 42, v3
	v_mad_u64_u32 v[9:10], null, v10, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v41, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 20, v3
	v_add_nc_u32_e32 v32, 44, v3
	v_mad_u64_u32 v[10:11], null, v11, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v42, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 22, v3
	v_add_nc_u32_e32 v33, 46, v3
	v_mad_u64_u32 v[11:12], null, v12, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v73, 4, v69
	v_lshl_or_b32 v69, v37, 4, v29
	v_lshl_or_b32 v43, v43, 4, v34
	v_lshl_or_b32 v44, v44, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 24, v3
	v_add_nc_u32_e32 v19, 26, v3
	v_add_nc_u32_e32 v20, 28, v3
	v_add_nc_u32_e32 v22, 30, v3
	v_add_nc_u32_e32 v24, 32, v3
	v_add_nc_u32_e32 v25, 34, v3
	v_add_nc_u32_e32 v26, 36, v3
	v_add_nc_u32_e32 v34, 48, v3
	v_add_nc_u32_e32 v35, 50, v3
	v_add_nc_u32_e32 v36, 52, v3
	v_add_nc_u32_e32 v37, 54, v3
	v_add_nc_u32_e32 v38, 56, v3
	v_add_nc_u32_e32 v39, 58, v3
	v_add_nc_u32_e32 v40, 60, v3
	v_add_nc_u32_e32 v68, 62, v3
	v_mad_u64_u32 v[3:4], null, v3, s72, v[0:1]
	v_mad_u64_u32 v[12:13], null, v13, s72, v[0:1]
	v_mad_u64_u32 v[28:29], null, v28, s72, v[0:1]
	v_mad_u64_u32 v[13:14], null, v14, s72, v[0:1]
	v_mad_u64_u32 v[29:30], null, v30, s72, v[0:1]
	v_mad_u64_u32 v[14:15], null, v15, s72, v[0:1]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s72, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s72, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[19:20], null, v20, s72, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[22:23], null, v22, s72, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v20, 0x80000000, v3, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[3:4], null, v68, s72, v[0:1]
	v_mad_u64_u32 v[23:24], null, v24, s72, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[24:25], null, v25, s72, v[0:1]
	v_mad_u64_u32 v[38:39], null, v39, s72, v[0:1]
	v_mad_u64_u32 v[25:26], null, v26, s72, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s61
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s64, s68
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x5
	buffer_store_b8 v77, v20, s[64:67], 0 offen
	buffer_store_b8 v78, v0, s[64:67], 0 offen
	buffer_store_b8 v45, v4, s[64:67], 0 offen
	buffer_store_b8 v53, v6, s[64:67], 0 offen
	buffer_store_b8 v61, v7, s[64:67], 0 offen
	buffer_store_b8 v41, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v60, v76, 4, v72
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v21.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v49, v0, s[64:67], 0 offen
	buffer_store_b8 v57, v4, s[64:67], 0 offen
	buffer_store_b8 v65, v6, s[64:67], 0 offen
	buffer_store_b8 v69, v7, s[64:67], 0 offen
	buffer_store_b8 v46, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v54, v0, s[64:67], 0 offen
	buffer_store_b8 v62, v4, s[64:67], 0 offen
	buffer_store_b8 v42, v6, s[64:67], 0 offen
	buffer_store_b8 v50, v7, s[64:67], 0 offen
	buffer_store_b8 v58, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v66, v0, s[64:67], 0 offen
	buffer_store_b8 v70, v4, s[64:67], 0 offen
	buffer_store_b8 v47, v6, s[64:67], 0 offen
	buffer_store_b8 v55, v7, s[64:67], 0 offen
	buffer_store_b8 v63, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v43, v0, s[64:67], 0 offen
	buffer_store_b8 v51, v4, s[64:67], 0 offen
	buffer_store_b8 v59, v6, s[64:67], 0 offen
	buffer_store_b8 v67, v7, s[64:67], 0 offen
	buffer_store_b8 v71, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s3, s74, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b8 v48, v0, s[64:67], 0 offen
	buffer_store_b8 v56, v4, s[64:67], 0 offen
	buffer_store_b8 v64, v6, s[64:67], 0 offen
	buffer_store_b8 v44, v7, s[64:67], 0 offen
	buffer_store_b8 v52, v8, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v106
	v_lshrrev_b32_e32 v6, 2, v89
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v0, 0x80000000, v3, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 3, v107
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v60, v0, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v3
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s74, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add3_u32 v3, v6, v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v3
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v106
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
.Ltmp87:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 216
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 216
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21208
; TotalNumSgprs: 78
; NumVgprs: 256
; ScratchSize: 216
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
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 216
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 53
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
