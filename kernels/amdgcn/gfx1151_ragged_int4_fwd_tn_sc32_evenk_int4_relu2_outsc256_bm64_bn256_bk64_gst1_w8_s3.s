	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v10, 0
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
	v_add_co_u32 v2, s2, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s2
	v_add_nc_u32_e32 v9, s66, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[72:73], v[2:3]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s28, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v25, 15, v0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v65, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s16, s[0:1], 0x58
	s_load_b32 s29, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s66, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s0
	v_mov_b32_e32 v26, 0
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s4
	s_addc_u32 s7, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[1:2]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s17, s[6:7], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[1:2]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, s66, v25
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[72:73], v[7:8]
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v4, 48, v1
	v_dual_mov_b32 v103, 0 :: v_dual_lshlrev_b32 v8, 5, v0
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_lshl_or_b32 v10, s75, 8, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v37, v4, s28
	v_dual_mov_b32 v105, 0 :: v_dual_and_b32 v4, 0xf0, v0
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s16, s16, s74
	v_dual_mov_b32 v101, 0 :: v_dual_lshlrev_b32 v14, 1, v0
	v_dual_mov_b32 v100, 0 :: v_dual_lshlrev_b32 v13, 2, v4
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v8, 32, v8
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[11:12], null, s16, s17, v[10:11]
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v14, 28, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v8, 0, v13, v8
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v102, v8, v14
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[13:14], null, s74, 3, v[11:12]
	v_mad_u64_u32 v[14:15], null, s74, 5, v[11:12]
	v_lshrrev_b32_e32 v7, 1, v0
	v_mad_u64_u32 v[15:16], null, s74, 6, v[11:12]
	v_mad_u64_u32 v[16:17], null, s74, 7, v[11:12]
	v_mad_u64_u32 v[17:18], null, s74, 9, v[11:12]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[5:6]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_mad_u64_u32 v[18:19], null, s74, 10, v[11:12]
	v_mad_u64_u32 v[19:20], null, s74, 11, v[11:12]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v34, v1, s28
	v_mul_lo_u32 v35, v2, s28
	v_mul_lo_u32 v36, v3, s28
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v43, 0, v25
	v_or_b32_e32 v1, 0x300, v0
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v3, 0x700, v0
	v_or_b32_e32 v5, 0xb00, v0
	v_or_b32_e32 v6, 0xf00, v0
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v7, 0x70, v7
	v_dual_mov_b32 v85, 0 :: v_dual_lshlrev_b32 v4, 1, v4
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[20:21], null, s74, 12, v[11:12]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v27, 6, v0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[21:22], null, s74, 13, v[11:12]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	s_mov_b32 s4, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[22:23], null, s74, 14, v[11:12]
	v_mad_u64_u32 v[23:24], null, s74, 15, v[11:12]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s1, s1, s6
	s_and_b32 s3, s5, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s30, s28, s17
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s20, s10
	s_mov_b32 s21, s11
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v89, 0, v1
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v90, 0, v2
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v91, 0, v3
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v92, 0, v5
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v93, 0, v6
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v95, v43, v7
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v104, 0, v4
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v1, s4
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v28, 4, v27
	v_or_b32_e32 v29, 8, v27
	v_or_b32_e32 v32, 12, v27
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v69, s74, v11
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v70, s74, 1, v11
	v_lshl_add_u32 v72, s74, 2, v11
	v_lshl_add_u32 v77, s74, 3, v11
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v87, 0, v0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v2, s5
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v6, s9
	v_mov_b32_e32 v8, s11
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s5, s4, 4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v110, s5, v27
	v_or_b32_e32 v112, s5, v28
	v_or_b32_e32 v113, s5, v29
	v_or_b32_e32 v114, s5, v32
	s_mul_i32 s6, s5, s74
	v_mad_u64_u32 v[110:111], null, v110, s29, v[9:10]
	v_mad_u64_u32 v[111:112], null, v112, s29, v[9:10]
	v_mad_u64_u32 v[112:113], null, v113, s29, v[9:10]
	v_mad_u64_u32 v[113:114], null, v114, s29, v[9:10]
	v_add_nc_u32_e32 v115, s6, v11
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	v_add_nc_u32_e32 v116, s6, v69
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	v_add_nc_u32_e32 v117, s6, v70
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	v_add_nc_u32_e32 v118, s6, v13
	v_cndmask_b32_e64 v113, 0x80000000, v113, s2
	v_add_nc_u32_e32 v119, s6, v72
	v_add_nc_u32_e32 v120, s6, v14
	v_add_nc_u32_e32 v121, s6, v15
	v_add_nc_u32_e32 v122, s6, v16
	v_add_nc_u32_e32 v123, s6, v77
	v_add_nc_u32_e32 v124, s6, v17
	v_add_nc_u32_e32 v125, s6, v18
	v_add_nc_u32_e32 v126, s6, v19
	v_add_nc_u32_e32 v127, s6, v20
	v_add_nc_u32_e32 v128, s6, v21
	v_add_nc_u32_e32 v129, s6, v22
	v_add_nc_u32_e32 v130, s6, v23
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u8 v148, v115, s[20:23], 0 offen
	buffer_load_u8 v149, v116, s[20:23], 0 offen
	buffer_load_u8 v150, v117, s[20:23], 0 offen
	buffer_load_u8 v151, v118, s[20:23], 0 offen
	buffer_load_u8 v152, v119, s[20:23], 0 offen
	buffer_load_u8 v153, v120, s[20:23], 0 offen
	buffer_load_u8 v154, v121, s[20:23], 0 offen
	buffer_load_u8 v155, v122, s[20:23], 0 offen
	buffer_load_u8 v156, v123, s[20:23], 0 offen
	buffer_load_u8 v157, v124, s[20:23], 0 offen
	buffer_load_u8 v158, v125, s[20:23], 0 offen
	buffer_load_u8 v159, v126, s[20:23], 0 offen
	buffer_load_u8 v160, v127, s[20:23], 0 offen
	buffer_load_u8 v161, v128, s[20:23], 0 offen
	buffer_load_u8 v162, v129, s[20:23], 0 offen
	buffer_load_u8 v163, v130, s[20:23], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v110, v110, s[16:19], 0 offen
	buffer_load_u8 v111, v111, s[16:19], 0 offen
	buffer_load_u8 v112, v112, s[16:19], 0 offen
	buffer_load_u8 v113, v113, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s5, s4, s30
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(3)
	ds_store_b8 v87, v110
	s_waitcnt vmcnt(2)
	ds_store_b8 v87, v111 offset:256
	s_waitcnt vmcnt(1)
	ds_store_b8 v87, v112 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v89, v113
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v164, v43 offset:320
	ds_load_u8 v165, v43 offset:256
	ds_load_u8 v132, v43 offset:336
	ds_load_u8 v133, v43 offset:272
	ds_load_u8 v116, v43 offset:352
	ds_load_u8 v117, v43 offset:288
	ds_load_u8 v110, v43 offset:368
	ds_load_u8 v111, v43 offset:304
	ds_load_u8 v166, v43 offset:448
	ds_load_u8 v167, v43 offset:384
	ds_load_u8 v136, v43 offset:464
	ds_load_u8 v137, v43 offset:400
	ds_load_u8 v120, v43 offset:480
	ds_load_u8 v121, v43 offset:416
	ds_load_u8 v112, v43 offset:496
	ds_load_u8 v113, v43 offset:432
	ds_load_u8 v168, v43 offset:64
	ds_load_u8 v169, v43
	ds_load_u8 v140, v43 offset:80
	ds_load_u8 v124, v43 offset:96
	ds_load_u8 v114, v43 offset:112
	ds_load_u8 v141, v43 offset:16
	ds_load_u8 v125, v43 offset:32
	ds_load_u8 v115, v43 offset:48
	ds_load_u8 v170, v43 offset:192
	ds_load_u8 v171, v43 offset:128
	ds_load_u8 v172, v43 offset:208
	ds_load_u8 v173, v43 offset:144
	ds_load_u8 v134, v43 offset:224
	ds_load_u8 v135, v43 offset:160
	ds_load_u8 v118, v43 offset:240
	ds_load_u8 v119, v43 offset:176
	ds_load_u8 v174, v43 offset:960
	ds_load_u8 v175, v43 offset:896
	ds_load_u8 v176, v43 offset:976
	ds_load_u8 v177, v43 offset:912
	ds_load_u8 v138, v43 offset:992
	ds_load_u8 v139, v43 offset:928
	ds_load_u8 v122, v90
	ds_load_u8 v123, v43 offset:944
	ds_load_u8 v178, v43 offset:832
	ds_load_u8 v179, v43 offset:768
	ds_load_u8 v180, v43 offset:848
	ds_load_u8 v181, v43 offset:784
	ds_load_u8 v142, v43 offset:864
	ds_load_u8 v143, v43 offset:800
	ds_load_u8 v126, v43 offset:880
	ds_load_u8 v127, v43 offset:816
	ds_load_u8 v182, v43 offset:704
	ds_load_u8 v183, v43 offset:640
	ds_load_u8 v184, v43 offset:720
	ds_load_u8 v185, v43 offset:656
	ds_load_u8 v144, v43 offset:736
	ds_load_u8 v145, v43 offset:672
	ds_load_u8 v128, v43 offset:752
	ds_load_u8 v129, v43 offset:688
	ds_load_u8 v186, v43 offset:576
	ds_load_u8 v187, v43 offset:512
	ds_load_u8 v188, v43 offset:592
	ds_load_u8 v189, v43 offset:528
	ds_load_u8 v146, v43 offset:608
	ds_load_u8 v147, v43 offset:544
	ds_load_u8 v130, v43 offset:624
	ds_load_u8 v131, v43 offset:560
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v87, v148
	ds_store_b8 v87, v149 offset:256
	ds_store_b8 v87, v150 offset:512
	ds_store_b8 v87, v152 offset:1024
	ds_store_b8 v87, v153 offset:1280
	ds_store_b8 v87, v154 offset:1536
	ds_store_b8 v87, v156 offset:2048
	ds_store_b8 v87, v157 offset:2304
	ds_store_b8 v87, v158 offset:2560
	ds_store_b8 v87, v160 offset:3072
	ds_store_b8 v87, v161 offset:3328
	ds_store_b8 v89, v151
	ds_store_b8 v91, v155
	ds_store_b8 v92, v159
	ds_store_b8 v87, v162 offset:3584
	ds_store_b8 v93, v163
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v148, v95 offset:1280
	ds_load_u8 v149, v95 offset:1024
	ds_load_u8 v151, v95 offset:1792
	ds_load_u8 v153, v95 offset:1536
	v_perm_b32 v150, v165, v164, 0xc0c0004
	v_perm_b32 v152, v167, v166, 0xc0c0004
	ds_load_u8 v164, v95 offset:1920
	ds_load_u8 v165, v95 offset:1664
	v_perm_b32 v154, v169, v168, 0xc0c0004
	v_perm_b32 v155, v171, v170, 0xc0c0004
	v_lshl_or_b32 v157, v152, 16, v150
	ds_load_u8 v166, v95 offset:1408
	ds_load_u8 v167, v95 offset:1152
	v_perm_b32 v132, v133, v132, 0xc0c0004
	v_perm_b32 v133, v137, v136, 0xc0c0004
	v_lshl_or_b32 v156, v155, 16, v154
	v_perm_b32 v136, v141, v140, 0xc0c0004
	v_perm_b32 v137, v173, v172, 0xc0c0004
	v_perm_b32 v140, v181, v180, 0xc0c0004
	v_perm_b32 v141, v177, v176, 0xc0c0004
	v_lshl_or_b32 v133, v133, 16, v132
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v95 offset:256
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v150, v153, v151, 0xc0c0004
	ds_load_u8 v151, v95
	ds_load_u8 v168, v95 offset:896
	ds_load_u8 v169, v95 offset:640
	ds_load_u8 v170, v95 offset:384
	ds_load_u8 v171, v95 offset:128
	v_lshl_or_b32 v132, v137, 16, v136
	v_lshl_or_b32 v137, v141, 16, v140
	v_perm_b32 v117, v121, v120, 0xc0c0004
	v_lshl_or_b32 v159, v150, 16, v148
	v_perm_b32 v148, v179, v178, 0xc0c0004
	v_perm_b32 v150, v187, v186, 0xc0c0004
	v_perm_b32 v120, v125, v124, 0xc0c0004
	v_perm_b32 v121, v135, v134, 0xc0c0004
	v_perm_b32 v124, v143, v142, 0xc0c0004
	v_perm_b32 v125, v139, v138, 0xc0c0004
	v_lshl_or_b32 v117, v117, 16, v116
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_lshl_or_b32 v116, v121, 16, v120
	v_perm_b32 v111, v113, v112, 0xc0c0004
	v_lshl_or_b32 v121, v125, 16, v124
	v_perm_b32 v112, v115, v114, 0xc0c0004
	ds_load_u8 v153, v95 offset:3072
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v95 offset:768
	ds_load_u8 v152, v95 offset:512
	v_perm_b32 v113, v119, v118, 0xc0c0004
	v_perm_b32 v114, v131, v130, 0xc0c0004
	v_perm_b32 v115, v129, v128, 0xc0c0004
	v_lshl_or_b32 v119, v111, 16, v110
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s5, s74
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v118, v113, 16, v112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_perm_b32 v152, v183, v182, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v158, v151, 16, v149
	v_perm_b32 v149, v175, v174, 0xc0c0004
	ds_load_u8 v151, v95 offset:3328
	v_lshl_or_b32 v160, v152, 16, v150
	ds_load_u8 v174, v95 offset:3968
	ds_load_u8 v175, v95 offset:3712
	ds_load_u8 v178, v95 offset:3456
	ds_load_u8 v179, v95 offset:3200
	v_lshl_or_b32 v161, v149, 16, v148
	ds_load_u8 v149, v95 offset:3840
	ds_load_u8 v150, v95 offset:3584
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v148, v153, v151, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v95 offset:2304
	ds_load_u8 v151, v95 offset:2048
	ds_load_u8 v182, v95 offset:2944
	ds_load_u8 v183, v95 offset:2688
	ds_load_u8 v186, v95 offset:2432
	ds_load_u8 v187, v95 offset:2176
	v_lshl_or_b32 v163, v149, 16, v148
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v95 offset:2816
	ds_load_u8 v152, v95 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v151, 16, v150
	v_wmma_i32_16x16x16_iu4 v[148:155], v[158:159], v[156:157], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[148:155], v[162:163], v[160:161], v[148:155] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v190, v148
	v_cvt_f32_i32_e32 v191, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v192, v150
	v_cvt_f32_i32_e32 v193, v151
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v148, v167, v166, 0xc0c0004
	v_perm_b32 v149, v165, v164, 0xc0c0004
	v_perm_b32 v150, v171, v170, 0xc0c0004
	v_perm_b32 v151, v169, v168, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v194, v152
	v_cvt_f32_i32_e32 v195, v153
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v165, v149, 16, v148
	v_perm_b32 v148, v179, v178, 0xc0c0004
	v_lshl_or_b32 v164, v151, 16, v150
	v_perm_b32 v149, v175, v174, 0xc0c0004
	v_perm_b32 v150, v187, v186, 0xc0c0004
	v_perm_b32 v151, v183, v182, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v196, v154
	v_cvt_f32_i32_e32 v197, v155
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v167, v149, 16, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v166, v151, 16, v150
	v_wmma_i32_16x16x16_iu4 v[148:155], v[164:165], v[156:157], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[148:155], v[166:167], v[160:161], v[148:155] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v156, v148
	v_cvt_f32_i32_e32 v157, v149
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v148, v189, v188, 0xc0c0004
	v_perm_b32 v149, v185, v184, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v160, v150
	v_cvt_f32_i32_e32 v161, v151
	v_cvt_f32_i32_e32 v168, v152
	v_cvt_f32_i32_e32 v169, v153
	v_cvt_f32_i32_e32 v170, v154
	v_cvt_f32_i32_e32 v171, v155
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v136, v149, 16, v148
	v_wmma_i32_16x16x16_iu4 v[148:155], v[158:159], v[132:133], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[148:155], v[162:163], v[136:137], v[148:155] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v141, v149
	v_cvt_f32_i32_e32 v172, v150
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v173, v151
	v_cvt_f32_i32_e32 v174, v152
	v_cvt_f32_i32_e32 v175, v153
	v_cvt_f32_i32_e32 v176, v154
	v_cvt_f32_i32_e32 v177, v155
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[148:155], v[164:165], v[132:133], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v132, v147, v146, 0xc0c0004
	v_perm_b32 v133, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[148:155], v[166:167], v[136:137], v[148:155] neg_lo:[1,1,0]
	v_lshl_or_b32 v120, v133, 16, v132
	v_wmma_i32_16x16x16_iu4 v[132:139], v[158:159], v[116:117], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[132:139], v[162:163], v[120:121], v[132:139] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v124, v132
	v_cvt_f32_i32_e32 v125, v133
	v_cvt_f32_i32_e32 v142, v134
	v_cvt_f32_i32_e32 v143, v135
	v_cvt_f32_i32_e32 v144, v136
	v_cvt_f32_i32_e32 v145, v137
	v_cvt_f32_i32_e32 v146, v138
	v_cvt_f32_i32_e32 v147, v139
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[132:139], v[164:165], v[116:117], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v116, v127, v126, 0xc0c0004
	v_perm_b32 v117, v123, v122, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v155, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[132:139], v[166:167], v[120:121], v[132:139] neg_lo:[1,1,0]
	v_lshl_or_b32 v120, v115, 16, v114
	v_lshl_or_b32 v121, v117, 16, v116
	v_wmma_i32_16x16x16_iu4 v[110:117], v[158:159], v[118:119], v[1:8] neg_lo:[1,1,0]
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v158, v10, s5, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[110:117], v[162:163], v[120:121], v[110:117] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v122, v110
	v_cvt_f32_i32_e32 v123, v111
	v_cvt_f32_i32_e32 v126, v112
	v_cvt_f32_i32_e32 v127, v113
	v_cvt_f32_i32_e32 v128, v114
	v_cvt_f32_i32_e32 v129, v115
	v_cvt_f32_i32_e32 v130, v116
	v_cvt_f32_i32_e32 v131, v117
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[110:117], v[164:165], v[118:119], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v118, s4, v34, 1
	v_add_lshl_u32 v119, s4, v35, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v138, v138
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[110:117], v[166:167], v[120:121], v[110:117] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v120, s4, v36, 1
	v_add_lshl_u32 v121, s4, v37, 1
	v_cndmask_b32_e32 v118, 0x80000000, v118, vcc_lo
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v110, v110
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v120, 0x80000000, v120, s1
	v_cndmask_b32_e64 v121, 0x80000000, v121, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v158, v158, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v118, v118, s[24:27], 0 offen
	buffer_load_u16 v119, v119, s[24:27], 0 offen
	buffer_load_u16 v120, v120, s[24:27], 0 offen
	buffer_load_u16 v121, v121, s[24:27], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v113, v113
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v139, v139
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s4, s28
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v118, 16, v118
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v102, v158
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v158, v190, v118
	v_mul_f32_e32 v159, v191, v118
	v_mul_f32_e32 v162, v192, v118
	v_mul_f32_e32 v163, v193, v118
	v_mul_f32_e32 v164, v194, v118
	v_mul_f32_e32 v165, v195, v118
	v_mul_f32_e32 v166, v196, v118
	v_mul_f32_e32 v167, v197, v118
	v_mul_f32_e32 v156, v156, v118
	v_mul_f32_e32 v157, v157, v118
	v_mul_f32_e32 v160, v160, v118
	v_mul_f32_e32 v161, v161, v118
	v_mul_f32_e32 v168, v168, v118
	v_mul_f32_e32 v169, v169, v118
	v_mul_f32_e32 v170, v170, v118
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v171, v171, v118 :: v_dual_lshlrev_b32 v118, 16, v119
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v119, v140, v118
	v_mul_f32_e32 v140, v141, v118
	v_mul_f32_e32 v141, v172, v118
	v_mul_f32_e32 v172, v173, v118
	v_mul_f32_e32 v173, v174, v118
	v_mul_f32_e32 v174, v175, v118
	v_mul_f32_e32 v175, v176, v118
	v_mul_f32_e32 v176, v177, v118
	v_mul_f32_e32 v148, v148, v118
	v_mul_f32_e32 v149, v149, v118
	v_mul_f32_e32 v150, v150, v118
	v_mul_f32_e32 v151, v151, v118
	v_mul_f32_e32 v152, v152, v118
	v_mul_f32_e32 v153, v153, v118
	v_mul_f32_e32 v154, v154, v118
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v155, v155, v118 :: v_dual_lshlrev_b32 v118, 16, v120
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v120, 16, v121
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v121, v124, v118
	v_mul_f32_e32 v124, v125, v118
	v_mul_f32_e32 v125, v142, v118
	v_mul_f32_e32 v142, v143, v118
	v_mul_f32_e32 v123, v123, v120
	v_mul_f32_e32 v127, v127, v120
	v_mul_f32_e32 v143, v144, v118
	v_mul_f32_e32 v177, v111, v120
	v_mul_f32_e32 v178, v112, v120
	v_mul_f32_e32 v179, v113, v120
	v_mul_f32_e32 v180, v114, v120
	v_mul_f32_e32 v144, v145, v118
	v_mul_f32_e32 v145, v146, v118
	v_dual_mul_f32 v146, v147, v118 :: v_dual_mul_f32 v147, v110, v120
	v_mul_f32_e32 v181, v115, v120
	v_mul_f32_e32 v182, v116, v120
	v_mul_f32_e32 v183, v117, v120
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[110:113], v104
	ds_load_b128 v[114:117], v104 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v122, v122, v120
	v_mul_f32_e32 v126, v126, v120
	v_mul_f32_e32 v128, v128, v120
	v_mul_f32_e32 v129, v129, v120
	v_mul_f32_e32 v130, v130, v120
	v_dual_mul_f32 v131, v131, v120 :: v_dual_mul_f32 v132, v132, v118
	v_mul_f32_e32 v133, v133, v118
	v_mul_f32_e32 v134, v134, v118
	v_mul_f32_e32 v136, v136, v118
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v139, v139, v118 :: v_dual_fmac_f32 v108, v162, v112
	v_mul_f32_e32 v138, v138, v118
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v85, v119, v110 :: v_dual_fmac_f32 v44, v129, v115
	v_dual_fmac_f32 v48, v123, v111 :: v_dual_fmac_f32 v47, v126, v112
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v135, v135, v118 :: v_dual_fmac_f32 v78, v176, v117
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v46, v127, v113 :: v_dual_fmac_f32 v103, v166, v116
	v_dual_fmac_f32 v64, v124, v111 :: v_dual_fmac_f32 v63, v125, v112
	v_fmac_f32_e32 v79, v175, v116
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v137, v137, v118 :: v_dual_fmac_f32 v60, v144, v115
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v59, v145, v116 :: v_dual_fmac_f32 v62, v142, v113
	v_dual_fmac_f32 v65, v121, v110 :: v_dual_fmac_f32 v42, v130, v116
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[118:121], v104 offset:512
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v49, v122, v110
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[122:125], v104 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v26, v158, v110 :: v_dual_fmac_f32 v109, v159, v111
	v_dual_fmac_f32 v107, v163, v113 :: v_dual_fmac_f32 v84, v140, v111
	v_dual_fmac_f32 v83, v141, v112 :: v_dual_fmac_f32 v82, v172, v113
	v_fmac_f32_e32 v105, v165, v115
	v_fmac_f32_e32 v101, v167, v117
	v_dual_fmac_f32 v81, v173, v114 :: v_dual_fmac_f32 v80, v174, v115
	v_fmac_f32_e32 v61, v143, v114
	v_fmac_f32_e32 v45, v128, v114
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v41, v131, v117 :: v_dual_fmac_f32 v100, v156, v118
	v_fmac_f32_e32 v33, v179, v121
	v_dual_fmac_f32 v99, v157, v119 :: v_dual_fmac_f32 v58, v146, v117
	v_dual_fmac_f32 v98, v160, v120 :: v_dual_fmac_f32 v97, v161, v121
	v_dual_fmac_f32 v106, v164, v114 :: v_dual_fmac_f32 v55, v134, v120
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v76, v148, v118 :: v_dual_fmac_f32 v67, v154, v124
	v_dual_fmac_f32 v75, v149, v119 :: v_dual_fmac_f32 v74, v150, v120
	v_fmac_f32_e32 v73, v151, v121
	v_dual_fmac_f32 v57, v132, v118 :: v_dual_fmac_f32 v38, v178, v120
	v_fmac_f32_e32 v56, v133, v119
	v_fmac_f32_e32 v54, v135, v121
	v_dual_fmac_f32 v40, v147, v118 :: v_dual_fmac_f32 v51, v138, v124
	v_dual_fmac_f32 v39, v177, v119 :: v_dual_fmac_f32 v96, v168, v122
	v_dual_fmac_f32 v94, v169, v123 :: v_dual_fmac_f32 v71, v152, v122
	v_dual_fmac_f32 v88, v170, v124 :: v_dual_fmac_f32 v53, v136, v122
	v_dual_fmac_f32 v86, v171, v125 :: v_dual_fmac_f32 v31, v180, v122
	v_fmac_f32_e32 v68, v153, v123
	v_fmac_f32_e32 v66, v155, v125
	v_fmac_f32_e32 v52, v137, v123
	v_fmac_f32_e32 v50, v139, v125
	v_fmac_f32_e32 v30, v181, v123
	v_fmac_f32_e32 v24, v182, v124
	v_fmac_f32_e32 v12, v183, v125
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v5, v106, v106 :: v_dual_max_f32 v6, v105, v105
	v_dual_max_f32 v7, v103, v103 :: v_dual_max_f32 v8, v101, v101
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v10, v100, v100 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v17, v88, v88 :: v_dual_max_f32 v18, v86, v86
	v_dual_max_f32 v19, v85, v85 :: v_dual_max_f32 v20, v84, v84
	v_max_f32_e32 v21, v83, v83
	v_dual_max_f32 v29, v76, v76 :: v_dual_max_f32 v32, v75, v75
	v_dual_max_f32 v34, v74, v74 :: v_dual_max_f32 v35, v73, v73
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v36, v71, v71 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v63, v63, v63 :: v_dual_max_f32 v62, v62, v62
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v60, v60, v60
	v_max_f32_e32 v59, v59, v59
	v_dual_max_f32 v53, v53, v53 :: v_dual_max_f32 v52, v52, v52
	v_dual_max_f32 v51, v51, v51 :: v_dual_max_f32 v50, v50, v50
	v_max_f32_e32 v49, v49, v49
	v_dual_max_f32 v1, v26, v26 :: v_dual_max_f32 v2, v109, v109
	v_dual_max_f32 v3, v108, v108 :: v_dual_max_f32 v4, v107, v107
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v11, v99, v99
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v15, v96, v96
	v_dual_max_f32 v13, v98, v98 :: v_dual_max_f32 v14, v97, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_max_f32 v16, v94, v94 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v22, v82, v82 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v26, v80, v80 :: v_dual_max_f32 v23, v81, v81
	v_dual_max_f32 v28, v78, v78 :: v_dual_max_f32 v27, v79, v79
	v_max_f32_e32 v22, 0, v22
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v37, v68, v68
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v43, v67, v67
	v_dual_max_f32 v66, v66, v66 :: v_dual_max_f32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_max_f32 v64, v64, v64 :: v_dual_max_f32 v37, 0, v37
	v_dual_max_f32 v84, 0, v62 :: v_dual_max_f32 v85, 0, v61
	v_dual_max_f32 v58, v58, v58 :: v_dual_max_f32 v87, 0, v59
	v_dual_max_f32 v56, v56, v56 :: v_dual_max_f32 v57, v57, v57
	v_dual_max_f32 v54, v54, v54 :: v_dual_max_f32 v55, v55, v55
	v_max_f32_e32 v88, 0, v58
	v_dual_max_f32 v94, 0, v52 :: v_dual_max_f32 v95, 0, v51
	v_dual_max_f32 v48, v48, v48 :: v_dual_max_f32 v97, 0, v49
	v_dual_max_f32 v46, v46, v46 :: v_dual_max_f32 v47, v47, v47
	v_dual_max_f32 v44, v44, v44 :: v_dual_max_f32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v98, 0, v48
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v41, v41, v41
	v_dual_max_f32 v40, v40, v40 :: v_dual_max_f32 v39, v39, v39
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v33, v33, v33
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v31, v31, v31
	v_max_f32_e32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v107, 0, v33
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v43, 0, v43 :: v_dual_max_f32 v82, 0, v65
	v_dual_max_f32 v81, 0, v66 :: v_dual_max_f32 v64, 0, v64
	v_dual_max_f32 v83, 0, v63 :: v_dual_max_f32 v86, 0, v60
	v_dual_max_f32 v89, 0, v57 :: v_dual_max_f32 v90, 0, v56
	v_dual_max_f32 v91, 0, v55 :: v_dual_max_f32 v92, 0, v54
	v_dual_max_f32 v93, 0, v53 :: v_dual_max_f32 v96, 0, v50
	v_dual_max_f32 v99, 0, v47 :: v_dual_max_f32 v100, 0, v46
	v_dual_max_f32 v101, 0, v45 :: v_dual_max_f32 v102, 0, v44
	v_dual_max_f32 v103, 0, v42 :: v_dual_max_f32 v104, 0, v40
	v_max_f32_e32 v41, 0, v41
	v_dual_max_f32 v105, 0, v39 :: v_dual_max_f32 v106, 0, v38
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v108, 0, v30
	v_dual_max_f32 v109, 0, v24 :: v_dual_mul_f32 v68, v2, v2
	v_dual_max_f32 v110, 0, v12 :: v_dual_mul_f32 v65, v1, v1
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v70, v3, v3 :: v_dual_mul_f32 v71, v4, v4
	v_dual_mul_f32 v74, v5, v5 :: v_dual_mul_f32 v75, v6, v6
	v_dual_mul_f32 v77, v7, v7 :: v_dual_mul_f32 v78, v8, v8
	v_dual_mul_f32 v80, v10, v10 :: v_dual_mul_f32 v79, v11, v11
	v_dual_mul_f32 v76, v13, v13 :: v_dual_mul_f32 v73, v14, v14
	v_dual_mul_f32 v72, v15, v15 :: v_dual_mul_f32 v69, v16, v16
	v_dual_mul_f32 v67, v17, v17 :: v_dual_mul_f32 v66, v18, v18
	v_dual_mul_f32 v63, v19, v19 :: v_dual_mul_f32 v62, v20, v20
	v_dual_mul_f32 v61, v21, v21 :: v_dual_mul_f32 v60, v22, v22
	v_dual_mul_f32 v59, v23, v23 :: v_dual_mul_f32 v58, v26, v26
	v_dual_mul_f32 v57, v27, v27 :: v_dual_mul_f32 v56, v28, v28
	v_dual_mul_f32 v55, v29, v29 :: v_dual_mul_f32 v54, v32, v32
	v_dual_mul_f32 v53, v34, v34 :: v_dual_mul_f32 v52, v35, v35
	v_dual_mul_f32 v51, v36, v36 :: v_dual_mul_f32 v50, v37, v37
	v_dual_mul_f32 v49, v43, v43 :: v_dual_mul_f32 v48, v81, v81
	v_dual_mul_f32 v47, v82, v82 :: v_dual_mul_f32 v46, v64, v64
	v_dual_mul_f32 v45, v83, v83 :: v_dual_mul_f32 v44, v84, v84
	v_dual_mul_f32 v43, v85, v85 :: v_dual_mul_f32 v42, v86, v86
	v_dual_mul_f32 v40, v87, v87 :: v_dual_mul_f32 v39, v88, v88
	v_dual_mul_f32 v38, v89, v89 :: v_dual_mul_f32 v37, v90, v90
	v_dual_mul_f32 v36, v91, v91 :: v_dual_mul_f32 v35, v92, v92
	v_dual_mul_f32 v33, v93, v93 :: v_dual_mul_f32 v32, v94, v94
	v_dual_mul_f32 v30, v95, v95 :: v_dual_mul_f32 v29, v96, v96
	v_dual_mul_f32 v27, v97, v97 :: v_dual_mul_f32 v26, v98, v98
	v_dual_mul_f32 v24, v99, v99 :: v_dual_mul_f32 v21, v101, v101
	v_dual_mul_f32 v22, v100, v100 :: v_dual_mul_f32 v19, v103, v103
	v_dual_mul_f32 v20, v102, v102 :: v_dual_mul_f32 v17, v104, v104
	v_dual_mul_f32 v18, v41, v41 :: v_dual_mul_f32 v15, v106, v106
	v_dual_mul_f32 v16, v105, v105 :: v_dual_mul_f32 v13, v31, v31
	v_dual_mul_f32 v14, v107, v107 :: v_dual_mul_f32 v11, v109, v109
	v_dual_mul_f32 v12, v108, v108 :: v_dual_mov_b32 v5, v9
	v_mul_f32_e32 v10, v110, v110
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v6, 7, v0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v31, v77, v78, v80
	s_mov_b32 s26, 0x76543210
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v87, 8, v0
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 62, v6
	v_or_b32_e32 v3, 60, v6
	v_or_b32_e32 v9, 58, v6
	v_or_b32_e32 v23, 50, v6
	v_or_b32_e32 v28, 36, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s0
	v_add_co_u32 v3, s0, s66, v3
	v_add_co_u32 v81, s1, s66, v9
	v_add_co_ci_u32_e64 v4, null, s67, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[1:2]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 56, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 54, v6
	v_or_b32_e32 v9, 52, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s6
	v_add_co_u32 v3, s6, s66, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s67, 0, s6
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[72:73], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s10, s66, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[81:82]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s10
	v_add_co_u32 v81, s10, s66, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[64:65], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[72:73], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 48, v6
	v_or_b32_e32 v4, 46, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[72:73], v[1:2]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 44, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s14, s66, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s14
	v_add_co_u32 v3, s14, s66, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v23, 42, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s14
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[72:73], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s18, s66, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[64:65], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[72:73], v[81:82]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s18
	v_add_co_u32 v81, s18, s66, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[64:65], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[72:73], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 40, v6
	v_or_b32_e32 v4, 38, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[72:73], v[1:2]
