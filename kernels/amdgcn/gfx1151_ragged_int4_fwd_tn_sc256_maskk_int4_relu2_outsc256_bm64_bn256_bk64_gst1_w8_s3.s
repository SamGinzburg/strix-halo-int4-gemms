	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[24:25], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v9, 0
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
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v0
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
	s_load_b64 s[68:69], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[70:71], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s24, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s69, 0, s2
	v_add_nc_u32_e32 v65, s68, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[2:3]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s68, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_load_b128 s[64:67], s[0:1], 0x40
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v107, 15, v0
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
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v71, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v64, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s76, s2, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s68, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s6
	s_clause 0x1
	s_load_b32 s7, s[0:1], 0x58
	s_load_b32 s25, s[0:1], 0x50
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[70:71], v[5:6]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[5:6]
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[1:2]
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_load_b32 s20, s[2:3], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[1:2]
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v1, s68, v107
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v96, 0, v107
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v5, 0x70, v5
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v11, 0xf0, v0
	v_dual_mov_b32 v126, 0 :: v_dual_lshlrev_b32 v13, 5, v0
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v3, 32, v1
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v15, s75, 8, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v4, 48, v1
	v_mul_lo_u32 v1, v1, s24
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v121, v96, v5
	v_dual_mov_b32 v122, 0 :: v_dual_lshlrev_b32 v5, 2, v11
	v_dual_mov_b32 v151, 0 :: v_dual_lshlrev_b32 v14, 1, v0
	v_dual_mov_b32 v120, 0 :: v_dual_and_b32 v13, 32, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v147, 0 :: v_dual_and_b32 v14, 28, v14
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[7:8]
	v_add3_u32 v5, 0, v5, v13
	v_mov_b32_e32 v13, v15
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v1, off offset:172 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s24
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[7:8]
	.loc	1 1046 20 is_stmt 0             ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1153 29 is_stmt 1             ; ragged.py:1153:29
	s_mul_i32 s3, s7, s74
	v_or_b32_e32 v2, 0x700, v0
	v_or_b32_e32 v6, 0xb00, v0
	v_or_b32_e32 v7, 0xf00, v0
	v_or_b32_e32 v8, 0x1300, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v3, s24
	v_or_b32_e32 v3, 0x3f0, v0
	v_or_b32_e32 v9, 0x1700, v0
	v_or_b32_e32 v10, 0x1b00, v0
	v_or_b32_e32 v12, 0x1f00, v0
	v_dual_mov_b32 v22, 0 :: v_dual_lshlrev_b32 v11, 1, v11
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, s3, s20, v[15:16]
	scratch_store_b32 off, v1, off offset:180 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v4, s24
	v_or_b32_e32 v4, 0x7f0, v0
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v132, 0, v0
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v135, 0, v2
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v136, 0, v3
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v1, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x300, v0
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v137, 0, v4
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v138, 0, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v134, 0, v1
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v1, v5, v14
	scratch_store_b64 off, v[13:14], off offset:188 ; 8-byte Folded Spill
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v140, 0, v7
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v142, 0, v8
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v144, 0, v9
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v146, 0, v10
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v148, 0, v12
	scratch_store_b32 off, v1, off offset:196 ; 4-byte Folded Spill
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v1, 0, v11
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v46, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v47, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	s_and_b32 s1, s1, s5
	s_and_b32 s2, s2, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s24, s20
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
	scratch_store_b32 off, v1, off offset:200 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v22, off offset:168
	scratch_store_b32 off, v23, off offset:164
	scratch_store_b32 off, v24, off offset:160
	scratch_store_b32 off, v25, off offset:156
	scratch_store_b32 off, v26, off offset:152
	scratch_store_b32 off, v27, off offset:148
	scratch_store_b32 off, v28, off offset:144
	scratch_store_b32 off, v29, off offset:140
	scratch_store_b32 off, v30, off offset:136
	scratch_store_b32 off, v31, off offset:132
	scratch_store_b32 off, v32, off offset:128
	scratch_store_b32 off, v33, off offset:124
	scratch_store_b32 off, v34, off offset:120
	scratch_store_b32 off, v35, off offset:116
	scratch_store_b32 off, v36, off offset:112
	scratch_store_b32 off, v37, off offset:108
	scratch_store_b32 off, v38, off offset:104
	scratch_store_b32 off, v39, off offset:100
	scratch_store_b32 off, v40, off offset:96
	scratch_store_b32 off, v41, off offset:92
	scratch_store_b32 off, v42, off offset:88
	scratch_store_b32 off, v43, off offset:84
	scratch_store_b32 off, v44, off offset:80
	scratch_store_b32 off, v76, off offset:76
	scratch_store_b32 off, v75, off offset:72
	scratch_store_b32 off, v74, off offset:68
	scratch_store_b32 off, v73, off offset:64
	scratch_store_b32 off, v45, off offset:60
	scratch_store_b32 off, v72, off offset:56
	scratch_store_b32 off, v71, off offset:52
	scratch_store_b32 off, v69, off offset:48
	scratch_store_b32 off, v68, off offset:44
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v66, off offset:40
	scratch_store_b32 off, v55, off offset:36
	scratch_store_b32 off, v54, off offset:32
	scratch_store_b32 off, v53, off offset:28
	scratch_store_b32 off, v52, off offset:24
	scratch_store_b32 off, v51, off offset:20
	scratch_store_b32 off, v50, off offset:16
	scratch_store_b32 off, v49, off offset:12
	scratch_store_b32 off, v48, off offset:8
	scratch_store_b32 off, v47, off offset:4
	scratch_store_b32 off, v46, off
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v81
	v_mov_b32_e32 v3, v81
	v_dual_mov_b32 v4, v81 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v81
	v_dual_mov_b32 v6, v81 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v81
	v_dual_mov_b32 v8, v81 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v81 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v81
	v_dual_mov_b32 v12, v81 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v81
	v_dual_mov_b32 v14, v81 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v81
	v_dual_mov_b32 v16, v81 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v81
	v_mov_b32_e32 v19, v81
	v_mov_b32_e32 v20, v81
	v_mov_b32_e32 v21, v81
	v_mov_b32_e32 v22, v81
	v_mov_b32_e32 v23, v81
	v_mov_b32_e32 v24, v81
	v_mov_b32_e32 v26, v81
	v_mov_b32_e32 v27, v81
	v_mov_b32_e32 v28, v81
	v_mov_b32_e32 v29, v81
	v_mov_b32_e32 v30, v81
	v_mov_b32_e32 v31, v81
	v_mov_b32_e32 v32, v81
	v_mov_b32_e32 v34, v81
	v_mov_b32_e32 v35, v81
	v_mov_b32_e32 v36, v81
	v_mov_b32_e32 v37, v81
	v_mov_b32_e32 v38, v81
	v_mov_b32_e32 v39, v81
	v_mov_b32_e32 v40, v81
	v_mov_b32_e32 v42, v81
	v_mov_b32_e32 v43, v81
	v_mov_b32_e32 v44, v81
	v_mov_b32_e32 v45, v81
	v_mov_b32_e32 v46, v81
	v_mov_b32_e32 v47, v81
	v_mov_b32_e32 v48, v81
	v_mov_b32_e32 v50, v81
	v_mov_b32_e32 v51, v81
	v_mov_b32_e32 v52, v81
	v_mov_b32_e32 v53, v81
	v_mov_b32_e32 v54, v81
	v_mov_b32_e32 v55, v81
	v_mov_b32_e32 v56, v81
	v_mov_b32_e32 v58, v81
	v_mov_b32_e32 v59, v81
	v_mov_b32_e32 v60, v81
	v_mov_b32_e32 v61, v81
	v_mov_b32_e32 v62, v81
	v_mov_b32_e32 v63, v81
	v_mov_b32_e32 v64, v81
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s14, s6, 7
	s_mov_b32 s15, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	s_or_b32 s26, s15, s14
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v66, 6, v0
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s26, s74, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s27, s26, 1
	s_or_b32 s28, s26, 2
	s_or_b32 s29, s26, 3
	s_or_b32 s30, s26, 4
	s_or_b32 s31, s26, 5
	s_or_b32 s33, s26, 6
	s_or_b32 s34, s26, 7
	s_or_b32 s35, s26, 8
	s_or_b32 s36, s26, 9
	s_or_b32 s37, s26, 10
	s_or_b32 s38, s26, 11
	s_or_b32 s39, s26, 12
	s_or_b32 s40, s26, 13
	s_or_b32 s41, s26, 14
	s_or_b32 s42, s26, 15
	s_or_b32 s43, s26, 16
	s_or_b32 s44, s26, 17
	s_or_b32 s45, s26, 18
	s_or_b32 s46, s26, 19
	s_or_b32 s47, s26, 20
	s_or_b32 s48, s26, 21
	s_or_b32 s49, s26, 22
	s_or_b32 s50, s26, 23
	s_or_b32 s51, s26, 24
	s_or_b32 s52, s26, 25
	s_or_b32 s53, s26, 26
	s_or_b32 s54, s26, 27
	s_or_b32 s55, s26, 28
	s_or_b32 s56, s26, 29
	s_or_b32 s57, s26, 30
	s_or_b32 s4, s26, 31
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cmp_lt_i32 s26, s7
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v66, s26, v66
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s27, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s28, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[69:70], null, s27, s74, v[67:68]
	v_mad_u64_u32 v[70:71], null, s28, s74, v[67:68]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s29, s7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v155, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s29, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s30, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v156, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s30, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s31, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v157, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s31, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s33, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v158, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s33, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s34, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v159, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s34, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s35, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v160, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s35, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s36, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v161, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s36, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s37, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v162, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s37, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s38, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v163, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s38, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s39, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v164, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s39, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s40, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v165, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s40, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s41, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v166, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s41, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s42, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v167, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s42, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s43, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v168, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s43, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s44, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v169, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s44, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s45, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v170, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s45, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s46, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v171, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s46, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s47, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v172, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s47, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s48, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v173, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s48, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s49, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v174, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s49, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s50, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v175, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s50, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s51, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v176, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s51, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s52, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v177, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s52, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s53, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v178, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s53, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s54, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v179, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s54, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s55, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v180, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s55, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s56, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v181, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s56, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s57, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v182, 0x80000000, v70, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[70:71], null, s57, s74, v[67:68]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cselect_b32 s3, -1, 0
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[71:72], null, s4, s74, v[67:68]
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v66, s25, v[65:66]
	.loc	1 1142 32                       ; ragged.py:1142:32
	s_cmp_lt_i32 s4, s7
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v70, 0x80000000, v70, s3
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v66
	s_cselect_b32 s4, -1, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v71, 0x80000000, v71, s4
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v74, 0x80000000, v72, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v72, 4, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v72
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v72, s25, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v75, 0x80000000, v72, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v72, 8, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v72
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v72, s25, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v76, 0x80000000, v72, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v72, 12, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v72
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v72, s25, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v77, 0x80000000, v72, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v72, 16, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v72
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v72, s25, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v78, 0x80000000, v72, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v72, 20, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v72
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v72, s25, v[65:66]
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v79, 0x80000000, v72, s3
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	v_or_b32_e32 v72, 24, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v72
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v72, s25, v[65:66]
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v66, 28, v66
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v80, 0x80000000, v72, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[72:73], null, v66, s25, v[65:66]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s7, v66
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s3, s76, s3
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v66, 0x80000000, v72, s3
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_clause 0x1e
	buffer_load_u8 v83, v68, s[8:11], 0 offen
	buffer_load_u8 v84, v69, s[8:11], 0 offen
	buffer_load_u8 v85, v155, s[8:11], 0 offen
	buffer_load_u8 v86, v156, s[8:11], 0 offen
	buffer_load_u8 v88, v157, s[8:11], 0 offen
	buffer_load_u8 v90, v158, s[8:11], 0 offen
	buffer_load_u8 v92, v159, s[8:11], 0 offen
	buffer_load_u8 v94, v160, s[8:11], 0 offen
	buffer_load_u8 v95, v161, s[8:11], 0 offen
	buffer_load_u8 v97, v162, s[8:11], 0 offen
	buffer_load_u8 v98, v163, s[8:11], 0 offen
	buffer_load_u8 v99, v164, s[8:11], 0 offen
	buffer_load_u8 v100, v165, s[8:11], 0 offen
	buffer_load_u8 v101, v166, s[8:11], 0 offen
	buffer_load_u8 v102, v167, s[8:11], 0 offen
	buffer_load_u8 v103, v168, s[8:11], 0 offen
	buffer_load_u8 v104, v169, s[8:11], 0 offen
	buffer_load_u8 v105, v170, s[8:11], 0 offen
	buffer_load_u8 v106, v171, s[8:11], 0 offen
	buffer_load_u8 v107, v172, s[8:11], 0 offen
	buffer_load_u8 v108, v173, s[8:11], 0 offen
	buffer_load_u8 v109, v174, s[8:11], 0 offen
	buffer_load_u8 v110, v175, s[8:11], 0 offen
	buffer_load_u8 v111, v176, s[8:11], 0 offen
	buffer_load_u8 v112, v177, s[8:11], 0 offen
	buffer_load_u8 v113, v178, s[8:11], 0 offen
	buffer_load_u8 v114, v179, s[8:11], 0 offen
	buffer_load_u8 v115, v180, s[8:11], 0 offen
	buffer_load_u8 v116, v181, s[8:11], 0 offen
	buffer_load_u8 v117, v182, s[8:11], 0 offen
	buffer_load_u8 v118, v70, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v68, v74, s[20:23], 0 offen
	buffer_load_u8 v69, v75, s[20:23], 0 offen
	buffer_load_u8 v70, v76, s[20:23], 0 offen
	buffer_load_u8 v72, v78, s[20:23], 0 offen
	buffer_load_u8 v73, v79, s[20:23], 0 offen
	buffer_load_u8 v74, v80, s[20:23], 0 offen
	buffer_load_u8 v66, v66, s[20:23], 0 offen
	buffer_load_u8 v75, v77, s[20:23], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v119, v71, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s3, s15, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s15, 0x60
	s_mov_b32 s15, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(8)
	ds_store_b8 v132, v68
	s_waitcnt vmcnt(7)
	ds_store_b8 v132, v69 offset:256
	s_waitcnt vmcnt(6)
	ds_store_b8 v132, v70 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v132, v72 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v132, v73 offset:1280
	s_waitcnt vmcnt(1)
	ds_store_b8 v134, v75
	ds_store_b8 v132, v74 offset:1536
	ds_store_b8 v135, v66
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v68, v96 offset:320
	ds_load_u8 v69, v96 offset:256
	ds_load_u8 v149, v96 offset:336
	ds_load_u8 v66, v96 offset:272
	ds_load_u8 v255, v96 offset:352
	ds_load_u8 v70, v96 offset:288
	ds_load_u8 v249, v96 offset:368
	ds_load_u8 v250, v96 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v96 offset:448
	ds_load_u8 v71, v96 offset:384
	ds_load_u8 v73, v96 offset:464
	ds_load_u8 v75, v96 offset:400
	ds_load_u8 v91, v96 offset:480
	ds_load_u8 v93, v96 offset:416
	ds_load_u8 v253, v96 offset:496
	ds_load_u8 v254, v96 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v66, v66, v149, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v69, v71, v69, 0xc0c0004
	ds_load_u8 v72, v96 offset:64
	ds_load_u8 v76, v96
	ds_load_u8 v78, v96 offset:80
	ds_load_u8 v71, v96 offset:96
	ds_load_u8 v87, v96 offset:112
	ds_load_u8 v79, v96 offset:16
	ds_load_u8 v74, v96 offset:32
	ds_load_u8 v89, v96 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	v_lshl_or_b32 v69, v69, 16, v68
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v155, v76, v72, 0xc0c0004
	ds_load_u8 v156, v96 offset:192
	ds_load_u8 v157, v96 offset:128
	ds_load_u8 v80, v96 offset:208
	ds_load_u8 v82, v96 offset:144
	ds_load_u8 v76, v96 offset:224
	ds_load_u8 v77, v96 offset:160
	ds_load_u8 v150, v96 offset:240
	ds_load_u8 v72, v96 offset:176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v75, v79, v78, 0xc0c0004
	v_lshl_or_b32 v79, v73, 16, v66
	v_perm_b32 v66, v70, v255, 0xc0c0004
	v_perm_b32 v70, v93, v91, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v73, v74, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v71, v70, 16, v66
	v_perm_b32 v66, v250, v249, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v78, v82, v80, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v77, v76, 0xc0c0004
	v_lshl_or_b32 v68, v156, 16, v155
	ds_load_u8 v243, v96 offset:960
	ds_load_u8 v244, v96 offset:896
	ds_load_u8 v211, v96 offset:1024
	ds_load_u8 v220, v96 offset:976
	ds_load_u8 v221, v96 offset:912
	ds_load_u8 v215, v96 offset:992
	ds_load_u8 v216, v96 offset:928
	ds_load_u8 v212, v96 offset:944
	ds_load_u8 v245, v96 offset:832
	ds_load_u8 v246, v96 offset:768
	ds_load_u8 v226, v96 offset:848
	ds_load_u8 v228, v96 offset:784
	ds_load_u8 v223, v96 offset:864
	ds_load_u8 v224, v96 offset:800
	ds_load_u8 v217, v96 offset:880
	ds_load_u8 v218, v96 offset:816
	ds_load_u8 v247, v96 offset:704
	ds_load_u8 v248, v96 offset:640
	ds_load_u8 v232, v96 offset:720
	ds_load_u8 v233, v96 offset:656
	ds_load_u8 v229, v96 offset:736
	ds_load_u8 v231, v96 offset:672
	ds_load_u8 v225, v96 offset:752
	ds_load_u8 v227, v96 offset:688
	ds_load_u8 v251, v96 offset:576
	ds_load_u8 v252, v96 offset:512
	ds_load_u8 v240, v96 offset:592
	ds_load_u8 v241, v96 offset:528
	ds_load_u8 v237, v96 offset:608
	ds_load_u8 v238, v96 offset:544
	ds_load_u8 v234, v96 offset:624
	ds_load_u8 v235, v96 offset:560
	ds_load_u8 v213, v96 offset:1216
	ds_load_u8 v214, v96 offset:1280
	ds_load_u8 v185, v96 offset:1232
	ds_load_u8 v186, v96 offset:1168
	ds_load_u8 v182, v96 offset:1248
	ds_load_u8 v184, v96 offset:1184
	ds_load_u8 v180, v96 offset:1264
	ds_load_u8 v181, v96 offset:1200
	ds_load_u8 v219, v96 offset:1152
	ds_load_u8 v222, v96 offset:1088
	ds_load_u8 v193, v96 offset:1104
	ds_load_u8 v194, v96 offset:1040
	ds_load_u8 v190, v96 offset:1120
	ds_load_u8 v191, v96 offset:1056
	ds_load_u8 v187, v96 offset:1136
	ds_load_u8 v188, v96 offset:1072
	ds_load_u8 v230, v96 offset:1472
	ds_load_u8 v179, v96 offset:1536
	ds_load_u8 v201, v96 offset:1488
	ds_load_u8 v203, v96 offset:1424
	ds_load_u8 v198, v96 offset:1504
	ds_load_u8 v200, v96 offset:1440
	ds_load_u8 v195, v96 offset:1520
	ds_load_u8 v197, v96 offset:1456
	ds_load_u8 v236, v96 offset:1408
	ds_load_u8 v239, v96 offset:1344
	ds_load_u8 v209, v96 offset:1360
	ds_load_u8 v210, v96 offset:1296
	ds_load_u8 v207, v96 offset:1376
	ds_load_u8 v208, v96 offset:1312
	ds_load_u8 v204, v96 offset:1392
	ds_load_u8 v205, v96 offset:1328
	ds_load_u8 v183, v96 offset:1984
	ds_load_u8 v159, v96 offset:2000
	ds_load_u8 v161, v96 offset:1936
	ds_load_u8 v157, v96 offset:2016
	ds_load_u8 v158, v96 offset:1952
	ds_load_u8 v242, v136
	ds_load_u8 v155, v137
	ds_load_u8 v156, v96 offset:1968
	ds_load_u8 v189, v96 offset:1920
	ds_load_u8 v192, v96 offset:1856
	ds_load_u8 v166, v96 offset:1872
	ds_load_u8 v168, v96 offset:1808
	ds_load_u8 v163, v96 offset:1888
	ds_load_u8 v164, v96 offset:1824
	ds_load_u8 v160, v96 offset:1904
	ds_load_u8 v162, v96 offset:1840
	ds_load_u8 v196, v96 offset:1728
	ds_load_u8 v199, v96 offset:1792
	ds_load_u8 v171, v96 offset:1744
	ds_load_u8 v172, v96 offset:1680
	ds_load_u8 v169, v96 offset:1760
	ds_load_u8 v170, v96 offset:1696
	ds_load_u8 v165, v96 offset:1776
	ds_load_u8 v167, v96 offset:1712
	ds_load_u8 v202, v96 offset:1664
	ds_load_u8 v206, v96 offset:1600
	ds_load_u8 v177, v96 offset:1616
	ds_load_u8 v178, v96 offset:1552
	ds_load_u8 v175, v96 offset:1632
	ds_load_u8 v176, v96 offset:1568
	ds_load_u8 v173, v96 offset:1648
	ds_load_u8 v174, v96 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v132, v83
	ds_store_b8 v132, v84 offset:256
	ds_store_b8 v132, v85 offset:512
	ds_store_b8 v132, v88 offset:1024
	ds_store_b8 v132, v90 offset:1280
	ds_store_b8 v132, v92 offset:1536
	ds_store_b8 v132, v95 offset:2048
	ds_store_b8 v132, v97 offset:2304
	ds_store_b8 v132, v98 offset:2560
	ds_store_b8 v132, v100 offset:3072
	ds_store_b8 v132, v101 offset:3328
	ds_store_b8 v132, v102 offset:3584
	ds_store_b8 v132, v104 offset:4096
	ds_store_b8 v132, v105 offset:4352
	ds_store_b8 v132, v106 offset:4608
	ds_store_b8 v132, v108 offset:5120
	ds_store_b8 v132, v109 offset:5376
	ds_store_b8 v132, v110 offset:5632
	ds_store_b8 v132, v112 offset:6144
	ds_store_b8 v132, v113 offset:6400
	ds_store_b8 v132, v114 offset:6656
	ds_store_b8 v132, v116 offset:7168
	ds_store_b8 v132, v117 offset:7424
	ds_store_b8 v132, v118 offset:7680
	ds_store_b8 v134, v86
	ds_store_b8 v135, v94
	ds_store_b8 v138, v99
	ds_store_b8 v140, v103
	ds_store_b8 v142, v107
	ds_store_b8 v144, v111
	ds_store_b8 v146, v115
	s_waitcnt vmcnt(0)
	ds_store_b8 v148, v119
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v83, v121 offset:1280
	ds_load_u8 v84, v121 offset:1024
	ds_load_u8 v85, v121 offset:1920
	ds_load_u8 v86, v121 offset:1664
	ds_load_u8 v88, v121 offset:1408
	ds_load_u8 v90, v121 offset:1152
	v_lshl_or_b32 v70, v74, 16, v73
	v_perm_b32 v73, v254, v253, 0xc0c0004
	v_perm_b32 v74, v89, v87, 0xc0c0004
	v_perm_b32 v72, v72, v150, 0xc0c0004
	v_lshl_or_b32 v78, v78, 16, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v73, v73, 16, v66
	v_perm_b32 v66, v246, v245, 0xc0c0004
	v_lshl_or_b32 v72, v72, 16, v74
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v121 offset:1792
	ds_load_u8 v92, v121 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v88, v90, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v85, 16, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v92, v84, 0xc0c0004
	ds_load_u8 v92, v121 offset:256
	ds_load_u8 v94, v121
	ds_load_u8 v95, v121 offset:896
	ds_load_u8 v97, v121 offset:640
	ds_load_u8 v98, v121 offset:384
	ds_load_u8 v99, v121 offset:128
	v_lshl_or_b32 v84, v84, 16, v83
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v92, v94, v92, 0xc0c0004
	ds_load_u8 v94, v121 offset:768
	ds_load_u8 v100, v121 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v100, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v83, v94, 16, v92
	v_perm_b32 v92, v97, v95, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[68:69], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v85, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[33:40], v[83:84], v[70:71], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[83:84], v[72:73], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[78:79], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[85:86], v[70:71], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v68, v244, v243, 0xc0c0004
	v_perm_b32 v70, v252, v251, 0xc0c0004
	v_perm_b32 v71, v248, v247, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[85:86], v[72:73], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[78:79], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v68, 16, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v68, v71, 16, v70
	ds_load_u8 v66, v121 offset:3328
	ds_load_u8 v70, v121 offset:3072
	ds_load_u8 v72, v121 offset:3968
	ds_load_u8 v73, v121 offset:3712
	ds_load_u8 v74, v121 offset:3456
	ds_load_u8 v75, v121 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v121 offset:3840
	ds_load_u8 v71, v121 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v121 offset:2304
	ds_load_u8 v76, v121 offset:2048
	ds_load_u8 v77, v121 offset:2944
	ds_load_u8 v78, v121 offset:2688
	ds_load_u8 v79, v121 offset:2432
	ds_load_u8 v80, v121 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v76, v71, 0xc0c0004
	ds_load_u8 v71, v121 offset:2816
	ds_load_u8 v82, v121 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v66
	v_perm_b32 v66, v75, v74, 0xc0c0004
	v_perm_b32 v74, v80, v79, 0xc0c0004
	v_perm_b32 v75, v78, v77, 0xc0c0004
	v_lshl_or_b32 v70, v82, 16, v76
	v_perm_b32 v76, v241, v240, 0xc0c0004
	v_lshl_or_b32 v73, v72, 16, v66
	v_perm_b32 v66, v228, v226, 0xc0c0004
	v_lshl_or_b32 v72, v75, 16, v74
	v_perm_b32 v74, v221, v220, 0xc0c0004
	v_perm_b32 v77, v233, v232, 0xc0c0004
	v_perm_b32 v78, v238, v237, 0xc0c0004
	v_perm_b32 v79, v231, v229, 0xc0c0004
	v_perm_b32 v80, v212, v242, 0xc0c0004
	v_lshl_or_b32 v75, v74, 16, v66
	v_lshl_or_b32 v74, v77, 16, v76
	v_perm_b32 v66, v224, v223, 0xc0c0004
	v_perm_b32 v76, v216, v215, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v68, v236, v230, 0xc0c0004
	v_lshl_or_b32 v77, v76, 16, v66
	v_lshl_or_b32 v76, v79, 16, v78
	v_perm_b32 v66, v235, v234, 0xc0c0004
	v_perm_b32 v78, v227, v225, 0xc0c0004
	v_perm_b32 v79, v218, v217, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[76:77], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[76:77], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v78, 16, v66
	v_lshl_or_b32 v79, v80, 16, v79
	v_perm_b32 v66, v214, v239, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[78:79], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v70, v211, v222, 0xc0c0004
	v_perm_b32 v71, v219, v213, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[72:73], v[78:79], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v68, 16, v66
	v_lshl_or_b32 v68, v71, 16, v70
	ds_load_u8 v66, v121 offset:5376
	ds_load_u8 v70, v121 offset:5120
	ds_load_u8 v72, v121 offset:6016
	ds_load_u8 v73, v121 offset:5760
	ds_load_u8 v74, v121 offset:5504
	ds_load_u8 v75, v121 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v121 offset:5888
	ds_load_u8 v71, v121 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v121 offset:4352
	ds_load_u8 v76, v121 offset:4096
	ds_load_u8 v77, v121 offset:4992
	ds_load_u8 v78, v121 offset:4736
	ds_load_u8 v79, v121 offset:4480
	ds_load_u8 v80, v121 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v76, v71, 0xc0c0004
	ds_load_u8 v71, v121 offset:4864
	ds_load_u8 v82, v121 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v66
	v_perm_b32 v66, v75, v74, 0xc0c0004
	v_perm_b32 v74, v80, v79, 0xc0c0004
	v_perm_b32 v75, v78, v77, 0xc0c0004
	v_lshl_or_b32 v70, v82, 16, v76
	v_perm_b32 v76, v194, v193, 0xc0c0004
	v_lshl_or_b32 v73, v72, 16, v66
	v_perm_b32 v66, v210, v209, 0xc0c0004
	v_lshl_or_b32 v72, v75, 16, v74
	v_perm_b32 v74, v203, v201, 0xc0c0004
	v_perm_b32 v77, v186, v185, 0xc0c0004
	v_perm_b32 v78, v191, v190, 0xc0c0004
	v_perm_b32 v79, v184, v182, 0xc0c0004
	v_perm_b32 v80, v188, v187, 0xc0c0004
	v_lshl_or_b32 v75, v74, 16, v66
	v_lshl_or_b32 v74, v77, 16, v76
	v_perm_b32 v66, v208, v207, 0xc0c0004
	v_perm_b32 v76, v200, v198, 0xc0c0004
	v_perm_b32 v82, v181, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v76, 16, v66
	v_lshl_or_b32 v76, v79, 16, v78
	v_perm_b32 v66, v205, v204, 0xc0c0004
	v_perm_b32 v78, v197, v195, 0xc0c0004
	v_perm_b32 v68, v189, v183, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[76:77], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[76:77], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v79, v78, 16, v66
	v_lshl_or_b32 v78, v82, 16, v80
	v_perm_b32 v66, v199, v192, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[78:79], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v70, v179, v206, 0xc0c0004
	v_perm_b32 v71, v202, v196, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[72:73], v[78:79], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v68, 16, v66
	v_lshl_or_b32 v68, v71, 16, v70
	ds_load_u8 v66, v121 offset:7424
	ds_load_u8 v70, v121 offset:7168
	ds_load_u8 v72, v121 offset:8064
	ds_load_u8 v73, v121 offset:7808
	ds_load_u8 v74, v121 offset:7552
	ds_load_u8 v75, v121 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v121 offset:7936
	ds_load_u8 v71, v121 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v121 offset:6400
	ds_load_u8 v76, v121 offset:6144
	ds_load_u8 v77, v121 offset:7040
	ds_load_u8 v78, v121 offset:6784
	ds_load_u8 v79, v121 offset:6528
	ds_load_u8 v80, v121 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v76, v71, 0xc0c0004
	ds_load_u8 v71, v121 offset:6912
	ds_load_u8 v82, v121 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v66
	v_perm_b32 v66, v75, v74, 0xc0c0004
	v_perm_b32 v74, v80, v79, 0xc0c0004
	v_perm_b32 v75, v78, v77, 0xc0c0004
	v_lshl_or_b32 v70, v82, 16, v76
	v_perm_b32 v76, v178, v177, 0xc0c0004
	v_lshl_or_b32 v73, v72, 16, v66
	v_perm_b32 v66, v168, v166, 0xc0c0004
	v_lshl_or_b32 v72, v75, 16, v74
	v_perm_b32 v74, v161, v159, 0xc0c0004
	v_perm_b32 v77, v172, v171, 0xc0c0004
	v_perm_b32 v78, v176, v175, 0xc0c0004
	v_perm_b32 v79, v170, v169, 0xc0c0004
	v_perm_b32 v80, v156, v155, 0xc0c0004
	v_lshl_or_b32 v75, v74, 16, v66
	v_lshl_or_b32 v74, v77, 16, v76
	v_perm_b32 v66, v164, v163, 0xc0c0004
	v_perm_b32 v76, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v76, 16, v66
	v_lshl_or_b32 v76, v79, 16, v78
	v_perm_b32 v66, v174, v173, 0xc0c0004
	v_perm_b32 v78, v167, v165, 0xc0c0004
	v_perm_b32 v79, v162, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[76:77], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[76:77], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v78, 16, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v80, 16, v79
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[78:79], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[72:73], v[78:79], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x4                            ; 24-byte Folded Reload
	scratch_load_b32 v66, off, off offset:172
	scratch_load_b32 v68, off, off offset:176
	scratch_load_b32 v69, off, off offset:180
	scratch_load_b32 v70, off, off offset:184
	scratch_load_b64 v[71:72], off, off offset:188
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s6, s5
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s14, s18
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s74
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s15, s19
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v73, v2
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v72, v1
	v_cvt_f32_i32_e32 v85, v13
	v_cvt_f32_i32_e32 v74, v3
	v_cvt_f32_i32_e32 v75, v4
	v_cvt_f32_i32_e32 v76, v5
	v_cvt_f32_i32_e32 v77, v6
	v_cvt_f32_i32_e32 v78, v7
	v_cvt_f32_i32_e32 v79, v8
	v_cvt_f32_i32_e32 v80, v9
	v_cvt_f32_i32_e32 v82, v10
	v_cvt_f32_i32_e32 v83, v11
	v_cvt_f32_i32_e32 v84, v12
	v_cvt_f32_i32_e32 v86, v14
	v_cvt_f32_i32_e32 v87, v15
	v_cvt_f32_i32_e32 v88, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v66, s6, v66, 1
	v_add_lshl_u32 v68, s6, v68, 1
	v_add_lshl_u32 v69, s6, v69, 1
	v_add_lshl_u32 v70, s6, v70, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v71, v71, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	v_cndmask_b32_e64 v69, 0x80000000, v69, s1
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v71, v71, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v66, v66, s[16:19], 0 offen
	buffer_load_u16 v68, v68, s[16:19], 0 offen
	buffer_load_u16 v69, v69, s[16:19], 0 offen
	buffer_load_u16 v70, v70, s[16:19], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s6, s24
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v1, 16, v71
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v17, v17, v68 :: v_dual_lshlrev_b32 v66, 16, v66
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v13, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v69, 16, v69
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v71, v72, v66
	v_mul_f32_e32 v72, v73, v66
	v_dual_mul_f32 v73, v74, v66 :: v_dual_mul_f32 v20, v20, v68
	v_dual_mul_f32 v74, v75, v66 :: v_dual_mul_f32 v21, v21, v68
	v_dual_mul_f32 v75, v76, v66 :: v_dual_mul_f32 v18, v18, v68
	v_dual_mul_f32 v19, v19, v68 :: v_dual_lshlrev_b32 v70, 16, v70
	v_dual_mul_f32 v76, v77, v66 :: v_dual_mul_f32 v23, v23, v68
	v_dual_mul_f32 v77, v78, v66 :: v_dual_mul_f32 v24, v24, v68
	v_dual_mul_f32 v78, v79, v66 :: v_dual_mul_f32 v25, v25, v68
	v_dual_mul_f32 v79, v80, v66 :: v_dual_mul_f32 v22, v22, v68
	v_dual_mul_f32 v45, v45, v69 :: v_dual_mul_f32 v54, v54, v70
	v_dual_mul_f32 v41, v41, v69 :: v_dual_mul_f32 v50, v50, v70
	v_dual_mul_f32 v47, v47, v69 :: v_dual_mul_f32 v56, v56, v70
	v_dual_mul_f32 v38, v38, v69 :: v_dual_mul_f32 v53, v53, v70
	v_dual_mul_f32 v80, v82, v66 :: v_dual_mul_f32 v27, v27, v68
	v_dual_mul_f32 v82, v83, v66 :: v_dual_mul_f32 v29, v29, v68
	v_dual_mul_f32 v83, v84, v66 :: v_dual_mul_f32 v26, v26, v68
	v_dual_mul_f32 v84, v85, v66 :: v_dual_mul_f32 v31, v31, v68
	v_dual_mul_f32 v85, v86, v66 :: v_dual_mul_f32 v28, v28, v68
	v_dual_mul_f32 v30, v30, v68 :: v_dual_mul_f32 v37, v37, v69
	v_dual_mul_f32 v32, v32, v68 :: v_dual_mul_f32 v39, v39, v69
	v_dual_mul_f32 v34, v34, v69 :: v_dual_mul_f32 v49, v49, v70
	v_dual_mul_f32 v86, v87, v66 :: v_dual_mul_f32 v33, v33, v69
	v_dual_mul_f32 v66, v88, v66 :: v_dual_mul_f32 v35, v35, v69
	v_dual_mul_f32 v36, v36, v69 :: v_dual_mul_f32 v51, v51, v70
	v_dual_mul_f32 v40, v40, v69 :: v_dual_mul_f32 v55, v55, v70
	v_dual_mul_f32 v42, v42, v69 :: v_dual_mul_f32 v57, v57, v70
	v_dual_mul_f32 v43, v43, v69 :: v_dual_mul_f32 v52, v52, v70
	v_dual_mul_f32 v44, v44, v69 :: v_dual_mul_f32 v59, v59, v70
	v_dual_mul_f32 v46, v46, v69 :: v_dual_mul_f32 v61, v61, v70
	v_dual_mul_f32 v48, v48, v69 :: v_dual_mul_f32 v63, v63, v70
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_load_b128 v[1:4], v13
	ds_load_b128 v[5:8], v13 offset:16
	ds_load_b128 v[9:12], v13 offset:512
	ds_load_b128 v[13:16], v13 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v58, v58, v70
	v_mul_f32_e32 v62, v62, v70
	v_mul_f32_e32 v60, v60, v70
	v_mul_f32_e32 v64, v64, v70
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:48
	scratch_load_b32 v68, off, off offset:44
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v125, v17, v1 :: v_dual_fmac_f32 v124, v18, v2
	scratch_load_b32 v17, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v147, v75, v5
	v_fmac_f32_e32 v143, v77, v7
	v_fmac_f32_e32 v151, v74, v4
	v_dual_fmac_f32 v141, v78, v8 :: v_dual_fmac_f32 v152, v73, v3
	v_fmac_f32_e32 v145, v76, v6
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v76, off, off offset:76
	scratch_load_b32 v75, off, off offset:72
	scratch_load_b32 v74, off, off offset:68
	scratch_load_b32 v73, off, off offset:64
	v_dual_fmac_f32 v154, v71, v1 :: v_dual_fmac_f32 v153, v72, v2
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v129, v84, v13 :: v_dual_fmac_f32 v126, v66, v16
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v72, off, off offset:56
	scratch_load_b32 v71, off, off offset:52
	scratch_load_b32 v66, off, off offset:40
	v_dual_fmac_f32 v139, v79, v9 :: v_dual_fmac_f32 v128, v85, v14
	v_dual_fmac_f32 v133, v80, v10 :: v_dual_fmac_f32 v130, v83, v12
	v_dual_fmac_f32 v131, v82, v11 :: v_dual_fmac_f32 v122, v20, v4
	v_dual_fmac_f32 v127, v86, v15 :: v_dual_fmac_f32 v120, v21, v5
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v69, v52, v4 :: v_dual_fmac_f32 v68, v53, v5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:28
	scratch_load_b32 v52, off, off offset:24
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v17, v22, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v123, v19, v3 :: v_dual_mov_b32 v22, v17
	scratch_load_b32 v17, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v76, v45, v13
	scratch_load_b32 v45, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v75, v46, v14 :: v_dual_fmac_f32 v74, v47, v15
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v73, v48, v16
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v48, off, off offset:8
	scratch_load_b32 v47, off, off offset:4
	scratch_load_b32 v46, off, off
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v72, v50, v2 :: v_dual_fmac_f32 v71, v51, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:20
	scratch_load_b32 v50, off, off offset:16
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v53, v57, v9 :: v_dual_fmac_f32 v52, v58, v10
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v17, v23, v7
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v45, v49, v1
	scratch_load_b32 v49, off, off offset:12 ; 4-byte Folded Reload
	v_mov_b32_e32 v23, v17
	scratch_load_b32 v17, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v48, v62, v14 :: v_dual_fmac_f32 v47, v63, v15
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v46, v64, v16 :: v_dual_fmac_f32 v51, v59, v11
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v50, v60, v12 :: v_dual_fmac_f32 v49, v61, v13
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v24, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v24, v17
	scratch_load_b32 v17, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v25, v9
	v_mov_b32_e32 v25, v17
	scratch_load_b32 v17, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v26, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v26, v17
	scratch_load_b32 v17, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v27, v11
	v_mov_b32_e32 v27, v17
	scratch_load_b32 v17, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v28, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v28, v17
	scratch_load_b32 v17, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v29, v13
	v_mov_b32_e32 v29, v17
	scratch_load_b32 v17, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v30, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v30, v17
	scratch_load_b32 v17, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v31, v15
	v_mov_b32_e32 v31, v17
	scratch_load_b32 v17, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v32, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v32, v17
	scratch_load_b32 v17, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v33, v1
	scratch_load_b32 v1, off, off offset:36 ; 4-byte Folded Reload
	v_fmac_f32_e32 v66, v54, v6
	scratch_load_b32 v54, off, off offset:32 ; 4-byte Folded Reload
	v_mov_b32_e32 v33, v17
	scratch_load_b32 v17, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v1, v55, v7 :: v_dual_fmac_f32 v54, v56, v8
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v34, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v34, v17
	scratch_load_b32 v17, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v35, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v35, v17
	scratch_load_b32 v17, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v36, v4
	v_mov_b32_e32 v36, v17
	scratch_load_b32 v17, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v37, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v37, v17
	scratch_load_b32 v17, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v38, v6
	v_mov_b32_e32 v38, v17
	scratch_load_b32 v17, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v39, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v39, v17
	scratch_load_b32 v17, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v40, v8
	v_mov_b32_e32 v40, v17
	scratch_load_b32 v17, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v41, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v41, v17
	scratch_load_b32 v17, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v42, v10
	v_mov_b32_e32 v42, v17
	scratch_load_b32 v17, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v43, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v43, v17
	scratch_load_b32 v17, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v44, v12
	v_mov_b32_e32 v44, v17
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v36, v36, v36
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v38, v38, v38
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v37, 0, v37
	v_dual_max_f32 v41, v41, v41 :: v_dual_max_f32 v44, v44, v44
	v_dual_max_f32 v39, 0, v39 :: v_dual_max_f32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v43, v43, v43 :: v_dual_max_f32 v40, 0, v40
	v_max_f32_e32 v63, 0, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v83, 0, v44 :: v_dual_max_f32 v70, 0, v42
	v_dual_max_f32 v81, 0, v43 :: v_dual_max_f32 v44, v73, v73
	v_dual_max_f32 v42, v75, v75 :: v_dual_max_f32 v43, v74, v74
	v_max_f32_e32 v41, v76, v76
	v_max_f32_e32 v45, v45, v45
	v_dual_max_f32 v1, v154, v154 :: v_dual_max_f32 v2, v153, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v85, 0, v42 :: v_dual_max_f32 v86, 0, v43
	v_dual_max_f32 v84, 0, v41 :: v_dual_max_f32 v41, v72, v72
	v_dual_max_f32 v42, v71, v71 :: v_dual_max_f32 v87, 0, v44
	v_dual_max_f32 v43, v69, v69 :: v_dual_max_f32 v44, v68, v68
	v_dual_max_f32 v88, 0, v45 :: v_dual_max_f32 v45, v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v90, 0, v42
	v_dual_max_f32 v42, v54, v54 :: v_dual_max_f32 v89, 0, v41
	v_max_f32_e32 v92, 0, v44
	v_max_f32_e32 v44, v52, v52
	v_dual_max_f32 v3, v152, v152 :: v_dual_max_f32 v4, v151, v151
	v_dual_max_f32 v5, v147, v147 :: v_dual_max_f32 v6, v145, v145
	v_dual_max_f32 v7, v143, v143 :: v_dual_max_f32 v8, v141, v141
	v_max_f32_e32 v9, v139, v139
	v_dual_max_f32 v15, v127, v127 :: v_dual_max_f32 v16, v126, v126
	v_dual_max_f32 v17, v125, v125 :: v_dual_max_f32 v18, v124, v124
	v_max_f32_e32 v19, v123, v123
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v26, v26, v26
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v28, v28, v28
	v_max_f32_e32 v29, v29, v29
	v_max_f32_e32 v41, v55, v55
	v_max_f32_e32 v91, 0, v43
	v_max_f32_e32 v43, v53, v53
	v_dual_max_f32 v97, 0, v44 :: v_dual_max_f32 v44, v47, v47
	v_max_f32_e32 v93, 0, v45
	v_max_f32_e32 v45, v51, v51
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_max_f32_e32 v10, v133, v133
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v12, v130, v130
	v_dual_max_f32 v11, v131, v131 :: v_dual_max_f32 v14, v128, v128
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v13, v129, v129 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v20, v122, v122 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v21, v120, v120
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v24, v24, v24
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v31, v31, v31
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v30, 0, v30
	v_dual_max_f32 v95, 0, v42 :: v_dual_max_f32 v102, 0, v44
	v_max_f32_e32 v96, 0, v43
	v_max_f32_e32 v42, v49, v49
	v_max_f32_e32 v98, 0, v45
	v_dual_max_f32 v94, 0, v41 :: v_dual_max_f32 v41, v50, v50
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v64, v1, v1 :: v_dual_max_f32 v43, v48, v48
	v_mul_f32_e32 v82, v2, v2
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v45, v46, v46 :: v_dual_mul_f32 v72, v4, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v18, 0, v18
	v_max_f32_e32 v22, 0, v22
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v32, 0, v32
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v34, 0, v34
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v38, 0, v38
	v_dual_max_f32 v99, 0, v41 :: v_dual_mul_f32 v78, v7, v7
	v_dual_max_f32 v100, 0, v42 :: v_dual_max_f32 v101, 0, v43
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v74, v5, v5
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v103, 0, v45 :: v_dual_mul_f32 v76, v11, v11
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v71, v3, v3 :: v_dual_mul_f32 v80, v9, v9
	v_dual_mul_f32 v75, v6, v6 :: v_dual_mul_f32 v66, v16, v16
	v_dual_mul_f32 v79, v8, v8 :: v_dual_mul_f32 v68, v14, v14
	v_dual_mul_f32 v77, v10, v10 :: v_dual_mul_f32 v62, v17, v17
	v_dual_mul_f32 v73, v12, v12 :: v_dual_mul_f32 v60, v19, v19
	v_dual_mul_f32 v69, v13, v13 :: v_dual_mul_f32 v56, v23, v23
	v_dual_mul_f32 v67, v15, v15 :: v_dual_mul_f32 v58, v21, v21
	v_dual_mul_f32 v61, v18, v18 :: v_dual_mul_f32 v54, v25, v25
	v_dual_mul_f32 v59, v20, v20 :: v_dual_mul_f32 v52, v27, v27
	v_dual_mul_f32 v57, v22, v22 :: v_dual_mul_f32 v50, v29, v29
	v_dual_mul_f32 v55, v24, v24 :: v_dual_mul_f32 v48, v31, v31
	v_dual_mul_f32 v53, v26, v26 :: v_dual_mul_f32 v46, v33, v33
	v_dual_mul_f32 v51, v28, v28 :: v_dual_mul_f32 v44, v35, v35
	v_dual_mul_f32 v49, v30, v30 :: v_dual_mul_f32 v42, v37, v37
	v_mul_f32_e32 v47, v32, v32
	v_mul_f32_e32 v45, v34, v34
	v_dual_mul_f32 v43, v36, v36 :: v_dual_mul_f32 v34, v83, v83
	v_dual_mul_f32 v41, v38, v38 :: v_dual_mul_f32 v32, v84, v84
	v_dual_mul_f32 v39, v39, v39 :: v_dual_mul_f32 v26, v88, v88
	v_dual_mul_f32 v38, v40, v40 :: v_dual_mul_f32 v37, v63, v63
	v_mul_f32_e32 v24, v90, v90
	v_dual_mul_f32 v36, v70, v70 :: v_dual_mul_f32 v35, v81, v81
	v_dual_mul_f32 v28, v87, v87 :: v_dual_mul_f32 v31, v85, v85
	v_dual_mul_f32 v22, v91, v91 :: v_dual_mul_f32 v29, v86, v86
	v_dual_mul_f32 v20, v92, v92 :: v_dual_mul_f32 v25, v89, v89
	v_dual_mul_f32 v18, v94, v94 :: v_dual_mul_f32 v19, v93, v93
	v_dual_mul_f32 v16, v96, v96 :: v_dual_mul_f32 v17, v95, v95
	v_dual_mul_f32 v14, v98, v98 :: v_dual_mul_f32 v15, v97, v97
	v_dual_mul_f32 v12, v100, v100 :: v_dual_mul_f32 v13, v99, v99
	v_dual_mul_f32 v10, v102, v102 :: v_dual_mul_f32 v11, v101, v101
	v_mul_f32_e32 v9, v103, v103
	v_mov_b32_e32 v5, v65
	v_and_b32_e32 v107, 15, v0
.LBB0_9:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v6, 7, v0
	v_and_b32_e32 v8, 0x80, v0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v30, v78, v79, v80
	v_max_f32_e32 v33, v45, v45
	v_max_f32_e32 v63, v26, v26
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 62, v6
	v_or_b32_e32 v3, 60, v6
	v_or_b32_e32 v21, 58, v6
	v_or_b32_e32 v23, 50, v6
	s_mov_b32 s25, 0x76543210
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s0
	v_add_co_u32 v3, s0, s68, v3
	v_add_co_u32 v83, s1, s68, v21
	v_add_co_ci_u32_e64 v4, null, s69, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[1:2]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s69, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 56, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 54, v6
	v_or_b32_e32 v21, 52, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s5, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s5
	v_add_co_u32 v3, s5, s68, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s69, 0, s5
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[72:73], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s9, s68, v21
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[70:71], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s69, 0, s9
	v_add_co_u32 v83, s9, s68, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[70:71], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s69, 0, s9
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[72:73], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 48, v6
	v_or_b32_e32 v4, 46, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[72:73], v[1:2]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v21, 44, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s13, s68, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s13
	v_add_co_u32 v3, s13, s68, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v23, 42, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s69, 0, s13
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[72:73], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s17, s68, v21
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[70:71], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[72:73], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s69, 0, s17
	v_add_co_u32 v83, s17, s68, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[70:71], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s69, 0, s17
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[72:73], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 40, v6
	v_or_b32_e32 v4, 38, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[72:73], v[1:2]
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v61, v61
.Ltmp6:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s21, s68, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s21
	v_add_co_u32 v85, s21, s68, v4
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v82, v82 :: v_dual_max_f32 v4, v64, v64
.Ltmp8:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[72:73], v[1:2]
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v72, v74, v75
	v_max_f32_e32 v23, v62, v62
	v_dual_max_f32 v1, v4, v3 :: v_dual_max_f32 v40, v46, v46
	v_max3_f32 v3, v77, v76, v73
	v_max3_f32 v4, v69, v68, v67