.Ltmp6:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v62, v62 :: v_dual_max_f32 v64, v27, v27
.Ltmp7:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s22, s66, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s22
	v_add_co_u32 v83, s22, s66, v4
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v68, v68 :: v_dual_max_f32 v4, v65, v65
.Ltmp9:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v8, 0x80, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[72:73], v[1:2]
.Ltmp10:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v71, v74, v75
	v_max_f32_e32 v1, v4, v3
	v_max3_f32 v3, v79, v76, v73
	v_max3_f32 v4, v72, v69, v67
	v_dual_max_f32 v23, v63, v63 :: v_dual_max_f32 v34, v46, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v1, v1, v70, v2
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v86, 1, v8
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v3, v4, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v3, v23, v9
	v_max3_f32 v4, v60, v59, v58
	v_max3_f32 v9, v54, v53, v52
	v_max3_f32 v23, v51, v50, v49
	v_max3_f32 v1, v1, v31, v2
	v_max3_f32 v2, v57, v56, v55
	v_max3_f32 v3, v3, v61, v4
	v_max3_f32 v31, v37, v36, v35
	v_max3_f32 v4, v9, v23, v48
	v_max3_f32 v23, v44, v43, v42
.Ltmp13:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[64:65], v[81:82]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v3, v2, v4
	v_max_f32_e32 v41, v47, v47
	v_max3_f32 v3, v40, v39, v38
.Ltmp15:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[72:73], v[81:82]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s27, s66, v28
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v41, v34
	v_max3_f32 v34, v33, v32, v30
	v_max_f32_e32 v41, v26, v26
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v88, 3, v8
	s_barrier
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v9, v45, v23
	v_max3_f32 v9, v31, v34, v29
	v_max_f32_e32 v23, v64, v41
	v_max3_f32 v31, v22, v21, v20
	v_max3_f32 v34, v16, v15, v14
	v_max3_f32 v41, v13, v12, v11
	v_max3_f32 v3, v4, v3, v9
	v_max3_f32 v4, v19, v18, v17
	v_max3_f32 v9, v23, v24, v31
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v64, v1, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, v34, v41, v10
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v34, v2, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v3, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp22:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v9, v4, v23
	v_dual_max_f32 v28, v34, v34 :: v_dual_max_f32 v31, v64, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v34, v41, v41 :: v_dual_and_b32 v9, 3, v0
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v41, 4, v0
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v28
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v28, v4, s26, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v34
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v34, v9, 9, 0
	v_lshlrev_b32_e32 v64, 5, v9
	v_and_b32_e32 v23, 0x60, v0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v1, v1, v31
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v31, 4, v0
	v_lshl_add_u32 v34, v41, 2, v34
	v_lshl_add_u32 v89, v41, 6, 0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v28