.Ltmp10:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v27, 36, v6
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v1, v71, v2
.Ltmp12:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[70:71], v[83:84]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s69, 0, s21
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v3, v4, v66
	v_max_f32_e32 v3, v23, v21
	v_max3_f32 v4, v59, v58, v57
	v_max3_f32 v21, v53, v52, v51
	v_max3_f32 v23, v50, v49, v48
	v_max3_f32 v1, v1, v30, v2
	v_max3_f32 v2, v56, v55, v54
	v_max3_f32 v3, v3, v60, v4
	v_max3_f32 v30, v36, v35, v34
	v_max3_f32 v4, v21, v23, v47
	v_max_f32_e32 v21, v40, v33
	v_max3_f32 v23, v43, v42, v41
	v_max3_f32 v33, v32, v31, v29
	v_max_f32_e32 v40, v25, v25
	v_max3_f32 v2, v3, v2, v4
	v_max3_f32 v3, v39, v38, v37
	v_max3_f32 v4, v21, v44, v23
	v_max3_f32 v21, v30, v33, v28
	v_max_f32_e32 v23, v63, v40
	v_max3_f32 v30, v22, v20, v19
	v_max3_f32 v33, v15, v14, v13
	v_max3_f32 v40, v12, v11, v10
	v_max3_f32 v3, v4, v3, v21
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v63, v1, s25, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v18, v17, v16
	v_max3_f32 v21, v23, v24, v30
	v_max3_f32 v23, v33, v40, v9
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v33, v2, s25, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v3, s25, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[72:73], v[83:84]
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v30, v63, v63
.Ltmp19:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s26, s68, v27
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v27, v33, v33
	v_max_f32_e32 v33, v40, v40
	v_max3_f32 v4, v21, v4, v23
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v21, 3, v0
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v30 :: v_dual_and_b32 v40, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v3, v3, v33 :: v_dual_lshlrev_b32 v30, 4, v0
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v33, v21, 9, 0
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v27 :: v_dual_lshlrev_b32 v63, 5, v21
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v27, v4, s25, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v23, 0x60, v0
	v_and_b32_e32 v65, 8, v0
	v_lshl_add_u32 v33, v40, 2, v33
	v_and_or_b32 v70, 0x680, v30, v63
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v27, v27, v27
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v81, 1, v8
	v_xor_b32_e32 v63, v63, v23
	v_lshl_add_u32 v33, v65, 4, v33
	v_lshrrev_b32_e32 v87, 3, v8
	v_xor_b32_e32 v70, v70, v23
	v_lshl_add_u32 v88, v40, 6, 0
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v27
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v27, v33, v81, v63
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v63, v88, v87, v70
.Ltmp30:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v33, 34, v6
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v27, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v63
.Ltmp32:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s69, 0, s26
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v27, 32, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v87, s25, s68, v33
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v33, 30, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[70:71], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[72:73], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v83, s30, s68, v27
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[70:71], v[85:86]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v88, null, s69, 0, s25
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[72:73], v[85:86]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s69, 0, s30
	v_add_co_u32 v85, s30, s68, v33
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v63, 28, v6
.Ltmp33:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v27, v1
	v_dual_mov_b32 v33, v2 :: v_dual_mov_b32 v70, v3
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v27, v27 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v33, v33 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v4, v4
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v27, v27, v27
	v_max_f32_e32 v33, v33, v33
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v27, v1, v27
	v_max_f32_e32 v33, v2, v33