.Ltmp32:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[64:65], v[81:82]
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v85, 0x680, v31, v64
	v_xor_b32_e32 v64, v64, v23
	v_lshl_add_u32 v34, v87, 4, v34
.Ltmp34:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[72:73], v[81:82]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[64:65], v[83:84]
.Ltmp35:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v85, v85, v23
.Ltmp36:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_bfe_i32 v7, v0, 7, 1
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v28, v34, v86, v64
.Ltmp38:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v34, 34, v6
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v64, v89, v88, v85
.Ltmp40:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v89.h, 0
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v28, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v64
.Ltmp42:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v28, 32, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v85, s26, s66, v34
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v34, 30, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s67, 0, s26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_co_u32 v81, s31, s66, v28
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[72:73], v[83:84]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s31
	v_add_co_u32 v83, s31, s66, v34
	v_add_co_ci_u32_e64 v84, null, s67, 0, s31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[64:65], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[72:73], v[81:82]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v64, 28, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[64:65], v[83:84]
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v28, v1
	v_dual_mov_b32 v34, v2 :: v_dual_max_f32 v1, v1, v1
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v4, v4
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v28, v28 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v81, v3
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v28, v28, v28
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp49:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[72:73], v[83:84]
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v1, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v34, v2, v34 :: v_dual_max_f32 v81, v81, v81
.Ltmp51:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s36, s66, v64
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v64, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v82, v4 :: v_dual_max_f32 v3, v3, v81
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v83, v34
.Ltmp55:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v64, v64 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v82, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[72:73], v[1:2]
.Ltmp58:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v64, v64
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v83, v83
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v81, v3
.Ltmp62:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v64, 26, v6
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v28, v1
.Ltmp64:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[64:65], v[85:86]
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v34, v2
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v34, v82, v82
.Ltmp68:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[72:73], v[85:86]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v83, v2 :: v_dual_add_nc_u32 v86, 0, v8
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v81, v81
.Ltmp71:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s38, s66, v64
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v64, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v28 :: v_dual_max_f32 v4, v4, v34
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v85, v83, v83
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
	v_mov_b32_e32 v34, v4
.Ltmp77:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v84, 24, v6
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v64, v64, v64
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v28, v3
.Ltmp80:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s38
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v64
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v28, v28 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s39, s66, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v64, v34, v34
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v34, 4, v9
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v28, v28
	v_max_f32_e32 v2, v2, v85
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v85, 1, v23
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v64 :: v_dual_lshlrev_b32 v9, 3, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v3, v3, v28 :: v_dual_lshlrev_b32 v28, 5, v41
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v41, 0, v34
	v_add3_u32 v64, v86, v85, v9
.Ltmp91:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v85, 22, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s39
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp92:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v9, v41, v28, v9
	ds_store_b128 v64, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp93:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v28, 18, v6
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[1:4], v9
.Ltmp95:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 20, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v85, s39, s66, v85
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[64:65], v[81:82]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s67, 0, s39
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[72:73], v[81:82]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s44, s66, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[64:65], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[72:73], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s44
	v_add_co_u32 v83, s44, s66, v28
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 16, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[64:65], v[81:82]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v4, v4, v4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[72:73], v[81:82]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s48, s66, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v28, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 14, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[64:65], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[72:73], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v41, null, 0x40e00000, 0x40e00000, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s48, s66, v1
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 12, v6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v1, v41
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[64:65], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[72:73], v[85:86]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s48
	v_add_co_u32 v85, s48, s66, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 10, v6
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, v3, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s67, 0, s48
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v64, -v41, v1, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[64:65], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[72:73], v[81:82]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v81, s54, s66, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 8, v6
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	v_fmac_f32_e32 v1, v64, v1
	v_div_scale_f32 v64, vcc_lo, v28, 0x40e00000, v28
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[64:65], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[72:73], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s67, 0, s54
	v_add_co_u32 v83, s54, s66, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[64:65], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[72:73], v[85:86]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s67, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v9, v64, v1 :: v_dual_max_f32 v2, v2, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[64:65], v[81:82]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v86, v85
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[72:73], v[81:82]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[64:65], v[83:84]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v81, -v41, v9, v64
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[72:73], v[83:84]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v83, 0x2b8cbccc, v2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v82, 6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v9, v81, v1 :: v_dual_lshlrev_b32 v8, 3, v8
	v_max_f32_e32 v81, 0x2b8cbccc, v4
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v83
	v_fma_f32 v2, -v85, v86, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v41, v9, v64
	v_div_scale_f32 v64, s60, v3, 0x40e00000, v3
	v_rcp_f32_e32 v84, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v2, v86
	v_div_fmas_f32 v9, v41, v1, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s58, s66, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v9, v9, 0x40e00000, v28
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v81
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v4, v84, 1.0
	v_mul_f32_e32 v41, v64, v86
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[1:2]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v88, v87
	v_fmac_f32_e32 v84, v82, v84
	v_fma_f32 v28, -v85, v41, v64
	v_div_scale_f32 v82, s61, v83, 0x40e00000, v83
	s_mov_b32 vcc_lo, s60
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v41, v28, v86 :: v_dual_mul_f32 v90, v82, v84
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v28.l, v9.h
	v_mov_b16_e32 v28.h, v89.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v91, -v87, v88, 1.0
	v_fma_f32 v1, -v85, v41, v64
	v_div_scale_f32 v64, s62, v81, 0x40e00000, v81
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v28
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v28, -v4, v90, v82
	v_fmac_f32_e32 v88, v91, v88
	v_div_fmas_f32 v1, v1, v86, v41
	s_mov_b32 vcc_lo, s61
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v9, v9, v2, 0x7fff
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 4, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v1, v1, 0x40e00000, v3
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v7, 0x2010, v7
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v85, 0xffff0000, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v89.l, v1.h
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v7, v7, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v92, null, v85, v85, v71
	v_div_scale_f32 v91, null, v85, v85, v70
	v_div_scale_f32 v98, null, v85, v85, v74
	v_rcp_f32_e32 v94, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v97, -v92, v94, 1.0
	v_fmac_f32_e32 v94, v97, v94
	v_div_scale_f32 v97, null, v85, v85, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v99, v97
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v90, v28, v84
	v_mul_f32_e32 v28, v64, v88
	v_fma_f32 v3, -v4, v90, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v4, -v87, v28, v64
	v_div_fmas_f32 v41, v3, v84, v90
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v28, v4, v88
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s60, s66, v2
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v85, v85, v65
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v87, v28, v64
	v_div_fixup_f32 v64, v41, 0x40e00000, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v85, v85, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v86, v84
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v88, v28
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v28, 1, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v83
	v_div_scale_f32 v88, vcc_lo, v65, v85, v65
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v81
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v81.h, v89.h
	v_mov_b16_e32 v81.l, v64.h
	v_add3_u32 v1, v1, v28, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v41, -v84, v86, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v89.l, v2.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v28, 1, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v83, v87, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v82, 1, v89
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v89, v91
	v_div_scale_f32 v93, s60, v68, v85, v68
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v28, v64, v28, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v81, v87
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v81, 0xffff0000, v1
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v9.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v93, v87
	v_fma_f32 v96, -v91, v89, 1.0
	v_fmac_f32_e32 v86, v41, v86
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v41, 2, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v96, v89
	v_mul_f32_e32 v90, v88, v86
	v_div_scale_f32 v96, s61, v70, v85, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v84, v90, v88
	v_fmac_f32_e32 v90, v64, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v84, -v84, v90, v88
	v_fma_f32 v88, -v83, v95, v93
	v_div_fmas_f32 v84, v84, v86, v90
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v95, v88, v87
	v_rcp_f32_e32 v88, v98
	v_mul_f32_e32 v86, v96, v89
	v_div_scale_f32 v90, s62, v71, v85, v71
	v_div_fixup_f32 v65, v84, v85, v65
	v_fma_f32 v83, -v83, v95, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v91, v86, v96
	v_mul_f32_e32 v93, v90, v94
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v100, -v98, v88, 1.0
	v_div_fmas_f32 v83, v83, v87, v95
	v_fmac_f32_e32 v86, v84, v89
	v_fma_f32 v84, -v92, v93, v90
	v_div_scale_f32 v87, s60, v74, v85, v74
	v_fmac_f32_e32 v88, v100, v88
	v_fma_f32 v95, -v97, v99, 1.0
	v_div_fixup_f32 v68, v83, v85, v68
	v_fma_f32 v83, -v91, v86, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v93, v84, v94 :: v_dual_mul_f32 v84, v87, v88
	v_fmac_f32_e32 v99, v95, v99
	v_div_scale_f32 v95, null, v85, v85, v77
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v91, s63, v75, v85, v75
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v92, v93, v90
	v_fma_f32 v89, -v98, v84, v87
	v_rcp_f32_e32 v90, v95
	v_div_scale_f32 v96, null, v85, v85, v78
	v_mul_f32_e32 v92, v91, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v89, v88
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v89, v96
	v_div_fmas_f32 v86, v86, v94, v93
	v_fma_f32 v93, -v97, v92, v91
	v_div_fixup_f32 v70, v83, v85, v70
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v95, v90, 1.0
	v_fma_f32 v83, -v98, v84, v87
	v_div_fixup_f32 v71, v86, v85, v71
	v_fmac_f32_e32 v92, v93, v99
	v_div_scale_f32 v86, s61, v77, v85, v77
	v_fmac_f32_e32 v90, v94, v90
	v_fma_f32 v87, -v96, v89, 1.0
	v_div_scale_f32 v93, null, v85, v85, v80
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v94, null, v85, v85, v79
	v_div_fmas_f32 v83, v83, v88, v84
	v_fma_f32 v84, -v97, v92, v91
	v_dual_mul_f32 v88, v86, v90 :: v_dual_fmac_f32 v89, v87, v89
	v_rcp_f32_e32 v87, v93
	v_div_scale_f32 v91, s60, v78, v85, v78
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v74, v83, v85, v74
	v_div_fmas_f32 v84, v84, v99, v92
	v_fma_f32 v92, -v95, v88, v86
	v_mul_f32_e32 v97, v91, v89
	v_rcp_f32_e32 v99, v94
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v93, v87, 1.0
	v_fmac_f32_e32 v88, v92, v90
	v_fma_f32 v83, -v96, v97, v91
	v_div_scale_f32 v92, null, v85, v85, v76
	v_div_fixup_f32 v75, v84, v85, v75
	v_fmac_f32_e32 v87, v98, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v2, v82, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v97, v83, v89 :: v_dual_and_b32 v82, 0xffff0000, v28
	v_div_scale_f32 v84, s62, v80, v85, v80
	v_fma_f32 v98, -v94, v99, 1.0
	v_fma_f32 v86, -v95, v88, v86
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v83, v84, v87 :: v_dual_and_b32 v64, 0xffff0000, v2
	v_fmac_f32_e32 v99, v98, v99
	v_div_scale_f32 v98, s63, v79, v85, v79
	v_div_fmas_f32 v86, v86, v90, v88
	v_fma_f32 v88, -v96, v97, v91
	v_div_scale_f32 v100, null, v85, v85, v73
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v90, -v93, v83, v84
	v_mul_f32_e32 v91, v98, v99
	v_fma_f32 v96, -v92, v95, 1.0
	v_div_fmas_f32 v88, v88, v89, v97
	v_rcp_f32_e32 v89, v100
	v_fmac_f32_e32 v83, v90, v87
	v_fma_f32 v90, -v94, v91, v98
	v_fmac_f32_e32 v95, v96, v95
	v_div_scale_f32 v96, s60, v76, v85, v76
	v_div_fixup_f32 v77, v86, v85, v77
	v_div_fixup_f32 v78, v88, v85, v78
	v_fma_f32 v84, -v93, v83, v84
	v_fmac_f32_e32 v91, v90, v99
	v_mul_f32_e32 v86, v96, v95
	v_fma_f32 v88, -v100, v89, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v93, s61, v73, v85, v73
	v_div_fmas_f32 v83, v84, v87, v83
	v_fma_f32 v84, -v94, v91, v98
	v_fma_f32 v87, -v92, v86, v96
	v_fmac_f32_e32 v89, v88, v89
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v90, null, v85, v85, v72
	v_div_fmas_f32 v84, v84, v99, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v87, v95 :: v_dual_mul_f32 v91, v93, v89
	v_rcp_f32_e32 v88, v90
	v_div_fixup_f32 v80, v83, v85, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v79, v84, v85, v79
	v_fma_f32 v83, -v92, v86, v96
	v_fma_f32 v84, -v100, v91, v93
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v94, null, v85, v85, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v83, v83, v95, v86
	v_fmac_f32_e32 v91, v84, v89
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v90, v88, 1.0
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v87, v94
	v_div_fixup_f32 v76, v83, v85, v76
	v_fma_f32 v83, -v100, v91, v93
	v_div_scale_f32 v95, s60, v69, v85, v69
	v_div_scale_f32 v92, s62, v72, v85, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v83, v83, v89, v91
	v_div_scale_f32 v91, s61, v67, v85, v67
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v97, null, v85, v85, v67
	v_fma_f32 v96, -v94, v87, 1.0
	v_div_fixup_f32 v73, v83, v85, v73
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v86, v97
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v96, null, v85, v85, v66
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v79, v79
	v_rndne_f32_e32 v73, v73
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v28.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v99, v96
	v_fma_f32 v100, -v97, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v100, v86
	v_mul_f32_e32 v98, v95, v87
	v_fma_f32 v89, -v94, v98, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v98, v89, v87 :: v_dual_mul_f32 v89, v91, v86
	v_mul_f32_e32 v84, v92, v88
	v_fma_f32 v93, -v90, v84, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v84, v93, v88
	v_fma_f32 v93, -v96, v99, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v90, v84, v92
	v_div_scale_f32 v92, null, v82, v82, v63
	v_fmac_f32_e32 v99, v93, v99
	v_div_scale_f32 v90, s63, v66, v85, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v93, v92
	v_div_fmas_f32 v83, v83, v88, v84
	v_fma_f32 v84, -v94, v98, v95
	v_fma_f32 v88, -v97, v89, v91
	v_mul_f32_e32 v94, v90, v99
	v_div_scale_f32 v95, null, v82, v82, v62
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v89, v88, v86
	v_div_fmas_f32 v84, v84, v87, v98
	v_rcp_f32_e32 v87, v95
	v_fma_f32 v88, -v96, v94, v90
	v_fma_f32 v98, -v92, v93, 1.0
	v_div_fixup_f32 v72, v83, v85, v72
	v_div_fixup_f32 v69, v84, v85, v69
	v_fma_f32 v83, -v97, v89, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v94, v88, v99 :: v_dual_fmac_f32 v93, v98, v93
	v_div_scale_f32 v84, s60, v63, v82, v63
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v88, -v95, v87, 1.0
	v_div_scale_f32 v91, null, v82, v82, v61
	v_div_fmas_f32 v83, v83, v86, v89
	v_fma_f32 v86, -v96, v94, v90
	v_mul_f32_e32 v89, v84, v93
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v87, v88, v87
	v_rcp_f32_e32 v88, v91
	v_div_scale_f32 v90, s61, v62, v82, v62
	v_div_scale_f32 v96, null, v82, v82, v60
	v_div_fmas_f32 v86, v86, v99, v94
	v_fma_f32 v94, -v92, v89, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v97, v90, v87
	v_rcp_f32_e32 v99, v96
	v_div_fixup_f32 v67, v83, v85, v67
	v_div_fixup_f32 v66, v86, v85, v66
	v_fmac_f32_e32 v89, v94, v93
	v_div_scale_f32 v86, null, v82, v82, v59
	v_fma_f32 v98, -v91, v88, 1.0
	v_fma_f32 v83, -v95, v97, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v92, v89, v84
	v_rcp_f32_e32 v92, v86
	v_div_scale_f32 v85, s62, v61, v82, v61
	v_fmac_f32_e32 v88, v98, v88
	v_fma_f32 v94, -v96, v99, 1.0
	v_fmac_f32_e32 v97, v83, v87
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v98, null, v82, v82, v58
	v_mul_f32_e32 v83, v85, v88
	v_div_fmas_f32 v84, v84, v93, v89
	v_fma_f32 v89, -v95, v97, v90
	v_fma_f32 v95, -v86, v92, 1.0
	v_fmac_f32_e32 v99, v94, v99
	v_div_scale_f32 v94, s63, v60, v82, v60
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v90, -v91, v83, v85
	v_div_fmas_f32 v87, v89, v87, v97
	v_rcp_f32_e32 v89, v98
	v_dual_fmac_f32 v92, v95, v92 :: v_dual_mul_f32 v93, v94, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v90, v88
	v_div_fixup_f32 v62, v87, v82, v62
	v_div_scale_f32 v95, s60, v59, v82, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v96, v93, v94
	v_div_fixup_f32 v63, v84, v82, v63
	v_fma_f32 v84, -v91, v83, v85
	v_fma_f32 v87, -v98, v89, 1.0
	v_mul_f32_e32 v85, v95, v92
	v_fmac_f32_e32 v93, v90, v99
	v_div_scale_f32 v90, null, v82, v82, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v87, v89
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v91, s61, v58, v82, v58
	v_rcp_f32_e32 v87, v90
	v_div_fmas_f32 v83, v84, v88, v83
	v_fma_f32 v84, -v96, v93, v94
	v_fma_f32 v88, -v86, v85, v95
	v_div_scale_f32 v94, null, v82, v82, v56
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v61, v83, v82, v61
	v_div_fmas_f32 v84, v84, v99, v93
	v_mul_f32_e32 v93, v91, v89
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v90, v87, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v60, v84, v82, v60
	v_fma_f32 v84, -v98, v93, v91
	v_fmac_f32_e32 v87, v96, v87
	v_fmac_f32_e32 v85, v88, v92
	v_rcp_f32_e32 v88, v94
	v_div_scale_f32 v96, null, v82, v82, v55
	v_fmac_f32_e32 v93, v84, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fma_f32 v83, -v86, v85, v95
	v_div_scale_f32 v86, s62, v57, v82, v57
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v94, v88, 1.0
	v_mul_f32_e32 v84, v86, v87
	v_div_fmas_f32 v83, v83, v92, v85
	v_rcp_f32_e32 v85, v96
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, null, v82, v82, v54
	v_div_fixup_f32 v59, v83, v82, v59
	v_fma_f32 v83, -v98, v93, v91
	v_fma_f32 v91, -v90, v84, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v98, v95
	v_div_scale_f32 v92, s60, v56, v82, v56
	v_fma_f32 v99, -v96, v85, 1.0
	v_div_fmas_f32 v83, v83, v89, v93
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v99, v85
	v_div_fixup_f32 v58, v83, v82, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v95, v98, 1.0
	v_div_scale_f32 v99, null, v82, v82, v48
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v93, v98
	v_fmac_f32_e32 v84, v91, v87
	v_div_scale_f32 v91, s61, v55, v82, v55
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v90, v84, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v86, v91, v85
	v_div_scale_f32 v90, null, v82, v82, v53
	v_div_fmas_f32 v83, v83, v87, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v96, v86, v91
	v_mul_f32_e32 v97, v92, v88
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v57, v83, v82, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v87, v85
	v_fma_f32 v89, -v94, v97, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v96, v86, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v97, v89, v88
	v_div_scale_f32 v89, s63, v54, v82, v54
	v_div_scale_f32 v91, null, v82, v82, v51
	v_fma_f32 v84, -v94, v97, v92
	v_rcp_f32_e32 v92, v90
	v_div_scale_f32 v94, null, v82, v82, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v84, v84, v88, v97
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v87, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v56, v84, v82, v56
	v_fma_f32 v97, -v90, v92, 1.0
	v_div_scale_f32 v84, s60, v53, v82, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v97, v92
	v_mul_f32_e32 v93, v89, v98
	v_div_fmas_f32 v83, v83, v85, v86
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v86, v84, v92
	v_fma_f32 v88, -v95, v93, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v55, v83, v82, v55
	v_fmac_f32_e32 v93, v88, v98
	v_fma_f32 v88, -v94, v87, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v95, v93, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v89, s61, v52, v82, v52
	v_rcp_f32_e32 v88, v91
	v_div_scale_f32 v95, null, v82, v82, v50
	v_mul_f32_e32 v96, v89, v87
	v_div_fmas_f32 v85, v85, v98, v93
	v_fma_f32 v93, -v90, v86, v84
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v98, v95
	v_fma_f32 v83, -v94, v96, v89
	v_div_fixup_f32 v54, v85, v82, v54
	v_fmac_f32_e32 v86, v93, v92
	v_div_scale_f32 v93, null, v82, v82, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v96, v83, v87
	v_fma_f32 v97, -v91, v88, 1.0
	v_fma_f32 v84, -v90, v86, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v90, v93
	v_div_scale_f32 v85, s62, v51, v82, v51
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v92, v86
	v_fma_f32 v86, -v94, v96, v89
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v53, v84, v82, v53
	v_div_fmas_f32 v86, v86, v87, v96
	v_rcp_f32_e32 v87, v99
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v93, v90, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v52, v86, v82, v52
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s60, v49, v82, v49
	v_fmac_f32_e32 v88, v97, v88
	v_fma_f32 v97, -v95, v98, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v86, -v99, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v98, v97, v98 :: v_dual_fmac_f32 v87, v86, v87
	v_mul_f32_e32 v83, v85, v88
	v_div_scale_f32 v97, s63, v50, v82, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v89, -v91, v83, v85
	v_mul_f32_e32 v92, v97, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v83, v89, v88
	v_fma_f32 v89, -v95, v92, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v89, v98
	v_div_scale_f32 v89, null, v81, v81, v47
	v_rcp_f32_e32 v86, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v89, v86, 1.0
	v_fmac_f32_e32 v86, v96, v86
	v_fma_f32 v84, -v91, v83, v85
	v_mul_f32_e32 v85, v94, v90
	v_div_scale_f32 v91, s61, v48, v82, v48
	v_div_scale_f32 v96, null, v81, v81, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v83, v84, v88, v83
	v_fma_f32 v84, -v95, v92, v97
	v_fma_f32 v88, -v93, v85, v94
	v_div_scale_f32 v95, null, v81, v81, v46
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v51, v83, v82, v51
	v_fmac_f32_e32 v85, v88, v90
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v84, v84, v98, v92
	v_mul_f32_e32 v92, v91, v87
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v83, -v93, v85, v94
	v_div_scale_f32 v93, s62, v47, v81, v47
	v_div_fixup_f32 v50, v84, v82, v50
	v_fma_f32 v84, -v99, v92, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v95, v88, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v84, v87
	v_fmac_f32_e32 v88, v94, v88
	v_div_fmas_f32 v83, v83, v90, v85
	v_rcp_f32_e32 v85, v96
	v_div_scale_f32 v94, null, v81, v81, v44
	v_div_scale_f32 v90, s60, v46, v81, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v49, v83, v82, v49
	v_fma_f32 v83, -v99, v92, v91
	v_rcp_f32_e32 v98, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v97, v90, v88
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v99, -v96, v85, 1.0
	v_div_fmas_f32 v83, v83, v87, v92
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v87, -v95, v97, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v85, v99, v85 :: v_dual_mul_f32 v84, v93, v86
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v94, v98, 1.0
	v_div_fixup_f32 v48, v83, v82, v48
	v_fmac_f32_e32 v97, v87, v88
	v_div_scale_f32 v87, s63, v44, v81, v44
	v_fma_f32 v91, -v89, v84, v93
	v_fmac_f32_e32 v98, v92, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v91, v86
	v_div_scale_f32 v91, s61, v45, v81, v45
	v_mul_f32_e32 v92, v87, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v89, v84, v93
	v_mul_f32_e32 v83, v91, v85
	v_div_scale_f32 v93, null, v81, v81, v42
	v_div_scale_f32 v89, null, v81, v81, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v82, v82, v86, v84
	v_fma_f32 v84, -v95, v97, v90
	v_fma_f32 v86, -v96, v83, v91
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v90, v89
	v_div_fixup_f32 v47, v82, v81, v47
	v_div_fmas_f32 v84, v84, v88, v97
	v_fmac_f32_e32 v83, v86, v85
	v_rcp_f32_e32 v86, v93
	v_fma_f32 v88, -v94, v92, v87
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v46, v84, v81, v46
	v_fma_f32 v82, -v96, v83, v91
	v_div_scale_f32 v91, null, v81, v81, v40
	v_fmac_f32_e32 v92, v88, v98
	v_fma_f32 v95, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v88, -v93, v86, 1.0
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v83, -v94, v92, v87
	v_rcp_f32_e32 v87, v91
	v_div_scale_f32 v94, null, v81, v81, v39
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, s61, v42, v81, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v97, v94
	v_fmac_f32_e32 v90, v95, v90
	v_div_scale_f32 v84, s60, v43, v81, v43
	v_div_fmas_f32 v83, v83, v98, v92
	v_mul_f32_e32 v95, v88, v86
	v_fma_f32 v96, -v91, v87, 1.0
	v_div_fixup_f32 v45, v82, v81, v45
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v44, v83, v81, v44
	v_fma_f32 v82, -v93, v95, v88
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v83, s62, v40, v81, v40
	v_mul_f32_e32 v85, v84, v90
	v_fma_f32 v96, -v94, v97, 1.0
	v_div_scale_f32 v98, null, v81, v81, v37
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s63, v39, v81, v39
	v_dual_fmac_f32 v95, v82, v86 :: v_dual_mul_f32 v82, v83, v87
	v_fma_f32 v92, -v89, v85, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v92, v90
	v_div_scale_f32 v92, null, v81, v81, v38
	v_fma_f32 v84, -v89, v85, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v89, v92
	v_div_fmas_f32 v84, v84, v90, v85
	v_mul_f32_e32 v90, v96, v97
	v_fma_f32 v85, -v93, v95, v88
	v_fma_f32 v88, -v91, v82, v83
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v43, v84, v81, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v92, v89, 1.0
	v_div_fmas_f32 v85, v85, v86, v95
	v_fmac_f32_e32 v82, v88, v87
	v_fma_f32 v88, -v94, v90, v96
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s60, v38, v81, v38
	v_fma_f32 v83, -v91, v82, v83
	v_fmac_f32_e32 v90, v88, v97
	v_rcp_f32_e32 v86, v98
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v93, v89
	v_div_fixup_f32 v42, v85, v81, v42
	v_div_fmas_f32 v82, v83, v87, v82
	v_fma_f32 v83, -v94, v90, v96
	v_div_scale_f32 v94, null, v81, v81, v35
	v_fma_f32 v87, -v92, v84, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v40, v82, v81, v40
	v_div_scale_f32 v88, null, v81, v81, v36
	v_fma_f32 v85, -v98, v86, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v84, v87, v89
	v_rcp_f32_e32 v87, v94
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v91, s61, v37, v81, v37
	v_fma_f32 v82, -v92, v84, v93
	v_div_fmas_f32 v83, v83, v97, v90
	v_div_scale_f32 v92, s62, v36, v81, v36
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v94, v87, 1.0
	v_div_fixup_f32 v39, v83, v81, v39
	v_div_fmas_f32 v82, v82, v89, v84
	v_div_scale_f32 v89, s60, v35, v81, v35
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v93, null, v81, v81, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v38, v82, v81, v38
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v96, v89, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v86, v85, v86
	v_rcp_f32_e32 v85, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v91, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v98, v90, v91
	v_fma_f32 v95, -v88, v85, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v90, v83, v86
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v81, v81, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v98, v90, v91
	v_mul_f32_e32 v83, v92, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v84, v95
	v_fma_f32 v91, -v88, v83, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v83, v91, v85
	v_fma_f32 v98, -v95, v84, 1.0
	v_fma_f32 v91, -v93, v97, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v84, v98, v84 :: v_dual_fmac_f32 v97, v91, v97
	v_div_fmas_f32 v82, v82, v86, v90
	v_fma_f32 v86, -v94, v96, v89
	v_div_scale_f32 v90, s61, v33, v81, v33
	v_div_scale_f32 v91, null, v81, v81, v30
	v_div_fixup_f32 v37, v82, v81, v37
	v_fma_f32 v82, -v88, v83, v92
	v_fmac_f32_e32 v96, v86, v87
	v_mul_f32_e32 v86, v90, v84
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v88, s63, v32, v81, v32
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v83, -v94, v96, v89
	v_fma_f32 v85, -v95, v86, v90
	v_rcp_f32_e32 v89, v91
	v_div_scale_f32 v94, null, v81, v81, v29
	v_mul_f32_e32 v92, v88, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v84
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v85, v94
	v_div_fmas_f32 v83, v83, v87, v96
	v_fma_f32 v87, -v93, v92, v88
	v_div_fixup_f32 v36, v82, v81, v36
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v91, v89, 1.0
	v_fma_f32 v82, -v95, v86, v90
	v_div_fixup_f32 v35, v83, v81, v35
	v_fmac_f32_e32 v92, v87, v97
	v_div_scale_f32 v83, s60, v30, v81, v30
	v_fmac_f32_e32 v89, v96, v89
	v_fma_f32 v87, -v94, v85, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v95, null, v64, v64, v26
	v_div_fmas_f32 v82, v82, v84, v86
	v_fma_f32 v84, -v93, v92, v88
	v_mul_f32_e32 v86, v83, v89
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, null, v64, v64, v27
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v88, s61, v29, v81, v29
	v_div_fmas_f32 v84, v84, v97, v92
	v_rcp_f32_e32 v90, v87
	v_fma_f32 v92, -v91, v86, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v93, v88, v85
	v_div_fixup_f32 v33, v82, v81, v33
	v_div_fixup_f32 v32, v84, v81, v32
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v86, v92, v89
	v_fma_f32 v82, -v94, v93, v88
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v97, null, v64, v64, v22
	v_fma_f32 v92, -v87, v90, 1.0
	v_fma_f32 v83, -v91, v86, v83
	v_div_scale_f32 v91, null, v64, v64, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v93, v82, v85 :: v_dual_fmac_f32 v90, v92, v90
	v_div_scale_f32 v82, s62, v27, v64, v27
	v_rcp_f32_e32 v92, v91
	v_fma_f32 v96, -v95, v84, 1.0
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v94, v93, v88
	v_mul_f32_e32 v88, v82, v90
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v84, v96, v84
	v_div_scale_f32 v89, s60, v26, v64, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v96, -v87, v88, v82
	v_fma_f32 v94, -v91, v92, 1.0
	v_rcp_f32_e32 v99, v97
	v_div_fmas_f32 v85, v86, v85, v93
	v_mul_f32_e32 v98, v89, v84
	v_fmac_f32_e32 v88, v96, v90
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s63, v24, v64, v24
	v_div_fixup_f32 v30, v83, v81, v30
	v_div_fixup_f32 v29, v85, v81, v29
	v_fma_f32 v81, -v87, v88, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v93, v94, v92
	v_div_scale_f32 v85, null, v64, v64, v21
	v_fma_f32 v86, -v95, v98, v89
	v_fma_f32 v83, -v97, v99, 1.0
	v_fma_f32 v82, -v91, v93, v94
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v98, v86, v84 :: v_dual_fmac_f32 v99, v83, v99
	v_fmac_f32_e32 v93, v82, v92
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v83, s61, v22, v64, v22
	v_div_fmas_f32 v81, v81, v90, v88
	v_fma_f32 v86, -v95, v98, v89
	v_div_scale_f32 v88, null, v64, v64, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v87, v83, v99
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v27, v81, v64, v27
	v_fma_f32 v89, -v85, v82, 1.0
	v_div_fmas_f32 v84, v86, v84, v98
	v_fma_f32 v86, -v91, v93, v94
	v_rcp_f32_e32 v90, v88
	v_fma_f32 v91, -v97, v87, v83
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s60, v21, v64, v21
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v87, v91, v99
	v_div_fmas_f32 v86, v86, v92, v93
	v_mul_f32_e32 v81, v89, v82
	v_div_fixup_f32 v26, v84, v64, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v88, v90, 1.0
	v_fma_f32 v83, -v97, v87, v83
	v_div_fixup_f32 v24, v86, v64, v24
	v_div_scale_f32 v86, null, v64, v64, v19
	v_fma_f32 v91, -v85, v81, v89
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v90, v84, v90
	v_div_scale_f32 v84, s62, v20, v64, v20
	v_rcp_f32_e32 v92, v86
	v_div_fmas_f32 v83, v83, v99, v87
	v_fmac_f32_e32 v81, v91, v82
	v_div_scale_f32 v91, null, v64, v64, v18
	v_mul_f32_e32 v87, v84, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v22, v83, v64, v22
	v_fma_f32 v83, -v85, v81, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v93, v91
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v85, -v88, v87, v84
	v_fma_f32 v89, -v86, v92, 1.0
	v_div_fmas_f32 v81, v83, v82, v81
	v_div_scale_f32 v83, s60, v19, v64, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v85, v90
	v_fmac_f32_e32 v92, v89, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v21, v81, v64, v21
	v_fma_f32 v81, -v91, v93, 1.0
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v84, -v88, v87, v84
	v_mul_f32_e32 v88, v83, v92
	v_div_scale_f32 v82, null, v64, v64, v17
	v_fmac_f32_e32 v93, v81, v93
	v_div_scale_f32 v81, s61, v18, v64, v18
	v_div_fmas_f32 v84, v84, v90, v87
	v_fma_f32 v87, -v86, v88, v83
	v_rcp_f32_e32 v85, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v90, v81, v93
	v_div_scale_f32 v89, null, v64, v64, v16
	v_fmac_f32_e32 v88, v87, v92
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v91, v90, v81
	v_rcp_f32_e32 v95, v89
	v_div_scale_f32 v96, s62, v17, v64, v17
	v_fma_f32 v83, -v86, v88, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v90, v87, v93
	v_fma_f32 v94, -v82, v85, 1.0
	v_div_fixup_f32 v20, v84, v64, v20
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v92, v88
	v_fma_f32 v81, -v91, v90, v81
	v_div_scale_f32 v88, null, v64, v64, v14
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v94, null, v64, v64, v15
	v_div_fmas_f32 v81, v81, v93, v90
	v_rcp_f32_e32 v90, v88
	v_fma_f32 v97, -v89, v95, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v98, v94
	v_mul_f32_e32 v99, v96, v85
	v_div_fixup_f32 v19, v83, v64, v19
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v95, v97, v95
	v_div_scale_f32 v97, s63, v16, v64, v16
	v_fma_f32 v84, -v82, v99, v96
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v83, -v88, v90, 1.0
	v_div_fixup_f32 v18, v81, v64, v18
	v_fma_f32 v87, -v94, v98, 1.0
	v_div_scale_f32 v92, null, v64, v64, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v83, v90
	v_dual_mul_f32 v86, v97, v95 :: v_dual_fmac_f32 v99, v84, v85
	v_fmac_f32_e32 v98, v87, v98
	v_div_scale_f32 v87, s60, v15, v64, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v89, v86, v97
	v_fma_f32 v82, -v82, v99, v96
	v_div_scale_f32 v83, null, v64, v64, v12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v84, v95
	v_mul_f32_e32 v84, v87, v98
	v_div_fmas_f32 v82, v82, v85, v99
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v89, v86, v97
	v_fma_f32 v89, -v94, v84, v87
	v_div_fixup_f32 v17, v82, v64, v17
	v_div_scale_f32 v82, null, v64, v64, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v85, v85, v95, v86
	v_fmac_f32_e32 v84, v89, v98
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v16, v85, v64, v16
	v_fma_f32 v81, -v94, v84, v87
	v_rcp_f32_e32 v87, v83
	v_div_scale_f32 v85, null, v64, v64, v11
	v_rcp_f32_e32 v94, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v81, v98, v84
	v_rcp_f32_e32 v84, v82
	v_div_scale_f32 v86, vcc_lo, v14, v64, v14
	v_rcp_f32_e32 v89, v85
	v_div_fixup_f32 v15, v81, v64, v15
	v_fma_f32 v93, -v83, v87, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v91, v86, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v98, -v92, v94, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v82, v84, 1.0
	v_fma_f32 v95, -v88, v91, v86
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v93, s61, v12, v64, v12
	v_fmac_f32_e32 v84, v81, v84
	v_div_scale_f32 v81, s60, v13, v64, v13
	v_fmac_f32_e32 v91, v95, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v99, v93, v87
	v_fma_f32 v96, -v85, v89, 1.0
	v_mul_f32_e32 v97, v81, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v88, v91, v86
	v_fma_f32 v88, -v83, v99, v93
	v_fmac_f32_e32 v89, v96, v89
	v_fma_f32 v95, -v82, v97, v81
	v_div_scale_f32 v96, s62, v11, v64, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v99, v88, v87
	v_div_fmas_f32 v86, v86, v90, v91
	v_fmac_f32_e32 v97, v95, v84
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_fma_f32 v83, -v83, v99, v93
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v57, v57, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v82, v97, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v84, v97
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v94, v98, v94
	v_div_fmas_f32 v83, v83, v87, v99
	v_div_scale_f32 v98, s63, v10, v64, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v87, v51
	v_and_b32_e32 v51, 15, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v12, v83, v64, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v83, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v100, v96, v89 :: v_dual_mul_f32 v101, v98, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v81, v64, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s60, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v85, v100, v96
	v_fma_f32 v82, -v92, v101, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v100, v95, v89 :: v_dual_fmac_f32 v101, v82, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_med3_f32 v26, v26, s60, 0x40e00000
	v_med3_f32 v24, v24, s60, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v85, v100, v96
	v_fma_f32 v84, -v92, v101, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_cvt_i32_f32_e32 v90, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v89, v100
	s_mov_b32 vcc_lo, s63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v94, v101
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v101, v16
	v_and_b32_e32 v16, 15, v90
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v90, 16, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v14, v86, v64, v14
	v_div_fixup_f32 v11, v82, v64, v11
	v_div_fixup_f32 v10, v84, v64, v10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v65
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v94, v36
	v_cvt_i32_f32_e32 v96, v21
	v_cvt_i32_f32_e32 v100, v17
	v_cvt_i32_f32_e32 v104, v13
	v_and_b32_e32 v36, 15, v60
	v_and_b32_e32 v60, 15, v38
	v_and_b32_e32 v13, 15, v27
	v_and_b32_e32 v17, 15, v26
	v_and_b32_e32 v21, 15, v24
	v_and_b32_e32 v38, 15, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v22, 13, v0
	v_and_b32_e32 v24, 0x2f0, v31
	v_lshlrev_b32_e32 v26, 8, v90
	v_and_b32_e32 v27, 64, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v68
	v_rndne_f32_e32 v68, v70
	v_rndne_f32_e32 v70, v71
	v_rndne_f32_e32 v71, v74
	v_rndne_f32_e32 v74, v75
	v_rndne_f32_e32 v75, v77
	v_rndne_f32_e32 v77, v78
	v_rndne_f32_e32 v78, v80
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v22, 0xe000, v22, v26
	v_xor_b32_e32 v24, v24, v27
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v78, v78, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v89, v47
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v8, v22, v8, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v91, v43
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v81, v62
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v84, v55
	v_cvt_i32_f32_e32 v105, v12
	v_cvt_i32_f32_e32 v106, v11
	v_cvt_i32_f32_e32 v107, v10
	v_and_b32_e32 v10, 15, v64
	v_and_b32_e32 v11, 15, v63
	v_and_b32_e32 v12, 15, v89
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v22, 0, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v92, v42
	v_cvt_i32_f32_e32 v93, v37
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v97, v20
	v_and_b32_e32 v42, 15, v71
	v_and_b32_e32 v43, 15, v59
	v_and_b32_e32 v20, 15, v45
	v_and_b32_e32 v37, 15, v44
	v_and_b32_e32 v44, 15, v91
	v_and_b32_e32 v45, 15, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v98, v19
	v_cvt_i32_f32_e32 v102, v15
	v_cvt_i32_f32_e32 v103, v14
	v_and_b32_e32 v14, 15, v65
	v_and_b32_e32 v58, 15, v78
	v_and_b32_e32 v15, 15, v81
	v_and_b32_e32 v19, 15, v61
	v_and_b32_e32 v59, 15, v84
	v_and_b32_e32 v61, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v22, v[10:13]
	ds_store_b128 v22, v[42:45] offset:256
	v_xad_u32 v10, v8, 16, 0
	v_lshlrev_b32_e32 v11, 6, v0
	v_lshlrev_b32_e32 v12, 5, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v66
	v_cvt_i32_f32_e32 v85, v54
	v_cvt_i32_f32_e32 v88, v50
	v_and_b32_e32 v46, 15, v74
	v_and_b32_e32 v50, 15, v75
	v_and_b32_e32 v54, 15, v77
	v_and_b32_e32 v66, 15, v76
	v_and_b32_e32 v74, 15, v72
	v_and_b32_e32 v47, 15, v83
	v_and_b32_e32 v75, 15, v87
	v_and_b32_e32 v83, 15, v49
	v_and_b32_e32 v87, 15, v48
	v_and_b32_e32 v48, 15, v92
	v_and_b32_e32 v76, 15, v33
	v_and_b32_e32 v49, 15, v97
	v_and_b32_e32 v77, 15, v104
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v79, v79, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v22, v[58:61] offset:2048
	ds_store_b128 v22, v[74:77] offset:2304
	ds_store_b128 v10, v[14:17]
	ds_store_b128 v10, v[46:49] offset:256
	v_lshlrev_b32_e32 v14, 2, v90
	v_and_or_b32 v11, 0x300, v11, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v95, v35
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v7, v7, v11, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v99, v18
	v_and_b32_e32 v18, 15, v68
	v_and_b32_e32 v35, 15, v70
	v_and_b32_e32 v62, 15, v79
	v_and_b32_e32 v70, 15, v73
	v_and_b32_e32 v78, 15, v69
	v_and_b32_e32 v82, 15, v67
	v_and_b32_e32 v63, 15, v85
	v_and_b32_e32 v67, 15, v53
	v_and_b32_e32 v71, 15, v52
	v_and_b32_e32 v64, 15, v93
	v_and_b32_e32 v68, 15, v94
	v_and_b32_e32 v72, 15, v95
	v_and_b32_e32 v65, 15, v101
	v_and_b32_e32 v69, 15, v102
	v_and_b32_e32 v73, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v13, v8, 32, 0
	v_xad_u32 v8, v8, 48, 0
	v_add_nc_u32_e32 v22, 0, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v86, 15, v80
	v_and_b32_e32 v79, 15, v88
	v_and_b32_e32 v52, 15, v40
	v_and_b32_e32 v80, 15, v32
	v_and_b32_e32 v84, 15, v30
	v_and_b32_e32 v88, 15, v29
	v_and_b32_e32 v53, 15, v98
	v_and_b32_e32 v81, 15, v105
	v_and_b32_e32 v85, 15, v106
	v_and_b32_e32 v89, 15, v107
	v_and_b32_e32 v55, 15, v56
	v_and_b32_e32 v56, 15, v39
	v_and_b32_e32 v57, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v10, v[62:65] offset:2048
	ds_store_b128 v10, v[78:81] offset:2304
	ds_store_b128 v13, v[18:21]
	ds_store_b128 v13, v[50:53] offset:256
	ds_store_b128 v13, v[66:69] offset:2048
	ds_store_b128 v13, v[82:85] offset:2304
	ds_store_b128 v8, v[35:38]
	ds_store_b128 v8, v[54:57] offset:256
	ds_store_b128 v8, v[70:73] offset:2048
	ds_store_b128 v8, v[86:89] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v22
	ds_load_b128 v[14:17], v22 offset:128
	ds_load_b128 v[18:21], v22 offset:4096
	ds_load_b128 v[29:32], v22 offset:4224
	v_xad_u32 v22, 0x8040, v7, 0
	v_xad_u32 v8, 0x4020, v7, 0
	v_xad_u32 v7, 0xc060, v7, 0
	ds_load_b128 v[50:53], v22
	ds_load_b128 v[54:57], v22 offset:128
	ds_load_b128 v[58:61], v22 offset:4096
	ds_load_b128 v[62:65], v22 offset:4224
	ds_load_b128 v[66:69], v7 offset:4096
	ds_load_b128 v[70:73], v7
	ds_load_b128 v[74:77], v7 offset:128
	ds_load_b128 v[78:81], v7 offset:4224
	ds_load_b128 v[33:36], v8
	ds_load_b128 v[37:40], v8 offset:128
	ds_load_b128 v[42:45], v8 offset:4096
	ds_load_b128 v[46:49], v8 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v7, s60, s66, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s67, 0, s60
	v_add_co_u32 v22, s60, s66, v6
	v_add_co_ci_u32_e64 v23, null, s67, 0, s60
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[72:73], v[3:4]
	.loc	1 1247 50 is_stmt 1             ; ragged.py:1247:50
	v_and_b32_e32 v3, 0x7f, v0
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, s66, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[64:65], v[7:8]
	v_cmp_le_i64_e64 s63, s[64:65], v[22:23]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s74, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v3, s75, 7, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v82, v18, 4, v10
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v50, v58, 4, v50
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v66, v29, 4, v14
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s74, s65
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 4, v4
	v_add_nc_u32_e32 v29, 34, v4
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v67, 4, v71
	v_lshl_or_b32 v71, v20, 4, v12
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v68, 4, v72
	v_lshl_or_b32 v68, v31, 4, v16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 6, v4
	v_add_nc_u32_e32 v31, 36, v4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[72:73], v[7:8]
	v_cmp_gt_i64_e64 s64, s[72:73], v[22:23]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v72, v21, 4, v13
	v_lshl_or_b32 v53, v61, 4, v53
	v_lshl_or_b32 v61, v69, 4, v73
	v_lshl_or_b32 v69, v32, 4, v17
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 8, v4
	v_add_nc_u32_e32 v32, 38, v4
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v83, v42, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 10, v4
	v_add_nc_u32_e32 v33, 40, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	v_lshl_or_b32 v62, v78, 4, v74
	v_lshl_or_b32 v74, v43, 4, v34
	v_lshl_or_b32 v67, v30, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 12, v4
	v_add_nc_u32_e32 v34, 42, v4
	v_mad_u64_u32 v[6:7], null, v4, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v70, v19, 4, v11
	v_lshl_or_b32 v44, v44, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 14, v4
	v_add_nc_u32_e32 v35, 44, v4
	v_mad_u64_u32 v[10:11], null, v10, s72, v[3:4]
	v_mad_u64_u32 v[29:30], null, v29, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v45, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 2, v4
	v_add_nc_u32_e32 v17, 16, v4
	v_add_nc_u32_e32 v36, 46, v4
	v_mad_u64_u32 v[11:12], null, v12, s72, v[3:4]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v46, v46, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 18, v4
	v_add_nc_u32_e32 v37, 48, v4
	v_mad_u64_u32 v[12:13], null, v13, s72, v[3:4]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v47, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 20, v4
	v_add_nc_u32_e32 v38, 50, v4
	v_mad_u64_u32 v[13:14], null, v14, s72, v[3:4]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v48, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 22, v4
	v_add_nc_u32_e32 v39, 52, v4
	v_mad_u64_u32 v[14:15], null, v15, s72, v[3:4]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v49, 4, v40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 24, v4
	v_add_nc_u32_e32 v40, 54, v4
	v_mad_u64_u32 v[15:16], null, v16, s72, v[3:4]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 26, v4
	v_add_nc_u32_e32 v41, 56, v4
	v_mad_u64_u32 v[7:8], null, v8, s72, v[3:4]
	v_mad_u64_u32 v[16:17], null, v17, s72, v[3:4]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[3:4]
	v_add_nc_u32_e32 v23, 28, v4
	v_add_nc_u32_e32 v42, 58, v4
	v_mad_u64_u32 v[17:18], null, v18, s72, v[3:4]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v24, 30, v4
	v_add_nc_u32_e32 v26, 32, v4
	v_add_nc_u32_e32 v43, 60, v4
	v_add_nc_u32_e32 v73, 62, v4
	v_mad_u64_u32 v[18:19], null, v19, s72, v[3:4]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[3:4]
	v_mad_u64_u32 v[19:20], null, v20, s72, v[3:4]
	v_mad_u64_u32 v[38:39], null, v39, s72, v[3:4]
	v_mad_u64_u32 v[20:21], null, v21, s72, v[3:4]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	s_mov_b32 s64, s68
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[21:22], null, v22, s72, v[3:4]
	v_mad_u64_u32 v[40:41], null, v41, s72, v[3:4]
	v_mad_u64_u32 v[22:23], null, v23, s72, v[3:4]
	v_mad_u64_u32 v[41:42], null, v42, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v82, v6, s[64:67], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[23:24], null, v24, s72, v[3:4]
	v_mad_u64_u32 v[26:27], null, v26, s72, v[3:4]
	v_mad_u64_u32 v[42:43], null, v43, s72, v[3:4]
	v_mad_u64_u32 v[3:4], null, v73, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v7, s61
	v_cndmask_b32_e32 v7, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v79, 4, v75
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v83, v4, s[64:67], 0 offen
	buffer_store_b8 v50, v6, s[64:67], 0 offen
	buffer_store_b8 v58, v7, s[64:67], 0 offen
	buffer_store_b8 v66, v8, s[64:67], 0 offen
	buffer_store_b8 v46, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v56, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v57, v65, 4, v57
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v81, 4, v77
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v54, v4, s[64:67], 0 offen
	buffer_store_b8 v62, v6, s[64:67], 0 offen
	buffer_store_b8 v70, v7, s[64:67], 0 offen
	buffer_store_b8 v74, v8, s[64:67], 0 offen
	buffer_store_b8 v51, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v59, v4, s[64:67], 0 offen
	buffer_store_b8 v67, v6, s[64:67], 0 offen
	buffer_store_b8 v47, v7, s[64:67], 0 offen
	buffer_store_b8 v55, v8, s[64:67], 0 offen
	buffer_store_b8 v63, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v71, v4, s[64:67], 0 offen
	buffer_store_b8 v44, v6, s[64:67], 0 offen
	buffer_store_b8 v52, v7, s[64:67], 0 offen
	buffer_store_b8 v60, v8, s[64:67], 0 offen
	buffer_store_b8 v68, v10, s[64:67], 0 offen
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
	buffer_store_b8 v48, v4, s[64:67], 0 offen
	buffer_store_b8 v56, v6, s[64:67], 0 offen
	buffer_store_b8 v64, v7, s[64:67], 0 offen
	buffer_store_b8 v72, v8, s[64:67], 0 offen
	buffer_store_b8 v45, v10, s[64:67], 0 offen
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
	buffer_store_b8 v53, v4, s[64:67], 0 offen
	buffer_store_b8 v61, v6, s[64:67], 0 offen
	buffer_store_b8 v69, v7, s[64:67], 0 offen
	buffer_store_b8 v49, v8, s[64:67], 0 offen
	buffer_store_b8 v57, v10, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v90
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 3, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v65, v3, s[64:67], 0 offen
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
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v2, s75, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp96:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 198
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 198
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17460
; TotalNumSgprs: 78
; NumVgprs: 198
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 78
; NumVGPRsForWavesPerEU: 198
; Occupancy: 7
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     198
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