.Ltmp39:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s69, 0, s30
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[70:71], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[72:73], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s35, s68, v63
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v63, v27
	v_mov_b32_e32 v83, v33
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v70 :: v_dual_max_f32 v4, v81, v4
.Ltmp42:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s69, 0, s35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v63, v63 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v70, v3 :: v_dual_mov_b32 v81, v4
.Ltmp44:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[72:73], v[1:2]
.Ltmp45:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v63, v63
	v_max_f32_e32 v2, v83, v83
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v63, 26, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v27, v1 :: v_dual_max_f32 v2, v33, v2
	v_max_f32_e32 v27, v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v81, v81
.Ltmp49:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s37, s68, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v63, v1
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v27 :: v_dual_max_f32 v4, v4, v33
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v70, v2
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v27, v3
	v_mov_b32_e32 v33, v4
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_barrier
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v63, v63, v63
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v27, v27 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v70, v70, v70
.Ltmp56:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v81, 24, v6
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v63
	v_max_f32_e32 v27, v27, v27
	v_max_f32_e32 v63, v33, v33
	v_dual_max_f32 v2, v2, v70 :: v_dual_lshlrev_b32 v33, 4, v21
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v70, 1, v23
	v_lshlrev_b32_e32 v21, 3, v65
	v_add_nc_u32_e32 v65, 0, v8
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v27
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v27, 5, v40
	v_add_nc_u32_e32 v40, 0, v33
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v63
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v63, v65, v70, v21
.Ltmp63:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v65, 22, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[70:71], v[85:86]
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v21, v40, v27, v21
.Ltmp65:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[72:73], v[85:86]
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v63, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v21
.Ltmp67:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s69, 0, s37
	v_add_co_u32 v85, s38, s68, v81
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v21, 20, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s69, 0, s38
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v27, 18, v6
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[70:71], v[87:88]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[72:73], v[87:88]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v87, s38, s68, v65
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[70:71], v[83:84]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v88, null, s69, 0, s38
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[72:73], v[83:84]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s43, s68, v21
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[70:71], v[85:86]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v1, v1, v1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[72:73], v[85:86]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s69, 0, s43
	v_add_co_u32 v85, s43, s68, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v27, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v21, 16, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s69, 0, s43
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 14, v6
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v40, null, 0x40e00000, 0x40e00000, v27
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[70:71], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[72:73], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v83, s47, s68, v21
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[70:71], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[72:73], v[85:86]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s69, 0, s47
	v_add_co_u32 v85, s47, s68, v1
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v1, v40
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v21, 12, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v3, v3, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[70:71], v[87:88]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[72:73], v[87:88]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s69, 0, s47
	v_add_co_u32 v87, s47, s68, v21
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v21, 10, v6
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v63, -v40, v1, 1.0
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v88, null, s69, 0, s47
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[70:71], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[72:73], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v83, s53, s68, v21
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v21, 8, v6
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v1, v63, v1
	v_div_scale_f32 v63, vcc_lo, v27, 0x40e00000, v27
	v_div_scale_f32 v65, null, 0x40e00000, 0x40e00000, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[70:71], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[72:73], v[85:86]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s69, 0, s53
	v_add_co_u32 v85, s53, s68, v21
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v21, v63, v1
	v_rcp_f32_e32 v70, v65
	v_max_f32_e32 v2, v2, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s69, 0, s53
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[70:71], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[72:73], v[83:84]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v81, -v40, v21, v63
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v84, 0x2b8cbccc, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[70:71], v[85:86]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v65, v70, 1.0
	v_fmac_f32_e32 v21, v81, v1
	v_max_f32_e32 v81, 0x2b8cbccc, v4
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v84
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[72:73], v[85:86]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v40, -v40, v21, v63
	v_fmac_f32_e32 v70, v2, v70
	v_div_scale_f32 v63, s59, v3, 0x40e00000, v3
	v_rcp_f32_e32 v85, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v83, 6, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v21, v40, v1, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v40, v63, v70
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v81
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[70:71], v[87:88]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[72:73], v[87:88]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s57, s68, v83
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v83, -v4, v85, 1.0
	v_div_fixup_f32 v21, v21, 0x40e00000, v27
	v_fma_f32 v27, -v65, v40, v63
	v_rcp_f32_e32 v87, v86
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v88.h, 0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s69, 0, s57
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v85, v83, v85
	v_div_scale_f32 v83, s60, v84, 0x40e00000, v84
	v_fmac_f32_e32 v40, v27, v70
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v27.l, v21.h
	v_mov_b16_e32 v27.h, v88.h
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[70:71], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v89, v83, v85
	v_fma_f32 v90, -v86, v87, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[72:73], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v27
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v1, -v65, v40, v63
	v_fma_f32 v27, -v4, v89, v83
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v63, s61, v81, 0x40e00000, v81
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v21, v21, v2, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v89, v27, v85
	v_div_fmas_f32 v1, v1, v70, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v27, v63, v87 :: v_dual_and_b32 v70, 0xffff0000, v21
	s_mov_b32 vcc_lo, s60
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 4, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v1, v1, 0x40e00000, v3
	v_fma_f32 v3, -v4, v89, v83
	v_fma_f32 v4, -v86, v27, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v65, null, v70, v70, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v88.l, v1.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v40, v3, v85, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, v4, v87
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v85, v65
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s59, s68, v2
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v2, -v86, v27, v63
	v_div_fixup_f32 v63, v40, 0x40e00000, v84
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v70, v70, v82
	v_div_scale_f32 v90, null, v70, v70, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v87, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v40, -v65, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v86, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v27, 1, v88
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v87, vcc_lo, v64, v70, v64
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v81
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v81.l, v63.h
	v_mov_b16_e32 v81.h, v88.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v40, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v1, v27, 0x7fff
	v_mov_b16_e32 v88.l, v2.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v91, null, v70, v70, v72
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v27, 1, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v87, v85
	v_fma_f32 v81, -v84, v86, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s69, 0, s59
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v83, 1, v88
	v_add3_u32 v27, v63, v27, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v63, -v65, v89, v87
	v_fmac_f32_e32 v86, v81, v86
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v92, s59, v82, v70, v82
	v_rcp_f32_e32 v93, v91
	v_fmac_f32_e32 v89, v63, v85
	v_div_scale_f32 v97, null, v70, v70, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v94, v92, v86
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v2, v83, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v65, -v65, v89, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v90, v88, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v84, v94, v92
	v_fma_f32 v96, -v91, v93, 1.0
	v_div_fmas_f32 v65, v65, v85, v89
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s60, v71, v70, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v87, v86 :: v_dual_fmac_f32 v93, v96, v93
	v_rcp_f32_e32 v87, v97
	v_div_scale_f32 v96, null, v70, v70, v75
	v_mul_f32_e32 v85, v95, v88
	v_div_scale_f32 v89, s61, v72, v70, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v98, v96
	v_div_fixup_f32 v64, v65, v70, v64
	v_fma_f32 v65, -v84, v94, v92
	v_fma_f32 v84, -v90, v85, v95
	v_mul_f32_e32 v92, v89, v93
	v_fma_f32 v99, -v97, v87, 1.0
	s_mov_b32 vcc_lo, s59
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	v_lshlrev_b32_e32 v8, 3, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v65, v65, v86, v94
	v_fmac_f32_e32 v85, v84, v88
	v_fma_f32 v84, -v91, v92, v89
	v_fmac_f32_e32 v87, v99, v87
	v_div_scale_f32 v86, s59, v74, v70, v74
	v_fma_f32 v94, -v96, v98, 1.0
	v_div_fixup_f32 v65, v65, v70, v82
	v_fma_f32 v82, -v90, v85, v95
	v_fmac_f32_e32 v92, v84, v93
	v_mul_f32_e32 v84, v86, v87
	v_fmac_f32_e32 v98, v94, v98
	v_div_scale_f32 v94, null, v70, v70, v78
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v90, s62, v75, v70, v75
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v91, v92, v89
	v_fma_f32 v88, -v97, v84, v86
	v_rcp_f32_e32 v89, v94
	v_div_scale_f32 v95, null, v70, v70, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v90, v98 :: v_dual_fmac_f32 v84, v88, v87
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v85, v85, v93, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v92, -v96, v91, v90
	v_div_fixup_f32 v71, v82, v70, v71
	v_fma_f32 v93, -v94, v89, 1.0
	v_fma_f32 v82, -v97, v84, v86
	v_div_fixup_f32 v72, v85, v70, v72
	v_fmac_f32_e32 v91, v92, v98
	v_div_scale_f32 v85, s60, v78, v70, v78
	v_fmac_f32_e32 v89, v93, v89
	v_fma_f32 v86, -v95, v88, 1.0
	v_div_scale_f32 v92, null, v70, v70, v80
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v93, null, v70, v70, v77
	v_div_fmas_f32 v82, v82, v87, v84
	v_fma_f32 v84, -v96, v91, v90
	v_dual_mul_f32 v87, v85, v89 :: v_dual_fmac_f32 v88, v86, v88
	v_rcp_f32_e32 v86, v92
	v_div_scale_f32 v90, s59, v79, v70, v79
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v74, v82, v70, v74
	v_div_fmas_f32 v84, v84, v98, v91
	v_fma_f32 v91, -v94, v87, v85
	v_mul_f32_e32 v96, v90, v88
	v_rcp_f32_e32 v98, v93
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v92, v86, 1.0
	v_fmac_f32_e32 v87, v91, v89
	v_fma_f32 v82, -v95, v96, v90
	v_div_scale_f32 v91, null, v70, v70, v76
	v_div_fixup_f32 v75, v84, v70, v75
	v_fmac_f32_e32 v86, v97, v86
	v_div_scale_f32 v84, s61, v80, v70, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v93, v98, 1.0
	v_fma_f32 v85, -v94, v87, v85
	v_fmac_f32_e32 v96, v82, v88
	v_rcp_f32_e32 v94, v91
	v_mul_f32_e32 v82, v84, v86
	v_fmac_f32_e32 v98, v97, v98
	v_div_scale_f32 v97, s62, v77, v70, v77
	v_div_fmas_f32 v85, v85, v89, v87
	v_fma_f32 v87, -v95, v96, v90
	v_div_scale_f32 v99, null, v70, v70, v73
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v89, -v92, v82, v84
	v_mul_f32_e32 v90, v97, v98
	v_fma_f32 v95, -v91, v94, 1.0
	v_div_fmas_f32 v87, v87, v88, v96
	v_rcp_f32_e32 v88, v99
	v_fmac_f32_e32 v82, v89, v86
	v_fma_f32 v89, -v93, v90, v97
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, s59, v76, v70, v76
	v_div_fixup_f32 v78, v85, v70, v78
	v_div_fixup_f32 v79, v87, v70, v79
	v_fma_f32 v84, -v92, v82, v84
	v_fmac_f32_e32 v90, v89, v98
	v_mul_f32_e32 v85, v95, v94
	v_fma_f32 v87, -v99, v88, 1.0
	v_div_scale_f32 v89, null, v70, v70, v69
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v92, s60, v73, v70, v73
	v_div_fmas_f32 v82, v84, v86, v82
	v_fma_f32 v84, -v93, v90, v97
	v_fma_f32 v86, -v91, v85, v95
	v_fmac_f32_e32 v88, v87, v88
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v93, null, v70, v70, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v86, v94
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v80, v82, v70, v80
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v84, v84, v98, v90
	v_mul_f32_e32 v90, v92, v88
	v_fma_f32 v82, -v91, v85, v95
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v89, v87, 1.0
	v_div_scale_f32 v91, s61, v69, v70, v69
	v_div_fixup_f32 v77, v84, v70, v77
	v_fma_f32 v84, -v99, v90, v92
	v_fmac_f32_e32 v87, v96, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v86, 1.0
	v_div_scale_f32 v96, null, v70, v70, v67
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v90, v84, v88
	v_div_fmas_f32 v82, v82, v94, v85
	v_mul_f32_e32 v84, v91, v87
	v_fmac_f32_e32 v86, v95, v86
	v_rcp_f32_e32 v85, v96
	v_div_scale_f32 v94, s59, v68, v70, v68
	v_div_scale_f32 v95, null, v70, v70, v66
	v_div_fixup_f32 v76, v82, v70, v76
	v_fma_f32 v82, -v99, v90, v92
	v_fma_f32 v92, -v89, v84, v91
	v_mul_f32_e32 v97, v94, v86
	v_rcp_f32_e32 v98, v95
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v96, v85, 1.0
	v_div_fmas_f32 v82, v82, v88, v90
	v_fmac_f32_e32 v84, v92, v87
	v_fma_f32 v88, -v93, v97, v94
	v_div_scale_f32 v90, s60, v67, v70, v67
	v_fmac_f32_e32 v85, v99, v85
	v_div_fixup_f32 v73, v82, v70, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v95, v98, 1.0
	v_fma_f32 v82, -v89, v84, v91
	v_fmac_f32_e32 v97, v88, v86
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v88, v90, v85
	v_fmac_f32_e32 v98, v92, v98
	v_div_scale_f32 v89, s62, v66, v70, v66
	v_div_scale_f32 v91, null, v83, v83, v62
	v_div_fmas_f32 v82, v82, v87, v84
	v_fma_f32 v84, -v93, v97, v94
	v_div_scale_f32 v94, null, v83, v83, v61
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v87, -v96, v88, v90
	v_rcp_f32_e32 v92, v91
	v_mul_f32_e32 v93, v89, v98
	v_div_fmas_f32 v84, v84, v86, v97
	v_rcp_f32_e32 v86, v94
	v_fmac_f32_e32 v88, v87, v85
	v_div_fixup_f32 v69, v82, v70, v69
	v_fma_f32 v87, -v95, v93, v89
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v68, v84, v70, v68
	v_fma_f32 v82, -v96, v88, v90
	v_fma_f32 v97, -v91, v92, 1.0
	v_fmac_f32_e32 v93, v87, v98
	v_div_scale_f32 v90, null, v83, v83, v60
	v_fma_f32 v87, -v94, v86, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v92, v97, v92
	v_div_scale_f32 v84, s59, v62, v83, v62
	v_div_fmas_f32 v82, v82, v85, v88
	v_fma_f32 v85, -v95, v93, v89
	v_fmac_f32_e32 v86, v87, v86
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v95, null, v83, v83, v59
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v88, v84, v92
	v_div_scale_f32 v89, s60, v61, v83, v61
	v_div_fmas_f32 v85, v85, v98, v93
	v_rcp_f32_e32 v98, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v91, v88, v84
	v_mul_f32_e32 v96, v89, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v90, v87, 1.0
	v_div_fixup_f32 v67, v82, v70, v67
	v_div_fixup_f32 v66, v85, v70, v66
	v_fmac_f32_e32 v88, v93, v92
	v_fma_f32 v70, -v94, v96, v89
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v82, s61, v60, v83, v60
	v_fma_f32 v93, -v95, v98, 1.0
	v_fma_f32 v84, -v91, v88, v84
	v_fmac_f32_e32 v96, v70, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v70, v82, v87
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v98, v93, v98
	v_div_scale_f32 v93, s62, v59, v83, v59
	v_div_fmas_f32 v84, v84, v92, v88
	v_fma_f32 v88, -v94, v96, v89
	v_fma_f32 v89, -v90, v70, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v92, v93, v98 :: v_dual_and_b32 v81, 0xffff0000, v1
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v70, v89, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v89, -v95, v92, v93
	v_div_fmas_f32 v86, v88, v86, v96
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v90, v70, v82
	v_fmac_f32_e32 v92, v89, v98
	v_div_scale_f32 v85, null, v83, v83, v58
	v_div_scale_f32 v97, null, v83, v83, v57
	v_div_fixup_f32 v61, v86, v83, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v85
	v_div_scale_f32 v89, null, v83, v83, v56
	v_rcp_f32_e32 v88, v97
	v_div_fixup_f32 v62, v84, v83, v62
	v_div_fmas_f32 v70, v82, v87, v70
	v_fma_f32 v82, -v95, v92, v93
	v_div_scale_f32 v93, null, v83, v83, v55
	v_div_scale_f32 v90, s60, v57, v83, v57
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v85, v91, 1.0
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v86, -v97, v88, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v63, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v98, v92
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s59, v58, v83, v58
	v_fmac_f32_e32 v88, v86, v88
	v_rcp_f32_e32 v86, v89
	v_div_fixup_f32 v60, v70, v83, v60
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v94, v91
	s_mov_b32 vcc_lo, s59
	v_mul_f32_e32 v92, v90, v88
	v_div_fixup_f32 v59, v82, v83, v59
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v85, v84, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v97, v92, v90
	v_fma_f32 v95, -v89, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v87, v91
	v_rcp_f32_e32 v87, v93
	v_fmac_f32_e32 v92, v82, v88
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v95, null, v83, v83, v54
	v_fma_f32 v70, -v85, v84, v94
	v_div_scale_f32 v85, s61, v56, v83, v56
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v93, v87, 1.0
	v_div_fmas_f32 v70, v70, v91, v84
	v_rcp_f32_e32 v84, v95
	v_mul_f32_e32 v82, v85, v86
	v_div_scale_f32 v91, s59, v55, v83, v55
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, null, v83, v83, v53
	v_div_fixup_f32 v58, v70, v83, v58
	v_fma_f32 v70, -v97, v92, v90
	v_fma_f32 v90, -v89, v82, v85
	v_mul_f32_e32 v96, v91, v87
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v82, v90, v86
	v_div_fmas_f32 v70, v70, v88, v92
	v_fma_f32 v88, -v93, v96, v91
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s60, v54, v83, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v57, v70, v83, v57
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v70, -v89, v82, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v96, v88, v87 :: v_dual_mul_f32 v85, v90, v84
	v_div_scale_f32 v89, null, v83, v83, v52
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v88, s62, v53, v83, v53
	v_div_fmas_f32 v70, v70, v86, v82
	v_fma_f32 v82, -v93, v96, v91
	v_fma_f32 v86, -v95, v85, v90
	v_rcp_f32_e32 v91, v89
	v_div_scale_f32 v93, null, v83, v83, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v92, v88, v97 :: v_dual_fmac_f32 v85, v86, v84
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v87, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v94, v92, v88
	v_div_fixup_f32 v56, v70, v83, v56
	v_fma_f32 v96, -v89, v91, 1.0
	v_fma_f32 v70, -v95, v85, v90
	v_div_fixup_f32 v55, v82, v83, v55
	v_fmac_f32_e32 v92, v87, v97
	v_div_scale_f32 v82, s59, v52, v83, v52
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v87, -v93, v86, 1.0
	v_div_scale_f32 v90, null, v83, v83, v50
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v98, null, v83, v83, v47
	v_div_fmas_f32 v70, v70, v84, v85
	v_fma_f32 v84, -v94, v92, v88
	v_dual_mul_f32 v85, v82, v91 :: v_dual_fmac_f32 v86, v87, v86
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v88, s60, v51, v83, v51
	v_div_scale_f32 v94, null, v83, v83, v49
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v95, v88, v86
	v_div_fmas_f32 v84, v84, v97, v92
	v_fma_f32 v92, -v89, v85, v82
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v90, v87, 1.0
	v_div_fixup_f32 v54, v70, v83, v54
	v_fma_f32 v70, -v93, v95, v88
	v_fmac_f32_e32 v85, v92, v91
	v_div_fixup_f32 v53, v84, v83, v53
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v84, s61, v50, v83, v50
	v_div_scale_f32 v92, null, v83, v83, v48
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v82, -v89, v85, v82
	v_fmac_f32_e32 v95, v70, v86
	s_mov_b32 vcc_lo, s59
	v_mul_f32_e32 v70, v84, v87
	v_rcp_f32_e32 v89, v92
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s62, v49, v83, v49
	v_div_fmas_f32 v82, v82, v91, v85
	v_fma_f32 v85, -v93, v95, v88
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v88, -v90, v70, v84
	v_mul_f32_e32 v91, v96, v97
	v_div_fixup_f32 v52, v82, v83, v52
	v_div_fmas_f32 v85, v85, v86, v95
	v_rcp_f32_e32 v86, v98
	v_fma_f32 v93, -v92, v89, 1.0
	v_fmac_f32_e32 v70, v88, v87
	v_fma_f32 v88, -v94, v91, v96
	v_div_fixup_f32 v51, v85, v83, v51
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s59, v48, v83, v48
	v_fmac_f32_e32 v91, v88, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v98, v86, 1.0
	v_div_scale_f32 v88, null, v81, v81, v46
	v_fma_f32 v82, -v90, v70, v84
	v_mul_f32_e32 v84, v93, v89
	v_fmac_f32_e32 v86, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v90, s60, v47, v83, v47
	v_div_fmas_f32 v70, v82, v87, v70
	v_fma_f32 v82, -v94, v91, v96
	v_fma_f32 v87, -v92, v84, v93
	v_div_scale_f32 v94, null, v81, v81, v45
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v50, v70, v83, v50
	v_fmac_f32_e32 v84, v87, v89
	v_rcp_f32_e32 v87, v94
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fmas_f32 v82, v82, v97, v91
	v_mul_f32_e32 v91, v90, v86
	v_fma_f32 v70, -v92, v84, v93
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v81, v81, v44
	v_div_fixup_f32 v49, v82, v83, v49
	v_fma_f32 v82, -v98, v91, v90
	v_div_scale_f32 v92, s61, v46, v81, v46
	v_fma_f32 v93, -v94, v87, 1.0
	v_div_fmas_f32 v70, v70, v89, v84
	v_rcp_f32_e32 v84, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v82, v86 :: v_dual_mul_f32 v82, v92, v85
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v89, s59, v45, v81, v45
	v_div_scale_f32 v93, null, v81, v81, v43
	v_div_fixup_f32 v48, v70, v83, v48
	v_fma_f32 v70, -v98, v91, v90
	v_fma_f32 v90, -v88, v82, v92
	v_mul_f32_e32 v96, v89, v87
	v_rcp_f32_e32 v97, v93
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v82, v90, v85
	v_div_fmas_f32 v70, v70, v86, v91
	v_fma_f32 v86, -v94, v96, v89
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s60, v44, v81, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v47, v70, v83, v47
	v_fma_f32 v91, -v93, v97, 1.0
	v_fma_f32 v70, -v88, v82, v92
	v_fmac_f32_e32 v96, v86, v87
	v_mul_f32_e32 v83, v90, v84
	v_div_scale_f32 v88, null, v81, v81, v42
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v86, s62, v43, v81, v43
	v_div_fmas_f32 v70, v70, v85, v82
	v_fma_f32 v82, -v94, v96, v89
	v_fma_f32 v85, -v95, v83, v90
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v92, null, v81, v81, v41
	v_mul_f32_e32 v91, v86, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v85, v84
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v82, v82, v87, v96
	v_fma_f32 v87, -v93, v91, v86
	v_div_fixup_f32 v46, v70, v81, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v70, -v95, v83, v90
	v_div_fixup_f32 v45, v82, v81, v45
	v_fmac_f32_e32 v91, v87, v97
	v_div_scale_f32 v82, s59, v42, v81, v42
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v87, -v92, v85, 1.0
	v_div_scale_f32 v90, null, v81, v81, v39
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v84, v83
	v_fma_f32 v83, -v93, v91, v86
	v_mul_f32_e32 v84, v82, v89
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v87, s60, v41, v81, v41
	v_div_scale_f32 v93, null, v81, v81, v38
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v94, v87, v85
	v_div_fmas_f32 v83, v83, v97, v91
	v_fma_f32 v91, -v88, v84, v82
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v86, 1.0
	v_div_fixup_f32 v44, v70, v81, v44
	v_fma_f32 v70, -v92, v94, v87
	v_fmac_f32_e32 v84, v91, v89
	v_div_scale_f32 v91, null, v81, v81, v37
	v_div_fixup_f32 v43, v83, v81, v43
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v83, s61, v39, v81, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v82, -v88, v84, v82
	v_fmac_f32_e32 v94, v70, v85
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s59
	v_mul_f32_e32 v70, v83, v86
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s62, v38, v81, v38
	v_div_fmas_f32 v82, v82, v89, v84
	v_fma_f32 v84, -v92, v94, v87
	v_div_scale_f32 v97, null, v81, v81, v36
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v87, -v90, v70, v83
	v_mul_f32_e32 v89, v95, v96
	v_fma_f32 v92, -v91, v88, 1.0
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v97
	v_fmac_f32_e32 v70, v87, v86
	v_fma_f32 v87, -v93, v89, v95
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s59, v37, v81, v37
	v_div_fixup_f32 v42, v82, v81, v42
	v_div_fixup_f32 v41, v84, v81, v41
	v_fma_f32 v82, -v90, v70, v83
	v_fmac_f32_e32 v89, v87, v96
	v_mul_f32_e32 v83, v92, v88
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v81, v81, v35
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v90, s60, v36, v81, v36
	v_div_fmas_f32 v70, v82, v86, v70
	v_fma_f32 v82, -v93, v89, v95
	v_fma_f32 v86, -v91, v83, v92
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v81, v81, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v88
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v39, v70, v81, v39
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v96, v89
	v_mul_f32_e32 v89, v90, v85
	v_fma_f32 v70, -v91, v83, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v38, v82, v81, v38
	v_fma_f32 v82, -v97, v89, v90
	v_div_scale_f32 v91, s61, v35, v81, v35
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_scale_f32 v94, null, v81, v81, v32
	v_div_fmas_f32 v70, v70, v88, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v82, v85 :: v_dual_fmac_f32 v86, v92, v86
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v92, null, v81, v81, v31
	v_mul_f32_e32 v82, v91, v84
	v_div_scale_f32 v88, s59, v34, v81, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v37, v70, v81, v37
	v_fma_f32 v70, -v97, v89, v90
	v_fma_f32 v90, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v86
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v85, v89
	v_fmac_f32_e32 v82, v90, v84
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s60, v32, v81, v32
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_fixup_f32 v36, v70, v81, v36
	v_fma_f32 v70, -v87, v82, v91
	v_fmac_f32_e32 v95, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v85, v89, v83 :: v_dual_fmac_f32 v96, v90, v96
	v_div_scale_f32 v90, null, v81, v81, v29
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v87, s62, v31, v81, v31
	v_div_fmas_f32 v70, v70, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v85, v89
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v93, null, v81, v81, v28
	v_mul_f32_e32 v91, v87, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v83
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v84, v93
	v_div_fmas_f32 v82, v82, v86, v95
	v_fma_f32 v86, -v92, v91, v87
	v_div_fixup_f32 v35, v70, v81, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v88, 1.0
	v_fma_f32 v70, -v94, v85, v89
	v_div_fixup_f32 v34, v82, v81, v34
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v82, s59, v29, v81, v29
	v_fmac_f32_e32 v88, v95, v88
	v_fma_f32 v86, -v93, v84, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v94, null, v63, v63, v25
	v_div_fmas_f32 v70, v70, v83, v85
	v_fma_f32 v83, -v92, v91, v87
	v_mul_f32_e32 v85, v82, v88
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, null, v63, v63, v26
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v87, s60, v28, v81, v28
	v_div_fmas_f32 v83, v83, v96, v91
	v_rcp_f32_e32 v89, v86
	v_fma_f32 v91, -v90, v85, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v92, v87, v84
	v_div_fixup_f32 v32, v70, v81, v32
	v_div_fixup_f32 v31, v83, v81, v31
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v85, v91, v88
	v_fma_f32 v70, -v93, v92, v87
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v96, null, v63, v63, v22
	v_fma_f32 v91, -v86, v89, 1.0
	v_fma_f32 v82, -v90, v85, v82
	v_div_scale_f32 v90, null, v63, v63, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v70, v84 :: v_dual_fmac_f32 v89, v91, v89
	v_div_fmas_f32 v82, v82, v88, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v70, s61, v26, v63, v26
	v_fma_f32 v85, -v93, v92, v87
	v_fma_f32 v95, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v87, v70, v89
	v_div_scale_f32 v88, s59, v25, v63, v25
	v_fmac_f32_e32 v83, v95, v83
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v90, v91, 1.0
	v_rcp_f32_e32 v98, v96
	v_div_fmas_f32 v84, v85, v84, v92
	v_fma_f32 v95, -v86, v87, v70
	v_mul_f32_e32 v97, v88, v83
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s62, v24, v63, v24
	v_div_fixup_f32 v29, v82, v81, v29
	v_div_fixup_f32 v28, v84, v81, v28
	v_div_scale_f32 v84, null, v63, v63, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v92, v93, v91 :: v_dual_fmac_f32 v87, v95, v89
	v_fma_f32 v85, -v94, v97, v88
	v_fma_f32 v82, -v96, v98, 1.0
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v81, -v90, v92, v93
	v_fma_f32 v70, -v86, v87, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v97, v85, v83 :: v_dual_fmac_f32 v98, v82, v98
	v_div_scale_f32 v82, s60, v22, v63, v22
	v_fmac_f32_e32 v92, v81, v91
	v_rcp_f32_e32 v81, v84
	v_div_fmas_f32 v70, v70, v89, v87
	v_fma_f32 v85, -v94, v97, v88
	v_mul_f32_e32 v86, v82, v98
	v_div_scale_f32 v87, null, v63, v63, v19
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v26, v70, v63, v26
	v_div_fmas_f32 v83, v85, v83, v97
	v_fma_f32 v85, -v90, v92, v93
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v84, v81, 1.0
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v96, v86, v82
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v25, v83, v63, v25
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, s59, v20, v63, v20
	v_fmac_f32_e32 v86, v90, v98
	v_div_fmas_f32 v85, v85, v91, v92
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v70, v88, v81
	v_fma_f32 v83, -v87, v89, 1.0
	v_fma_f32 v82, -v96, v86, v82
	v_div_fixup_f32 v24, v85, v63, v24
	v_div_scale_f32 v85, null, v63, v63, v18
	v_fma_f32 v90, -v84, v70, v88
	v_fmac_f32_e32 v89, v83, v89
	v_div_scale_f32 v83, s61, v19, v63, v19
	v_div_fmas_f32 v82, v82, v98, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v90, v81
	v_rcp_f32_e32 v91, v85
	v_mul_f32_e32 v86, v83, v89
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v22, v82, v63, v22
	v_fma_f32 v82, -v84, v70, v88
	v_div_scale_f32 v90, null, v63, v63, v17
	v_fma_f32 v84, -v87, v86, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v82, v81, v70
	v_div_scale_f32 v81, null, v63, v63, v16
	v_fma_f32 v88, -v85, v91, 1.0
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v86, v84, v89
	v_rcp_f32_e32 v84, v81
	v_div_scale_f32 v82, s59, v18, v63, v18
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, null, v63, v63, v15
	v_div_fixup_f32 v20, v70, v63, v20
	v_fma_f32 v83, -v87, v86, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v90, v92, 1.0
	v_rcp_f32_e32 v94, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v81, v84, 1.0
	v_mul_f32_e32 v87, v82, v91
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v92, v70, v92
	v_div_scale_f32 v70, s60, v17, v63, v17
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v93, null, v63, v63, v14
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v85, v87, v82
	v_mul_f32_e32 v89, v70, v92
	v_div_scale_f32 v95, s61, v16, v63, v16
	v_fma_f32 v96, -v88, v94, 1.0
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v87, v86, v91
	v_fma_f32 v86, -v90, v89, v70
	v_mul_f32_e32 v98, v95, v84
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s62, v15, v63, v15
	v_div_fixup_f32 v19, v83, v63, v19
	v_fma_f32 v82, -v85, v87, v82
	v_fmac_f32_e32 v89, v86, v92
	v_fma_f32 v83, -v81, v98, v95
	v_mul_f32_e32 v85, v96, v94
	v_fma_f32 v86, -v93, v97, 1.0
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v70, -v90, v89, v70
	v_fmac_f32_e32 v98, v83, v84
	v_fma_f32 v83, -v88, v85, v96
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s59, v14, v63, v14
	v_div_fmas_f32 v82, v82, v91, v87
	v_fma_f32 v81, -v81, v98, v95
	v_fmac_f32_e32 v85, v83, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v86, v97
	v_div_scale_f32 v87, null, v63, v63, v13
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v18, v82, v63, v18
	v_div_fmas_f32 v70, v70, v92, v89
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v89, v87
	v_div_fmas_f32 v81, v81, v84, v98
	v_fma_f32 v84, -v88, v85, v96
	v_fma_f32 v88, -v93, v83, v86
	v_div_fixup_f32 v17, v70, v63, v17
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v16, v81, v63, v16
	v_div_scale_f32 v81, null, v63, v63, v12
	v_fmac_f32_e32 v83, v88, v97
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v87, v89, 1.0
	v_div_fmas_f32 v84, v84, v94, v85
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v91, null, v63, v63, v9
	v_fma_f32 v70, -v93, v83, v86
	v_fmac_f32_e32 v89, v82, v89
	v_div_scale_f32 v82, null, v63, v63, v11
	v_div_fixup_f32 v15, v84, v63, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v70, v70, v97, v83
	v_div_scale_f32 v85, vcc_lo, v13, v63, v13
	v_rcp_f32_e32 v83, v81
	v_rcp_f32_e32 v86, v82
	v_div_scale_f32 v84, null, v63, v63, v10
	v_mul_f32_e32 v90, v85, v89
	v_div_fixup_f32 v14, v70, v63, v14
	v_rcp_f32_e32 v93, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v88, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v87, v90, v85
	v_fma_f32 v70, -v81, v83, 1.0
	v_fma_f32 v92, -v82, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v94, v89
	v_fmac_f32_e32 v83, v70, v83
	v_div_scale_f32 v70, s59, v12, v63, v12
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s60, v11, v63, v11
	v_fma_f32 v85, -v87, v90, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v70, v83
	v_fma_f32 v95, -v84, v88, 1.0
	v_mul_f32_e32 v98, v92, v86
	v_fma_f32 v97, -v91, v93, 1.0
	v_div_fmas_f32 v85, v85, v89, v90
	s_mov_b32 vcc_lo, s59
	s_mov_b32 s59, 0xc1000000
	v_fma_f32 v94, -v81, v96, v70
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s61, v10, v63, v10
	v_fma_f32 v87, -v82, v98, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v94, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v97, v93
	v_div_scale_f32 v97, s62, v9, v63, v9
	v_fmac_f32_e32 v98, v87, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s59, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v99, v95, v88 :: v_dual_mul_f32 v100, v97, v93
	v_fma_f32 v70, -v81, v96, v70
	v_fma_f32 v82, -v82, v98, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s59, 0x40e00000
	v_cvt_i32_f32_e32 v92, v36
	v_and_b32_e32 v36, 15, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v84, v99, v95
	v_fma_f32 v81, -v91, v100, v97
	v_div_fmas_f32 v70, v70, v83, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v25, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_dual_fmac_f32 v99, v94, v88 :: v_dual_fmac_f32 v100, v81, v93
	v_div_fixup_f32 v12, v70, v63, v12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v45, v45, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v84, v99, v95
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v83, -v91, v100, v97
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v59, v59, s59, 0x40e00000
	v_med3_f32 v37, v37, s59, 0x40e00000
	v_med3_f32 v26, v26, s59, 0x40e00000
	v_med3_f32 v22, v22, s59, 0x40e00000
	v_med3_f32 v20, v20, s59, 0x40e00000
	v_med3_f32 v15, v15, s59, 0x40e00000
	v_cvt_i32_f32_e32 v89, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v86, v98
	s_mov_b32 vcc_lo, s61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v88, v99
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s59, 0x40e00000
	v_med3_f32 v12, v12, s59, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v95, v20
	v_and_b32_e32 v20, 15, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v93, v100
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v100, v15
	v_and_b32_e32 v15, 15, v89
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v89, 16, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v85, v63, v13
	v_div_fixup_f32 v11, v82, v63, v11
	v_div_fixup_f32 v10, v81, v63, v10
	v_div_fixup_f32 v9, v83, v63, v9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v64
	v_rndne_f32_e32 v46, v46
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v93, v35
	v_cvt_i32_f32_e32 v99, v16
	v_cvt_i32_f32_e32 v103, v12
	v_and_b32_e32 v35, 15, v59
	v_and_b32_e32 v59, 15, v37
	v_and_b32_e32 v12, 15, v26
	v_and_b32_e32 v16, 15, v25
	v_and_b32_e32 v37, 15, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v22, 13, v0
	v_and_b32_e32 v24, 0x2f0, v30
	v_lshlrev_b32_e32 v25, 8, v89
	v_and_b32_e32 v26, 64, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v65
	v_rndne_f32_e32 v65, v71
	v_rndne_f32_e32 v71, v74
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v74, v78
	v_rndne_f32_e32 v78, v80
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s59, 0x40e00000
	v_med3_f32 v62, v62, s59, 0x40e00000
	v_med3_f32 v46, v46, s59, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v22, 0xe000, v22, v25
	v_xor_b32_e32 v24, v24, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v72
	v_rndne_f32_e32 v72, v75
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v71, v71, s59, 0x40e00000
	v_med3_f32 v58, v58, s59, 0x40e00000
	v_med3_f32 v44, v44, s59, 0x40e00000
	v_med3_f32 v42, v42, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s59, 0x40e00000
	v_med3_f32 v78, v78, s59, 0x40e00000
	v_med3_f32 v61, v61, s59, 0x40e00000
	v_med3_f32 v60, v60, s59, 0x40e00000
	v_med3_f32 v54, v54, s59, 0x40e00000
	v_med3_f32 v11, v11, s59, 0x40e00000
	v_med3_f32 v10, v10, s59, 0x40e00000
	v_med3_f32 v9, v9, s59, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v88, v46
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v8, v22, v8, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s59, 0x40e00000
	v_med3_f32 v72, v72, s59, 0x40e00000
	v_med3_f32 v74, v74, s59, 0x40e00000
	v_med3_f32 v75, v75, s59, 0x40e00000
	v_med3_f32 v76, v76, s59, 0x40e00000
	v_med3_f32 v73, v73, s59, 0x40e00000
	v_med3_f32 v69, v69, s59, 0x40e00000
	v_med3_f32 v57, v57, s59, 0x40e00000
	v_med3_f32 v50, v50, s59, 0x40e00000
	v_med3_f32 v48, v48, s59, 0x40e00000
	v_med3_f32 v47, v47, s59, 0x40e00000
	v_med3_f32 v41, v41, s59, 0x40e00000
	v_med3_f32 v32, v32, s59, 0x40e00000
	v_med3_f32 v19, v19, s59, 0x40e00000
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v90, v42
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_bfe_i32 v7, v0, 7, 1
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v77, v77, s59, 0x40e00000
	v_med3_f32 v53, v53, s59, 0x40e00000
	v_med3_f32 v18, v18, s59, 0x40e00000
	v_med3_f32 v14, v14, s59, 0x40e00000
	v_med3_f32 v13, v13, s59, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v80, v61
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v83, v54
	v_cvt_i32_f32_e32 v104, v11
	v_cvt_i32_f32_e32 v105, v10
	v_cvt_i32_f32_e32 v106, v9
	v_and_b32_e32 v9, 15, v63
	v_and_b32_e32 v10, 15, v62
	v_and_b32_e32 v11, 15, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v22, 0, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s59, 0x40e00000
	v_med3_f32 v68, v68, s59, 0x40e00000
	v_med3_f32 v66, v66, s59, 0x40e00000
	v_med3_f32 v56, v56, s59, 0x40e00000
	v_med3_f32 v52, v52, s59, 0x40e00000
	v_med3_f32 v51, v51, s59, 0x40e00000
	v_med3_f32 v49, v49, s59, 0x40e00000
	v_med3_f32 v39, v39, s59, 0x40e00000
	v_med3_f32 v31, v31, s59, 0x40e00000
	v_med3_f32 v17, v17, s59, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v79, v69
	v_cvt_i32_f32_e32 v82, v57
	v_cvt_i32_f32_e32 v86, v50
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v91, v41
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v96, v19
	v_and_b32_e32 v41, 15, v71
	v_and_b32_e32 v42, 15, v58
	v_and_b32_e32 v19, 15, v44
	v_and_b32_e32 v43, 15, v90
	v_and_b32_e32 v44, 15, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v84, v53
	v_cvt_i32_f32_e32 v97, v18
	v_cvt_i32_f32_e32 v101, v14
	v_cvt_i32_f32_e32 v102, v13
	v_and_b32_e32 v13, 15, v64
	v_and_b32_e32 v57, 15, v78
	v_and_b32_e32 v14, 15, v80
	v_and_b32_e32 v18, 15, v60
	v_and_b32_e32 v58, 15, v83
	v_and_b32_e32 v60, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v22, v[9:12]
	ds_store_b128 v22, v[41:44] offset:256
	v_xad_u32 v9, v8, 16, 0
	v_lshlrev_b32_e32 v10, 6, v0
	v_lshlrev_b32_e32 v11, 5, v23
	v_and_b32_e32 v7, 0x2010, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s59, 0x40e00000
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v87, v49
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v98, v17
	v_and_b32_e32 v17, 15, v65
	v_and_b32_e32 v45, 15, v72
	v_and_b32_e32 v49, 15, v74
	v_and_b32_e32 v53, 15, v75
	v_and_b32_e32 v65, 15, v76
	v_and_b32_e32 v69, 15, v73
	v_and_b32_e32 v73, 15, v79
	v_and_b32_e32 v46, 15, v82
	v_and_b32_e32 v74, 15, v86
	v_and_b32_e32 v82, 15, v48
	v_and_b32_e32 v86, 15, v47
	v_and_b32_e32 v47, 15, v91
	v_and_b32_e32 v75, 15, v32
	v_and_b32_e32 v48, 15, v96
	v_and_b32_e32 v76, 15, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s59, 0x40e00000
	v_and_b32_e32 v61, 15, v77
	v_and_b32_e32 v62, 15, v84
	v_and_b32_e32 v63, 15, v92
	v_and_b32_e32 v64, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v22, v[57:60] offset:2048
	ds_store_b128 v22, v[73:76] offset:2304
	ds_store_b128 v9, v[13:16]
	ds_store_b128 v9, v[45:48] offset:256
	v_xad_u32 v12, v8, 32, 0
	v_lshlrev_b32_e32 v13, 2, v89
	v_and_or_b32 v10, 0x300, v10, v11
	v_xor_b32_e32 v7, v7, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s59, 0x40e00000
	v_med3_f32 v28, v28, s59, 0x40e00000
	v_cvt_i32_f32_e32 v94, v34
	v_and_b32_e32 v34, 15, v70
	v_and_b32_e32 v77, 15, v68
	v_and_b32_e32 v85, 15, v66
	v_and_b32_e32 v50, 15, v56
	v_and_b32_e32 v66, 15, v52
	v_and_b32_e32 v70, 15, v51
	v_and_b32_e32 v78, 15, v87
	v_and_b32_e32 v51, 15, v39
	v_and_b32_e32 v79, 15, v31
	v_and_b32_e32 v52, 15, v97
	v_and_b32_e32 v80, 15, v104
	v_med3_f32 v55, v55, s59, 0x40e00000
	v_med3_f32 v38, v38, s59, 0x40e00000
	v_cvt_i32_f32_e32 v67, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v9, v[61:64] offset:2048
	ds_store_b128 v9, v[77:80] offset:2304
	ds_store_b128 v12, v[17:20]
	ds_store_b128 v12, v[49:52] offset:256
	v_or3_b32 v19, v7, v10, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v38, v38
	v_and_b32_e32 v81, 15, v67
	v_and_b32_e32 v67, 15, v93
	v_and_b32_e32 v71, 15, v94
	v_and_b32_e32 v68, 15, v101
	v_and_b32_e32 v72, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v8, v8, 48, 0
	v_add_nc_u32_e32 v20, 0, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v83, 15, v29
	v_and_b32_e32 v87, 15, v28
	v_and_b32_e32 v84, 15, v105
	v_and_b32_e32 v88, 15, v106
	v_and_b32_e32 v54, 15, v55
	v_and_b32_e32 v55, 15, v38
	v_and_b32_e32 v56, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v12, v[65:68] offset:2048
	ds_store_b128 v12, v[81:84] offset:2304
	ds_store_b128 v8, v[34:37]
	ds_store_b128 v8, v[53:56] offset:256
	ds_store_b128 v8, v[69:72] offset:2048
	ds_store_b128 v8, v[85:88] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v20
	ds_load_b128 v[11:14], v20 offset:128
	ds_load_b128 v[15:18], v20 offset:4096
	ds_load_b128 v[22:25], v20 offset:4224
	v_xad_u32 v20, 0x8040, v19, 0
	v_xad_u32 v26, 0x4020, v19, 0
	v_xad_u32 v19, 0xc060, v19, 0
	ds_load_b128 v[45:48], v20
	ds_load_b128 v[49:52], v20 offset:128
	ds_load_b128 v[53:56], v20 offset:4096
	ds_load_b128 v[57:60], v20 offset:4224
	ds_load_b128 v[61:64], v19 offset:4096
	ds_load_b128 v[65:68], v19
	ds_load_b128 v[69:72], v19 offset:128
	ds_load_b128 v[73:76], v19 offset:4224
	ds_load_b128 v[28:31], v26
	ds_load_b128 v[32:35], v26 offset:128
	ds_load_b128 v[36:39], v26 offset:4096
	ds_load_b128 v[41:44], v26 offset:4224
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v40, 2, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[3:4]
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v27.h
	v_mov_b16_e32 v1.l, v21.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v19, s59, s68, v40
	v_add_co_ci_u32_e64 v20, null, s69, 0, s59
	v_add_co_u32 v77, s59, s68, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v78, null, s69, 0, s59
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[3:4]
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v3, 0x7f, v0
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, s68, v6
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s69, s74, 31
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[70:71], v[77:78]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s74, s69
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v3, s75, 7, v3
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[72:73], v[77:78]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v78, v36, 4, v28
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v73, 4, v69
	v_lshl_or_b32 v69, v16, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 2, v4
	v_add_nc_u32_e32 v28, 36, v4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[72:73], v[19:20]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v62, 4, v66
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v74, 4, v70
	v_lshl_or_b32 v66, v17, 4, v9
	v_lshl_or_b32 v70, v38, 4, v30
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s68, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 4, v4
	v_add_nc_u32_e32 v30, 38, v4
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v47, v55, 4, v47
	v_lshl_or_b32 v55, v63, 4, v67
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v75, 4, v71
	v_lshl_or_b32 v67, v18, 4, v10
	v_lshl_or_b32 v71, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 6, v4
	v_add_nc_u32_e32 v31, 40, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v77, v15, 4, v7
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v53, v61, 4, v65
	v_lshl_or_b32 v61, v22, 4, v11
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v65, v41, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 8, v4
	v_add_nc_u32_e32 v32, 42, v4
	v_mad_u64_u32 v[6:7], null, v4, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v23, 4, v12
	v_lshl_or_b32 v42, v42, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 10, v4
	v_add_nc_u32_e32 v33, 44, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v73, v37, 4, v29
	v_lshl_or_b32 v63, v24, 4, v13
	v_lshl_or_b32 v43, v43, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 12, v4
	v_add_nc_u32_e32 v34, 46, v4
	v_mad_u64_u32 v[7:8], null, v8, s72, v[3:4]
	v_mad_u64_u32 v[28:29], null, v28, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v64, 4, v68
	v_lshl_or_b32 v64, v25, 4, v14
	v_lshl_or_b32 v44, v44, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 14, v4
	v_add_nc_u32_e32 v35, 48, v4
	v_mad_u64_u32 v[8:9], null, v9, s72, v[3:4]
	v_mad_u64_u32 v[29:30], null, v30, s72, v[3:4]
	v_add_nc_u32_e32 v15, 16, v4
	v_add_nc_u32_e32 v36, 50, v4
	v_mad_u64_u32 v[9:10], null, v10, s72, v[3:4]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[3:4]
	v_add_nc_u32_e32 v16, 18, v4
	v_add_nc_u32_e32 v37, 52, v4
	v_mad_u64_u32 v[10:11], null, v11, s72, v[3:4]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[3:4]
	v_add_nc_u32_e32 v17, 20, v4
	v_add_nc_u32_e32 v22, 28, v4
	v_add_nc_u32_e32 v38, 54, v4
	v_mad_u64_u32 v[11:12], null, v12, s72, v[3:4]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[70:71], v[19:20]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 22, v4
	v_add_nc_u32_e32 v24, 30, v4
	v_add_nc_u32_e32 v39, 56, v4
	v_mad_u64_u32 v[12:13], null, v13, s72, v[3:4]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[3:4]
	v_add_nc_u32_e32 v19, 24, v4
	v_add_nc_u32_e32 v25, 32, v4
	v_add_nc_u32_e32 v40, 58, v4
	v_mad_u64_u32 v[13:14], null, v14, s72, v[3:4]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 26, v4
	v_add_nc_u32_e32 v26, 34, v4
	v_add_nc_u32_e32 v41, 60, v4
	v_add_nc_u32_e32 v68, 62, v4
	v_mad_u64_u32 v[14:15], null, v15, s72, v[3:4]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[3:4]
	v_mad_u64_u32 v[15:16], null, v16, s72, v[3:4]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[3:4]
	v_mad_u64_u32 v[16:17], null, v17, s72, v[3:4]
	v_mad_u64_u32 v[22:23], null, v22, s72, v[3:4]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_mov_b32 s68, s64
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[17:18], null, v18, s72, v[3:4]
	v_mad_u64_u32 v[23:24], null, v24, s72, v[3:4]
	v_mad_u64_u32 v[38:39], null, v39, s72, v[3:4]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[3:4]
	v_mad_u64_u32 v[24:25], null, v25, s72, v[3:4]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v77, v6, s[68:71], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[19:20], null, v20, s72, v[3:4]
	v_mad_u64_u32 v[25:26], null, v26, s72, v[3:4]
	v_mad_u64_u32 v[40:41], null, v41, s72, v[3:4]
	v_mad_u64_u32 v[3:4], null, v68, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v7, s60
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v60, v76, 4, v72
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v78, v4, s[68:71], 0 offen
	buffer_store_b8 v45, v6, s[68:71], 0 offen
	buffer_store_b8 v53, v7, s[68:71], 0 offen
	buffer_store_b8 v61, v8, s[68:71], 0 offen
	buffer_store_b8 v65, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v49, v4, s[68:71], 0 offen
	buffer_store_b8 v57, v6, s[68:71], 0 offen
	buffer_store_b8 v69, v7, s[68:71], 0 offen
	buffer_store_b8 v73, v8, s[68:71], 0 offen
	buffer_store_b8 v46, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s39, s40
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s37, s38
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s30, s31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v54, v4, s[68:71], 0 offen
	buffer_store_b8 v62, v6, s[68:71], 0 offen
	buffer_store_b8 v42, v7, s[68:71], 0 offen
	buffer_store_b8 v50, v8, s[68:71], 0 offen
	buffer_store_b8 v58, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s28, s29
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s26, s27
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s24, s25
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s22, s23
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s20, s21
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v66, v4, s[68:71], 0 offen
	buffer_store_b8 v70, v6, s[68:71], 0 offen
	buffer_store_b8 v47, v7, s[68:71], 0 offen
	buffer_store_b8 v55, v8, s[68:71], 0 offen
	buffer_store_b8 v63, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s18, s19
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s16, s17
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s10, s11
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v43, v4, s[68:71], 0 offen
	buffer_store_b8 v51, v6, s[68:71], 0 offen
	buffer_store_b8 v59, v7, s[68:71], 0 offen
	buffer_store_b8 v67, v8, s[68:71], 0 offen
	buffer_store_b8 v71, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s74, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v40, vcc_lo
	s_clause 0x4
	buffer_store_b8 v48, v4, s[68:71], 0 offen
	buffer_store_b8 v56, v6, s[68:71], 0 offen
	buffer_store_b8 v64, v7, s[68:71], 0 offen
	buffer_store_b8 v44, v8, s[68:71], 0 offen
	buffer_store_b8 v52, v9, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v89
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshlrev_b32_e32 v4, 3, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_and_b32 v6, 2, v6
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v60, v3, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v3, 0, v4
	v_add3_u32 v4, v7, v6, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s74, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v3, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	s_and_b32 vcc_lo, vcc_lo, s76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v2, s75, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp68:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 208
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
		.amdhsa_next_free_sgpr 77
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 77
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 208
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21688
; TotalNumSgprs: 79
; NumVgprs: 256
; ScratchSize: 208
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 79
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 208
    .sgpr_count:     79
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 51
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
