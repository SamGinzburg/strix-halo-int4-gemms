	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	v_mov_b32_e32 v161, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v161
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 24
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s4, s4, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v1, 0
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s18, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s13, s13, s15
	s_sub_i32 s33, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s33, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s6, s6, s2
	s_addc_u32 s7, s7, s3
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[22:23], s[4:5], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[20:21], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[18:19], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[16:17], s[2:3], 0x0
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s4, s33, 8
	s_mov_b32 s3, 0
	v_or_b32_e32 v0, s4, v161
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s20, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s21, 0, s2
	v_add_nc_u32_e32 v65, s20, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[18:19], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[16:17], v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cmp_gt_i32 s35, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v5, s4, v161
	v_dual_mov_b32 v4, s20 :: v_dual_add_nc_u32 v3, s20, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v162, 15, v161
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v94, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_lshrrev_b32_e32 v1, 1, v161
	.loc	1 1068 35 is_stmt 1             ; ragged.py:1068:35
	s_mul_i32 s3, s35, s34
	v_or_b32_e32 v69, 0x300, v161
	v_or_b32_e32 v71, 0x3f0, v161
	v_dual_mov_b32 v2, v0 :: v_dual_add_nc_u32 v97, 0, v162
	v_mad_u64_u32 v[67:68], null, s3, s22, v[0:1]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v99, 0, v69
	v_add_nc_u32_e32 v0, 0, v71
	v_or_b32_e32 v72, 0x7f0, v161
	v_or_b32_e32 v73, 0xb00, v161
	v_or_b32_e32 v74, 0xf00, v161
	v_or_b32_e32 v75, 0x1300, v161
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_mad_u64_u32 v[68:69], null, s34, 3, v[67:68]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v162, off offset:68
	v_add_nc_u32_e32 v0, 0, v72
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s0, s[0:1], 0x50
	v_or_b32_e32 v70, 0x700, v161
	v_and_b32_e32 v1, 0x70, v1
	scratch_store_b64 off, v[68:69], off offset:20 ; 8-byte Folded Spill
	v_mad_u64_u32 v[68:69], null, s34, 5, v[67:68]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:4
	scratch_store_b64 off, v[2:3], off offset:72
	v_add_nc_u32_e32 v0, 0, v73
	v_or_b32_e32 v106, 0x1700, v161
	v_or_b32_e32 v107, 0x1b00, v161
	v_or_b32_e32 v108, 0x1f00, v161
	scratch_store_b64 off, v[68:69], off offset:28 ; 8-byte Folded Spill
	v_mad_u64_u32 v[68:69], null, s34, 6, v[67:68]
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v74
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_lshrrev_b32_e32 v96, 6, v161
	v_mov_b32_e32 v2, 0
	v_add_nc_u32_e32 v98, v97, v1
	v_mov_b32_e32 v1, 0
	.loc	1 1058 19                       ; ragged.py:1058:19
	scratch_store_b64 off, v[68:69], off offset:36 ; 8-byte Folded Spill
	v_mad_u64_u32 v[68:69], null, s34, 7, v[67:68]
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_dual_mov_b32 v3, 0 :: v_dual_add_nc_u32 v0, 0, v75
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_mov_b32_e32 v6, 0
	scratch_store_b64 off, v[68:69], off offset:44 ; 8-byte Folded Spill
	v_mad_u64_u32 v[68:69], null, s34, 9, v[67:68]
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	scratch_store_b64 off, v[68:69], off offset:52 ; 8-byte Folded Spill
	v_mad_u64_u32 v[68:69], null, s34, 10, v[67:68]
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[74:75], null, s34, 11, v[67:68]
	v_mad_u64_u32 v[75:76], null, s34, 12, v[67:68]
	v_mad_u64_u32 v[76:77], null, s34, 13, v[67:68]
	v_mad_u64_u32 v[77:78], null, s34, 14, v[67:68]
	v_mad_u64_u32 v[78:79], null, s34, 15, v[67:68]
	v_mad_u64_u32 v[79:80], null, s34, 17, v[67:68]
	v_mad_u64_u32 v[80:81], null, s34, 18, v[67:68]
	v_mad_u64_u32 v[81:82], null, s34, 19, v[67:68]
	v_mad_u64_u32 v[82:83], null, s34, 20, v[67:68]
	v_mad_u64_u32 v[83:84], null, s34, 21, v[67:68]
	v_mad_u64_u32 v[84:85], null, s34, 22, v[67:68]
	v_mad_u64_u32 v[85:86], null, s34, 23, v[67:68]
	v_mad_u64_u32 v[86:87], null, s34, 24, v[67:68]
	v_mad_u64_u32 v[87:88], null, s34, 25, v[67:68]
	v_mad_u64_u32 v[88:89], null, s34, 26, v[67:68]
	v_mad_u64_u32 v[89:90], null, s34, 27, v[67:68]
	v_mad_u64_u32 v[90:91], null, s34, 28, v[67:68]
	v_mad_u64_u32 v[91:92], null, s34, 29, v[67:68]
	v_mad_u64_u32 v[92:93], null, s34, 30, v[67:68]
	v_mad_u64_u32 v[93:94], null, s34, 31, v[67:68]
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_add_nc_u32_e32 v100, 0, v70
	v_add_nc_u32_e32 v94, 0, v106
	v_add_nc_u32_e32 v106, 0, v107
	v_add_nc_u32_e32 v107, 0, v108
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1058 13 is_stmt 0             ; ragged.py:1058:13
	s_mov_b32 s1, 0
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 1058 19                       ; ragged.py:1058:19
	scratch_store_b64 off, v[68:69], off offset:60 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19                          ; ragged.py:0:19
	scratch_load_b64 v[68:69], off, off offset:20 ; 8-byte Folded Reload
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v96
	.loc	1 1068 65                       ; ragged.py:1068:65
	s_mul_i32 s3, s1, s34
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v254, 0, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38 is_stmt 0             ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v110, 0x80000000, v108, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v108, 4, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v108
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v111, 0x80000000, v108, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v108, 8, v96
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v112, 0x80000000, v108, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v108, 12, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v108
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v113, 0x80000000, v108, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v108, 16, v96
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v114, 0x80000000, v108, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v108, 20, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v108
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v115, 0x80000000, v108, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v108, 24, v96
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v116, 0x80000000, v108, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v108, 28, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v108
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s1, s1, 32
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s1, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v109, s3, v67
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	buffer_load_u8 v222, v109, s[12:15], 0 offen
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_add_nc_u32_e32 v109, s34, v67
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	v_add_nc_u32_e32 v109, s3, v109
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v223, v109, s[12:15], 0 offen
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v109, s34, 1, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v109, s3, v109
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v224, v109, s[12:15], 0 offen
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v109, s3, v68
	scratch_load_b64 v[68:69], off, off offset:28 ; 8-byte Folded Reload
	buffer_load_u8 v225, v109, s[12:15], 0 offen
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v109, s34, 2, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v109, s3, v109
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v226, v109, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v109, s3, v68
	scratch_load_b64 v[68:69], off, off offset:36 ; 8-byte Folded Reload
	buffer_load_u8 v227, v109, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v109, s3, v68
	scratch_load_b64 v[68:69], off, off offset:44 ; 8-byte Folded Reload
	buffer_load_u8 v228, v109, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v109, s3, v68
	scratch_load_b64 v[68:69], off, off offset:52 ; 8-byte Folded Reload
	buffer_load_u8 v229, v109, s[12:15], 0 offen
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v109, s34, 3, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v109, s3, v109
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v230, v109, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v109, s3, v68
	scratch_load_b64 v[68:69], off, off offset:60 ; 8-byte Folded Reload
	buffer_load_u8 v231, v109, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v109, s3, v68
	buffer_load_u8 v232, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v74
	buffer_load_u8 v233, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v75
	buffer_load_u8 v234, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v76
	buffer_load_u8 v235, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v77
	buffer_load_u8 v236, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v78
	buffer_load_u8 v237, v109, s[12:15], 0 offen
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v109, s34, 4, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v109, s3, v109
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v238, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v79
	buffer_load_u8 v239, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v80
	buffer_load_u8 v240, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v81
	buffer_load_u8 v241, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v82
	buffer_load_u8 v242, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v83
	buffer_load_u8 v243, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v84
	buffer_load_u8 v244, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v85
	buffer_load_u8 v245, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v86
	buffer_load_u8 v246, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v87
	buffer_load_u8 v247, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v88
	buffer_load_u8 v248, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v89
	buffer_load_u8 v249, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v90
	buffer_load_u8 v250, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v91
	buffer_load_u8 v251, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v92
	buffer_load_u8 v252, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v93
	buffer_load_u8 v253, v109, s[12:15], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v109, v110, s[4:7], 0 offen
	buffer_load_u8 v110, v111, s[4:7], 0 offen
	buffer_load_u8 v111, v112, s[4:7], 0 offen
	buffer_load_u8 v112, v114, s[4:7], 0 offen
	buffer_load_u8 v114, v115, s[4:7], 0 offen
	buffer_load_u8 v115, v116, s[4:7], 0 offen
	buffer_load_u8 v108, v108, s[4:7], 0 offen
	buffer_load_u8 v113, v113, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v254, v109
	s_waitcnt vmcnt(6)
	ds_store_b8 v254, v110 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v254, v111 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v254, v112 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v254, v114 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v99, v113
	ds_store_b8 v254, v115 offset:1536
	ds_store_b8 v100, v108
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	scratch_load_b32 v108, off, off         ; 4-byte Folded Reload
	ds_load_u8 v255, v97 offset:192
	ds_load_u8 v95, v97 offset:128
	ds_load_u8 v216, v97 offset:208
	ds_load_u8 v218, v97 offset:144
	ds_load_u8 v212, v97 offset:224
	ds_load_u8 v213, v97 offset:160
	ds_load_u8 v204, v97 offset:240
	ds_load_u8 v205, v97 offset:176
	ds_load_u8 v66, v97 offset:448
	ds_load_u8 v101, v97 offset:384
	ds_load_u8 v0, v97 offset:464
	ds_load_u8 v102, v97 offset:400
	ds_load_u8 v214, v97 offset:480
	ds_load_u8 v215, v97 offset:416
	ds_load_u8 v206, v97 offset:496
	ds_load_u8 v207, v97 offset:432
	ds_load_u8 v103, v97 offset:320
	ds_load_u8 v104, v97 offset:256
	ds_load_u8 v105, v97 offset:336
	ds_load_u8 v68, v97 offset:272
	ds_load_u8 v217, v97 offset:352
	ds_load_u8 v219, v97 offset:288
	ds_load_u8 v208, v97 offset:368
	ds_load_u8 v209, v97 offset:304
	ds_load_u8 v69, v97 offset:64
	ds_load_u8 v70, v97 offset:80
	ds_load_u8 v220, v97 offset:96
	ds_load_u8 v210, v97 offset:112
	ds_load_u8 v71, v97
	ds_load_u8 v72, v97 offset:16
	ds_load_u8 v221, v97 offset:32
	ds_load_u8 v211, v97 offset:48
	ds_load_u8 v196, v97 offset:960
	ds_load_u8 v197, v97 offset:896
	ds_load_u8 v164, v97 offset:1024
	ds_load_u8 v169, v97 offset:976
	ds_load_u8 v172, v97 offset:912
	ds_load_u8 v166, v97 offset:992
	ds_load_u8 v167, v97 offset:928
	ds_load_u8 v165, v97 offset:944
	ds_load_u8 v198, v97 offset:832
	ds_load_u8 v199, v97 offset:768
	ds_load_u8 v178, v97 offset:848
	ds_load_u8 v180, v97 offset:784
	ds_load_u8 v174, v97 offset:864
	ds_load_u8 v175, v97 offset:800
	ds_load_u8 v168, v97 offset:880
	ds_load_u8 v170, v97 offset:816
	ds_load_u8 v200, v97 offset:704
	ds_load_u8 v201, v97 offset:640
	ds_load_u8 v184, v97 offset:720
	ds_load_u8 v185, v97 offset:656
	ds_load_u8 v181, v97 offset:736
	ds_load_u8 v183, v97 offset:672
	ds_load_u8 v176, v97 offset:752
	ds_load_u8 v179, v97 offset:688
	ds_load_u8 v202, v97 offset:576
	ds_load_u8 v203, v97 offset:512
	ds_load_u8 v191, v97 offset:592
	ds_load_u8 v192, v97 offset:528
	ds_load_u8 v189, v97 offset:608
	ds_load_u8 v190, v97 offset:544
	ds_load_u8 v186, v97 offset:624
	ds_load_u8 v187, v97 offset:560
	ds_load_u8 v171, v97 offset:1216
	ds_load_u8 v173, v97 offset:1280
	ds_load_u8 v137, v97 offset:1232
	ds_load_u8 v138, v97 offset:1168
	ds_load_u8 v135, v97 offset:1248
	ds_load_u8 v136, v97 offset:1184
	ds_load_u8 v133, v97 offset:1264
	ds_load_u8 v134, v97 offset:1200
	ds_load_u8 v177, v97 offset:1152
	ds_load_u8 v182, v97 offset:1088
	ds_load_u8 v144, v97 offset:1104
	ds_load_u8 v145, v97 offset:1040
	ds_load_u8 v142, v97 offset:1120
	ds_load_u8 v143, v97 offset:1056
	ds_load_u8 v139, v97 offset:1136
	ds_load_u8 v140, v97 offset:1072
	ds_load_u8 v188, v97 offset:1472
	ds_load_u8 v132, v97 offset:1536
	ds_load_u8 v152, v97 offset:1488
	ds_load_u8 v154, v97 offset:1424
	ds_load_u8 v149, v97 offset:1504
	ds_load_u8 v151, v97 offset:1440
	ds_load_u8 v146, v97 offset:1520
	ds_load_u8 v147, v97 offset:1456
	ds_load_u8 v193, v97 offset:1408
	ds_load_u8 v194, v97 offset:1344
	ds_load_u8 v73, v97 offset:1360
	ds_load_u8 v162, v97 offset:1296
	ds_load_u8 v158, v97 offset:1376
	ds_load_u8 v159, v97 offset:1312
	ds_load_u8 v155, v97 offset:1392
	ds_load_u8 v156, v97 offset:1328
	ds_load_u8 v141, v97 offset:1984
	ds_load_u8 v112, v97 offset:2000
	ds_load_u8 v114, v97 offset:1936
	ds_load_u8 v110, v97 offset:2016
	ds_load_u8 v111, v97 offset:1952
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	v_perm_b32 v66, v101, v66, 0xc0c0004
	v_perm_b32 v69, v71, v69, 0xc0c0004
	v_perm_b32 v71, v95, v255, 0xc0c0004
	v_perm_b32 v0, v102, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v195, v108
	scratch_load_b32 v108, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v108, v108
	ds_load_u8 v109, v97 offset:1968
	ds_load_u8 v148, v97 offset:1920
	ds_load_u8 v150, v97 offset:1856
	ds_load_u8 v119, v97 offset:1872
	ds_load_u8 v121, v97 offset:1808
	ds_load_u8 v116, v97 offset:1888
	ds_load_u8 v117, v97 offset:1824
	ds_load_u8 v113, v97 offset:1904
	ds_load_u8 v115, v97 offset:1840
	ds_load_u8 v153, v97 offset:1728
	ds_load_u8 v157, v97 offset:1792
	ds_load_u8 v124, v97 offset:1744
	ds_load_u8 v125, v97 offset:1680
	ds_load_u8 v122, v97 offset:1760
	ds_load_u8 v123, v97 offset:1696
	ds_load_u8 v118, v97 offset:1776
	ds_load_u8 v120, v97 offset:1712
	ds_load_u8 v160, v97 offset:1664
	ds_load_u8 v163, v97 offset:1600
	ds_load_u8 v130, v97 offset:1616
	ds_load_u8 v131, v97 offset:1552
	ds_load_u8 v128, v97 offset:1632
	ds_load_u8 v129, v97 offset:1568
	ds_load_u8 v126, v97 offset:1648
	ds_load_u8 v127, v97 offset:1584
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v254, v222
	ds_store_b8 v254, v223 offset:256
	ds_store_b8 v254, v224 offset:512
	ds_store_b8 v254, v226 offset:1024
	ds_store_b8 v254, v227 offset:1280
	ds_store_b8 v254, v228 offset:1536
	ds_store_b8 v254, v230 offset:2048
	ds_store_b8 v254, v231 offset:2304
	ds_store_b8 v254, v232 offset:2560
	ds_store_b8 v254, v234 offset:3072
	ds_store_b8 v254, v235 offset:3328
	ds_store_b8 v254, v236 offset:3584
	ds_store_b8 v254, v238 offset:4096
	ds_store_b8 v254, v239 offset:4352
	ds_store_b8 v254, v240 offset:4608
	ds_store_b8 v254, v242 offset:5120
	ds_store_b8 v254, v243 offset:5376
	ds_store_b8 v254, v244 offset:5632
	ds_store_b8 v254, v246 offset:6144
	ds_store_b8 v254, v247 offset:6400
	ds_store_b8 v254, v248 offset:6656
	ds_store_b8 v254, v250 offset:7168
	ds_store_b8 v254, v251 offset:7424
	ds_store_b8 v254, v252 offset:7680
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v223, v66, 16, v103
	.loc	1 1070 30                       ; ragged.py:1070:30
	scratch_load_b32 v66, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v222, v71, 16, v69
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_store_b8 v99, v225
	ds_store_b8 v100, v229
	s_waitcnt vmcnt(0)
	ds_store_b8 v66, v233
	scratch_load_b32 v66, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v66, v237
	scratch_load_b32 v66, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v66, v241
	ds_store_b8 v94, v245
	ds_store_b8 v106, v249
	ds_store_b8 v107, v253
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v66, v98 offset:1280
	ds_load_u8 v69, v98 offset:1024
	ds_load_u8 v71, v98 offset:1920
	ds_load_u8 v95, v98 offset:1664
	ds_load_u8 v101, v98 offset:1408
	ds_load_u8 v103, v98 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	ds_load_u8 v69, v98 offset:1792
	ds_load_u8 v104, v98 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v104, v69, 0xc0c0004
	ds_load_u8 v104, v98 offset:256
	ds_load_u8 v224, v98
	ds_load_u8 v226, v98 offset:896
	ds_load_u8 v227, v98 offset:640
	ds_load_u8 v228, v98 offset:384
	ds_load_u8 v229, v98 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v104, v224, v104, 0xc0c0004
	ds_load_u8 v224, v98 offset:768
	ds_load_u8 v225, v98 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v224, v225, v224, 0xc0c0004
	v_lshl_or_b32 v225, v69, 16, v66
	v_perm_b32 v66, v103, v101, 0xc0c0004
	v_perm_b32 v69, v95, v71, 0xc0c0004
	v_perm_b32 v95, v227, v226, 0xc0c0004
	v_perm_b32 v71, v229, v228, 0xc0c0004
	v_lshl_or_b32 v224, v224, 16, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v227, v69, 16, v66
	v_perm_b32 v66, v68, v105, 0xc0c0004
	v_perm_b32 v68, v72, v70, 0xc0c0004
	v_perm_b32 v69, v218, v216, 0xc0c0004
	v_lshl_or_b32 v226, v95, 16, v71
	v_wmma_i32_16x16x16_iu4 v[1:8], v[224:225], v[222:223], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v229, v0, 16, v66
	v_perm_b32 v0, v219, v217, 0xc0c0004
	v_lshl_or_b32 v228, v69, 16, v68
	v_perm_b32 v66, v215, v214, 0xc0c0004
	v_perm_b32 v68, v221, v220, 0xc0c0004
	v_perm_b32 v69, v213, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[226:227], v[222:223], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[224:225], v[228:229], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v213, v66, 16, v0
	v_perm_b32 v0, v209, v208, 0xc0c0004
	v_lshl_or_b32 v212, v69, 16, v68
	v_perm_b32 v66, v207, v206, 0xc0c0004
	v_perm_b32 v68, v211, v210, 0xc0c0004
	v_perm_b32 v69, v205, v204, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[226:227], v[228:229], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[224:225], v[212:213], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v205, v66, 16, v0
	v_perm_b32 v0, v199, v198, 0xc0c0004
	v_lshl_or_b32 v204, v69, 16, v68
	v_perm_b32 v66, v197, v196, 0xc0c0004
	v_perm_b32 v68, v203, v202, 0xc0c0004
	v_perm_b32 v69, v201, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[226:227], v[212:213], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[224:225], v[204:205], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v197, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[226:227], v[204:205], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v196, v69, 16, v68
	ds_load_u8 v0, v98 offset:3328
	ds_load_u8 v66, v98 offset:3072
	ds_load_u8 v68, v98 offset:3968
	ds_load_u8 v69, v98 offset:3712
	ds_load_u8 v70, v98 offset:3456
	ds_load_u8 v71, v98 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v98 offset:3840
	ds_load_u8 v72, v98 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v72, v66, 0xc0c0004
	ds_load_u8 v72, v98 offset:2304
	ds_load_u8 v95, v98 offset:2048
	ds_load_u8 v101, v98 offset:2944
	ds_load_u8 v102, v98 offset:2688
	ds_load_u8 v103, v98 offset:2432
	ds_load_u8 v104, v98 offset:2176
	v_lshl_or_b32 v199, v66, 16, v0
	v_perm_b32 v0, v71, v70, 0xc0c0004
	v_perm_b32 v66, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v201, v66, 16, v0
	v_perm_b32 v0, v180, v178, 0xc0c0004
	v_perm_b32 v66, v172, v169, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v95, v72, 0xc0c0004
	ds_load_u8 v95, v98 offset:2816
	ds_load_u8 v105, v98 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v68, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v200, v69, 16, v68
	v_perm_b32 v68, v192, v191, 0xc0c0004
	v_perm_b32 v69, v185, v184, 0xc0c0004
	v_lshl_or_b32 v185, v66, 16, v0
	v_perm_b32 v0, v175, v174, 0xc0c0004
	v_perm_b32 v66, v167, v166, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[200:201], v[196:197], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v184, v69, 16, v68
	v_perm_b32 v68, v190, v189, 0xc0c0004
	v_perm_b32 v69, v183, v181, 0xc0c0004
	v_lshl_or_b32 v167, v66, 16, v0
	v_perm_b32 v0, v187, v186, 0xc0c0004
	v_perm_b32 v66, v179, v176, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v105, v95, 0xc0c0004
	v_lshl_or_b32 v166, v69, 16, v68
	v_perm_b32 v68, v170, v168, 0xc0c0004
	v_perm_b32 v69, v165, v195, 0xc0c0004
	v_lshl_or_b32 v168, v66, 16, v0
	v_perm_b32 v0, v173, v194, 0xc0c0004
	v_perm_b32 v66, v193, v188, 0xc0c0004
	v_lshl_or_b32 v198, v95, 16, v72
	v_lshl_or_b32 v169, v69, 16, v68
	v_perm_b32 v68, v164, v182, 0xc0c0004
	v_perm_b32 v69, v177, v171, 0xc0c0004
	v_lshl_or_b32 v165, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[198:199], v[166:167], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[200:201], v[166:167], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[198:199], v[168:169], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v164, v69, 16, v68
	ds_load_u8 v0, v98 offset:5376
	ds_load_u8 v66, v98 offset:5120
	ds_load_u8 v68, v98 offset:6016
	ds_load_u8 v69, v98 offset:5760
	ds_load_u8 v70, v98 offset:5504
	ds_load_u8 v71, v98 offset:5248
	v_wmma_i32_16x16x16_iu4 v[57:64], v[200:201], v[168:169], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[198:199], v[184:185], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[200:201], v[184:185], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[198:199], v[196:197], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v98 offset:5888
	ds_load_u8 v72, v98 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v72, v66, 0xc0c0004
	ds_load_u8 v72, v98 offset:4352
	ds_load_u8 v95, v98 offset:4096
	ds_load_u8 v101, v98 offset:4992
	ds_load_u8 v102, v98 offset:4736
	ds_load_u8 v103, v98 offset:4480
	ds_load_u8 v104, v98 offset:4224
	v_lshl_or_b32 v167, v66, 16, v0
	v_perm_b32 v0, v71, v70, 0xc0c0004
	v_perm_b32 v66, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v66, 16, v0
	v_perm_b32 v0, v162, v73, 0xc0c0004
	v_perm_b32 v66, v154, v152, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v95, v72, 0xc0c0004
	ds_load_u8 v95, v98 offset:4864
	ds_load_u8 v105, v98 offset:4608
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v68, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v69, 16, v68
	v_perm_b32 v68, v145, v144, 0xc0c0004
	v_perm_b32 v69, v138, v137, 0xc0c0004
	v_lshl_or_b32 v138, v66, 16, v0
	v_perm_b32 v0, v159, v158, 0xc0c0004
	v_perm_b32 v66, v151, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[164:165], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v137, v69, 16, v68
	v_perm_b32 v68, v143, v142, 0xc0c0004
	v_perm_b32 v69, v136, v135, 0xc0c0004
	v_lshl_or_b32 v136, v66, 16, v0
	v_perm_b32 v0, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v105, v95, 0xc0c0004
	v_perm_b32 v66, v147, v146, 0xc0c0004
	v_lshl_or_b32 v135, v69, 16, v68
	v_perm_b32 v68, v140, v139, 0xc0c0004
	v_perm_b32 v69, v134, v133, 0xc0c0004
	v_lshl_or_b32 v166, v95, 16, v72
	v_lshl_or_b32 v134, v66, 16, v0
	v_perm_b32 v0, v157, v150, 0xc0c0004
	v_perm_b32 v66, v148, v141, 0xc0c0004
	v_lshl_or_b32 v133, v69, 16, v68
	v_perm_b32 v68, v132, v163, 0xc0c0004
	v_perm_b32 v69, v160, v153, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[166:167], v[135:136], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[168:169], v[135:136], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[166:167], v[133:134], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[168:169], v[133:134], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v133, v66, 16, v0
	v_lshl_or_b32 v132, v69, 16, v68
	ds_load_u8 v0, v98 offset:7424
	ds_load_u8 v66, v98 offset:7168
	ds_load_u8 v68, v98 offset:8064
	ds_load_u8 v69, v98 offset:7808
	ds_load_u8 v70, v98 offset:7552
	ds_load_u8 v71, v98 offset:7296
	v_wmma_i32_16x16x16_iu4 v[17:24], v[166:167], v[137:138], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[168:169], v[137:138], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[166:167], v[164:165], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v98 offset:7936
	ds_load_u8 v72, v98 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v72, v66, 0xc0c0004
	ds_load_u8 v72, v98 offset:6400
	ds_load_u8 v95, v98 offset:6144
	ds_load_u8 v101, v98 offset:7040
	ds_load_u8 v102, v98 offset:6784
	ds_load_u8 v103, v98 offset:6528
	ds_load_u8 v104, v98 offset:6272
	v_lshl_or_b32 v135, v66, 16, v0
	v_perm_b32 v0, v71, v70, 0xc0c0004
	v_perm_b32 v66, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v66, 16, v0
	v_perm_b32 v0, v121, v119, 0xc0c0004
	v_perm_b32 v66, v114, v112, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v95, v72, 0xc0c0004
	ds_load_u8 v95, v98 offset:6912
	ds_load_u8 v105, v98 offset:6656
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v68, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v69, 16, v68
	v_perm_b32 v68, v131, v130, 0xc0c0004
	v_perm_b32 v69, v125, v124, 0xc0c0004
	v_lshl_or_b32 v125, v66, 16, v0
	v_perm_b32 v0, v117, v116, 0xc0c0004
	v_perm_b32 v66, v111, v110, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[136:137], v[132:133], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v124, v69, 16, v68
	v_perm_b32 v68, v129, v128, 0xc0c0004
	v_perm_b32 v69, v123, v122, 0xc0c0004
	v_lshl_or_b32 v111, v66, 16, v0
	v_perm_b32 v0, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v105, v95, 0xc0c0004
	v_perm_b32 v66, v120, v118, 0xc0c0004
	v_lshl_or_b32 v110, v69, 16, v68
	v_perm_b32 v68, v115, v113, 0xc0c0004
	v_perm_b32 v69, v109, v108, 0xc0c0004
	v_lshl_or_b32 v134, v95, 16, v72
	v_lshl_or_b32 v108, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[136:137], v[124:125], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[136:137], v[110:111], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v109, v69, 16, v68
	v_wmma_i32_16x16x16_iu4 v[1:8], v[134:135], v[132:133], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[134:135], v[124:125], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[134:135], v[110:111], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[134:135], v[108:109], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[136:137], v[108:109], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v86, v5
	v_cvt_f32_i32_e32 v85, v6
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[5:6], off, off offset:72
	scratch_load_b32 v162, off, off offset:68
	v_cvt_f32_i32_e32 v82, v1
	v_cvt_f32_i32_e32 v80, v2
	v_cvt_f32_i32_e32 v76, v3
	v_cvt_f32_i32_e32 v78, v4
	v_cvt_f32_i32_e32 v84, v7
	v_cvt_f32_i32_e32 v83, v8
	v_cvt_f32_i32_e32 v91, v9
	v_cvt_f32_i32_e32 v75, v10
	v_cvt_f32_i32_e32 v73, v11
	v_cvt_f32_i32_e32 v72, v12
	v_cvt_f32_i32_e32 v71, v13
	v_cvt_f32_i32_e32 v94, v14
	v_cvt_f32_i32_e32 v93, v15
	v_cvt_f32_i32_e32 v92, v16
	v_cvt_f32_i32_e32 v70, v17
	v_cvt_f32_i32_e32 v69, v18
	v_cvt_f32_i32_e32 v67, v19
	v_cvt_f32_i32_e32 v68, v20
	v_cvt_f32_i32_e32 v81, v21
	v_cvt_f32_i32_e32 v79, v22
	v_cvt_f32_i32_e32 v77, v23
	v_cvt_f32_i32_e32 v74, v24
	v_cvt_f32_i32_e32 v87, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v25, v27
	v_cvt_f32_i32_e32 v23, v28
	v_cvt_f32_i32_e32 v21, v29
	v_cvt_f32_i32_e32 v90, v30
	v_cvt_f32_i32_e32 v89, v31
	v_cvt_f32_i32_e32 v88, v32
	v_cvt_f32_i32_e32 v24, v33
	v_cvt_f32_i32_e32 v22, v34
	v_cvt_f32_i32_e32 v19, v35
	v_cvt_f32_i32_e32 v20, v36
	v_cvt_f32_i32_e32 v30, v37
	v_cvt_f32_i32_e32 v29, v38
	v_cvt_f32_i32_e32 v28, v39
	v_cvt_f32_i32_e32 v27, v40
	v_cvt_f32_i32_e32 v35, v41
	v_cvt_f32_i32_e32 v18, v42
	v_cvt_f32_i32_e32 v17, v43
	v_cvt_f32_i32_e32 v15, v44
	v_cvt_f32_i32_e32 v13, v45
	v_cvt_f32_i32_e32 v38, v46
	v_cvt_f32_i32_e32 v37, v47
	v_cvt_f32_i32_e32 v36, v48
	v_cvt_f32_i32_e32 v16, v49
	v_cvt_f32_i32_e32 v14, v50
	v_cvt_f32_i32_e32 v11, v51
	v_cvt_f32_i32_e32 v12, v52
	v_cvt_f32_i32_e32 v34, v53
	v_cvt_f32_i32_e32 v33, v54
	v_cvt_f32_i32_e32 v32, v55
	v_cvt_f32_i32_e32 v31, v56
	v_cvt_f32_i32_e32 v39, v57
	v_cvt_f32_i32_e32 v10, v58
	v_cvt_f32_i32_e32 v9, v59
	v_cvt_f32_i32_e32 v2, v60
	v_cvt_f32_i32_e32 v1, v61
	v_cvt_f32_i32_e32 v42, v62
	v_cvt_f32_i32_e32 v41, v63
	v_cvt_f32_i32_e32 v40, v64
	v_dual_mov_b32 v4, s20 :: v_dual_mov_b32 v3, v65
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, 48, v162
	v_or_b32_e32 v43, 16, v162
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v6, s0, s20, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v7, null, s21, 0, s0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 32, v162
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	s_mov_b32 s28, s8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[18:19], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[16:17], v[6:7]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s1, s20, v0
	v_add_co_ci_u32_e64 v8, null, s21, 0, s1
	v_add_co_u32 v43, s1, s20, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v44, null, s21, 0, s1
	v_add_co_u32 v45, s1, s20, v162
	v_add_co_ci_u32_e64 v46, null, s21, 0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[18:19], v[43:44]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[16:17], v[43:44]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[18:19], v[7:8]
	v_cmp_le_i64_e64 s6, s[18:19], v[45:46]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[16:17], v[45:46]
	v_cmp_gt_i64_e64 s3, s[16:17], v[7:8]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v0, 1, v45
	v_lshlrev_b32_e32 v8, 1, v43
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v7, 1, v7
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s7
	s_and_b32 s4, s4, s5
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s6
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s3
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	s_clause 0x3
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	buffer_load_u16 v43, v8, s[28:31], 0 offen
	buffer_load_u16 v44, v7, s[28:31], 0 offen
	buffer_load_u16 v45, v6, s[28:31], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	s_mul_i32 s0, s34, s22
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s29, s11, 0xffff
	v_add_lshl_u32 v5, v5, s0, 1
	s_mov_b32 s28, s10
	s_mov_b32 s0, 0x76543210
	buffer_load_u16 v46, v5, s[28:31], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s29, s25, 0xffff
	s_mov_b32 s28, s24
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v43, 16, v43
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v64, v75, v0 :: v_dual_mul_f32 v75, v88, v43
	v_dual_mul_f32 v54, v82, v0 :: v_dual_and_b32 v47, 3, v161
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v5, 0xf0, v161
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v7, 1, v161
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v55, v80, v0 :: v_dual_lshlrev_b32 v8, 5, v161
	v_dual_mul_f32 v56, v78, v0 :: v_dual_and_b32 v95, 4, v161
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v52, v47, 9, 0
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp4:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v66, v87, v43 :: v_dual_and_b32 v49, 32, v8
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v50, v5, 2, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v72, v72, v0 :: v_dual_lshlrev_b32 v45, 16, v45
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v102, v95, 2, v52
.Ltmp6:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v52, v93, v0
	v_dual_mul_f32 v65, v73, v0 :: v_dual_and_b32 v48, 28, v7
	v_dual_mul_f32 v60, v85, v0 :: v_dual_and_b32 v97, 0x80, v161
	v_dual_mul_f32 v39, v39, v45 :: v_dual_lshlrev_b32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v48, v50, v49, v48
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v50, v94, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v51, v5, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v35, v35, v44 :: v_dual_lshlrev_b32 v46, 16, v46
	v_dual_mul_f32 v57, v76, v0 :: v_dual_and_b32 v6, 0x60, v161
	v_dual_mul_f32 v59, v86, v0 :: v_dual_and_b32 v96, 8, v161
	v_dual_mul_f32 v61, v84, v0 :: v_dual_lshlrev_b32 v98, 4, v161
	v_dual_mul_f32 v62, v83, v0 :: v_dual_lshlrev_b32 v7, 5, v47
	v_dual_mul_f32 v73, v89, v43 :: v_dual_lshlrev_b32 v8, 1, v97
	v_mul_f32_e32 v49, v91, v0
	v_mul_f32_e32 v53, v92, v0
	v_dual_mul_f32 v0, v71, v0 :: v_dual_mul_f32 v41, v41, v45
	v_mul_f32_e32 v71, v90, v43
	v_dual_mul_f32 v38, v38, v44 :: v_dual_mul_f32 v69, v69, v43
	v_dual_mul_f32 v36, v36, v44 :: v_dual_mul_f32 v89, v67, v43
	v_dual_mul_f32 v40, v40, v45 :: v_dual_mul_f32 v91, v79, v43
	v_dual_mul_f32 v70, v70, v43 :: v_dual_mul_f32 v103, v24, v44
	v_dual_mul_f32 v76, v68, v43 :: v_dual_mul_f32 v19, v19, v44
	v_dual_mul_f32 v90, v81, v43 :: v_dual_mul_f32 v105, v30, v44
	v_dual_mul_f32 v92, v77, v43 :: v_dual_mul_f32 v107, v28, v44
	v_dual_mul_f32 v93, v74, v43 :: v_dual_mul_f32 v20, v20, v44
	v_dual_mul_f32 v26, v26, v43 :: v_dual_mul_f32 v27, v27, v44
	v_dual_mul_f32 v25, v25, v43 :: v_dual_mul_f32 v104, v22, v44
	v_dual_mul_f32 v94, v23, v43 :: v_dual_mul_f32 v109, v13, v44
	v_dual_mul_f32 v43, v21, v43 :: v_dual_mul_f32 v18, v18, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v48, v46
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v51 offset:512
	ds_load_b128 v[21:24], v51 offset:528
	ds_load_b128 v[81:84], v51
	ds_load_b128 v[85:88], v51 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v37, v37, v44 :: v_dual_mul_f32 v42, v42, v45
	v_dual_mul_f32 v106, v29, v44 :: v_dual_mul_f32 v111, v12, v45
	v_dual_mul_f32 v108, v17, v44 :: v_dual_mul_f32 v11, v11, v45
	v_dual_mul_f32 v15, v15, v44 :: v_dual_mul_f32 v16, v16, v45
	v_mul_f32_e32 v110, v14, v45
	v_mul_f32_e32 v112, v34, v45
	v_mul_f32_e32 v114, v32, v45
	v_mul_f32_e32 v115, v31, v45
	v_mul_f32_e32 v10, v10, v45
	v_mul_f32_e32 v9, v9, v45
	v_mul_f32_e32 v1, v1, v45
	v_mul_f32_e32 v113, v33, v45
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v58, v49, v77 :: v_dual_mul_f32 v63, v50, v22
	v_dual_mul_f32 v67, v52, v23 :: v_dual_mul_f32 v68, v53, v24
	v_mul_f32_e32 v66, v66, v77
	v_mul_f32_e32 v34, v35, v77
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v28, v37, v23 :: v_dual_mul_f32 v49, v54, v81
	v_dual_mul_f32 v52, v57, v83 :: v_dual_mul_f32 v53, v56, v84
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v50, v55, v82 :: v_dual_mul_f32 v57, v62, v88
	v_dual_mul_f32 v56, v61, v87 :: v_dual_mul_f32 v55, v60, v86
	v_mul_f32_e32 v54, v59, v85
	v_mul_f32_e32 v62, v0, v21
	v_dual_mul_f32 v61, v72, v80 :: v_dual_mul_f32 v60, v65, v79
	v_dual_mul_f32 v59, v64, v78 :: v_dual_mul_f32 v2, v2, v45
	v_dual_mul_f32 v13, v41, v23 :: v_dual_mul_f32 v48, v71, v22
	v_dual_mul_f32 v46, v73, v23 :: v_dual_mul_f32 v17, v39, v77
	v_dual_mul_f32 v45, v75, v24 :: v_dual_mul_f32 v30, v38, v22
	v_dual_mul_f32 v29, v36, v24 :: v_dual_mul_f32 v12, v42, v22
	v_dual_mul_f32 v14, v40, v24 :: v_dual_mul_f32 v71, v69, v82
	v_dual_mul_f32 v74, v89, v83 :: v_dual_mul_f32 v51, v43, v21
	v_dual_mul_f32 v75, v76, v84 :: v_dual_mul_f32 v70, v70, v81
	v_mul_f32_e32 v41, v19, v83
	v_dual_mul_f32 v73, v92, v87 :: v_dual_mul_f32 v76, v91, v86
	v_mul_f32_e32 v39, v105, v85
	v_mul_f32_e32 v77, v90, v85
	v_dual_mul_f32 v64, v94, v80 :: v_dual_mul_f32 v43, v104, v82
	v_dual_mul_f32 v65, v25, v79 :: v_dual_mul_f32 v42, v20, v84
	v_mul_f32_e32 v37, v107, v87
	v_dual_mul_f32 v44, v103, v81 :: v_dual_mul_f32 v33, v108, v79
	v_dual_mul_f32 v36, v27, v88 :: v_dual_mul_f32 v31, v109, v21
	v_dual_mul_f32 v38, v106, v86 :: v_dual_mul_f32 v25, v11, v83
	v_dual_mul_f32 v32, v15, v80 :: v_dual_mul_f32 v35, v18, v78
	v_mul_f32_e32 v15, v1, v21
	v_dual_mul_f32 v18, v9, v79 :: v_dual_mul_f32 v21, v10, v78
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v49|, |v50|
	v_max3_f32 v1, |v53|, |v54|, |v55|
	v_max3_f32 v9, |v59|, |v60|, |v61|
	v_max3_f32 v10, |v62|, |v63|, |v67|
.Ltmp8:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v72, v93, v88 :: v_dual_mul_f32 v69, v26, v78
	v_dual_mul_f32 v24, v111, v84 :: v_dual_mul_f32 v27, v16, v81
	v_dual_mul_f32 v26, v110, v82 :: v_dual_mul_f32 v19, v115, v88
	v_dual_mul_f32 v20, v114, v87 :: v_dual_mul_f32 v23, v112, v85
	v_mul_f32_e32 v16, v2, v80
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, |v56|, |v57|, |v58|
	v_max_f32_e64 v11, |v70|, |v71|
	v_max3_f32 v40, |v75|, |v77|, |v76|
	v_max_f32_e64 v81, |v44|, |v43|
	v_max3_f32 v82, |v42|, |v39|, |v38|
	v_max3_f32 v84, |v35|, |v33|, |v32|
	v_max3_f32 v85, |v31|, |v30|, |v28|
	v_max3_f32 v0, v0, |v52|, v1
	v_max3_f32 v1, v9, v10, |v68|
	v_max3_f32 v83, |v37|, |v36|, |v34|
	v_max3_f32 v9, v11, |v74|, v40
	v_max3_f32 v11, v81, |v41|, v82
	v_max3_f32 v40, v84, v85, |v29|
	v_max3_f32 v0, v0, v2, v1
	v_max3_f32 v79, |v69|, |v65|, |v64|
	v_max3_f32 v80, |v51|, |v48|, |v46|
	v_max3_f32 v89, |v21|, |v18|, |v16|
	v_max3_f32 v2, v11, v83, v40
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v22, v113, v86
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v86, |v27|, |v26|
	v_max3_f32 v90, |v15|, |v12|, |v13|
	v_max3_f32 v78, |v73|, |v72|, |v66|
	v_max_f32_e32 v11, v11, v11
	v_max3_f32 v87, |v24|, |v23|, |v22|
	v_max3_f32 v88, |v20|, |v19|, |v17|
	v_max3_f32 v10, v79, v80, |v45|
	v_max3_f32 v80, v89, v90, |v14|
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v81, 0x680, v98, v7
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v79, v86, |v25|, v87
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v99, 3, v97
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v9, v78, v10
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v78, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v100, v95, 6, 0
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, v79, v88, v80
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v101, v7, v6
	v_permlanex16_b32 v40, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v10, v96, 4, v102
	v_xor_b32_e32 v82, v81, v6
	v_permlanex16_b32 v79, v9, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v80, v78, v78
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v10, v10, v8, v101
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v79, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v78, v0, v11 :: v_dual_max_f32 v79, v1, v40
	v_max_f32_e32 v80, v2, v80
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v100, v99, v82
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v9, v81
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
	v_lshlrev_b32_e32 v83, 5, v95
	v_lshlrev_b32_e32 v82, 3, v96
	v_lshl_add_u32 v47, v47, 4, 0
	ds_store_b128 v10, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v0, v78 :: v_dual_max_f32 v11, v81, v81
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v78, v78 :: v_dual_mov_b32 v2, v79
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v79, v79
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v79, 1, v6
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v81, v81
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v10, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v11, v11, v78
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v40, v80, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v0, v1, v0
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v9, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v9, v11 :: v_dual_max_f32 v10, v10, v10
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
	v_dual_max_f32 v9, v11, v9 :: v_dual_max_f32 v2, v40, v10
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v40, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v11, v9
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v10, v0
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v40, v40, v40 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v78, v2 :: v_dual_max_f32 v1, v1, v40
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v9, v11
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v9, 4, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v78, v78
	v_max_f32_e32 v2, v2, v78
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v78, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v80, v2
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v84, v78, v78
	v_max_f32_e32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v80, v80, v80
	v_max_f32_e32 v0, v0, v10
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v10, 0, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v2, v80
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v40, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v10, v10, v79, v82
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v1, v84
.Ltmp50:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s20, v9
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s21, 0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v40, v40, v40
.Ltmp54:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[18:19], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[16:17], v[1:2]
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp55:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v0, v40
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v47, v83, v82
.Ltmp57:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v40, 32, v9
	v_or_b32_e32 v47, 16, v9
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v10, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v0
.Ltmp59:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 48, v9
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v0.h, 0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v10, s0, s20, v10
	v_add_co_ci_u32_e64 v11, null, s21, 0, s0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v82.h, v0.h
	v_mov_b16_e32 v83.h, v0.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_max_f32_e32 v78, v78, v78
	v_dual_max_f32 v80, v80, v80 :: v_dual_max_f32 v79, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v81, v81, v81 :: v_dual_max_f32 v84, 0x2b8cbccc, v78
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v78, s0, s20, v40
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v86, 0x2b8cbccc, v80 :: v_dual_max_f32 v85, 0x2b8cbccc, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v88, null, 0x40e00000, 0x40e00000, v84
	v_div_scale_f32 v95, vcc_lo, v84, 0x40e00000, v84
	v_div_scale_f32 v89, null, 0x40e00000, 0x40e00000, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v88
	v_max_f32_e32 v87, 0x2b8cbccc, v81
	v_div_scale_f32 v90, null, 0x40e00000, 0x40e00000, v85
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v79, null, s21, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v92, v89
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v93, v90
	v_fma_f32 v80, -v88, v40, 1.0
	v_div_scale_f32 v96, s1, v86, 0x40e00000, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v94, v91
	v_div_scale_f32 v97, s3, v85, 0x40e00000, v85
	v_fmac_f32_e32 v40, v80, v40
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s0, s20, v47
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v81, -v89, v92, 1.0
	v_fma_f32 v98, -v90, v93, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v47, v95, v40
	v_div_scale_f32 v100, s4, v87, 0x40e00000, v87
	v_fmac_f32_e32 v92, v81, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v99, -v91, v94, 1.0
	v_fma_f32 v102, -v88, v47, v95
	v_fmac_f32_e32 v93, v98, v93
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v81, null, s21, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v98, v96, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v47, v102, v40 :: v_dual_fmac_f32 v94, v99, v94
	v_mul_f32_e32 v99, v97, v93
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[18:19], v[10:11]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v103, -v89, v98, v96
	v_fma_f32 v1, -v88, v47, v95
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[18:19], v[80:81]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v104, -v90, v99, v97
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[16:17], v[80:81]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v98, v103, v92
	v_div_fmas_f32 v1, v1, v40, v47
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v99, v104, v93
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[16:17], v[10:11]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v89, v98, v96
	v_div_fixup_f32 v1, v1, 0x40e00000, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v90, v99, v97
	v_div_fmas_f32 v2, v2, v92, v98
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v82.l, v1.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s3
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[18:19], v[78:79]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v40, v88, v93, v99
	s_mov_b32 vcc_lo, s4
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v10, 1, v82
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[16:17], v[78:79]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v11, v40, 0x40e00000, v85
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v10, v1, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v83.l, v11.h
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v79, 0xffff0000, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v107, null, v79, v79, v67
	v_div_scale_f32 v85, null, v79, v79, v53
	v_div_scale_f32 v95, null, v79, v79, v58
	v_rcp_f32_e32 v127, v107
	v_div_scale_f32 v109, null, v79, v79, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v116, v85
	v_rcp_f32_e32 v121, v95
	v_div_scale_f32 v81, null, v79, v79, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v128, v109
	v_div_scale_f32 v93, null, v79, v79, v57
	v_fma_f32 v144, -v107, v127, 1.0
	v_rcp_f32_e32 v114, v81
	v_div_scale_f32 v106, s22, v63, v79, v63
	v_fma_f32 v133, -v85, v116, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v127, v144, v127
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_mul_f32_e32 v101, v100, v94
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v138, -v95, v121, 1.0
	v_fma_f32 v145, -v109, v128, 1.0
	v_rcp_f32_e32 v120, v93
	v_div_scale_f32 v82, s9, v50, v79, v50
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v105, -v91, v101, v100
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v121, v138, v121
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v86
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v86, s11, v53, v79, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v101, v105, v94
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v105, null, v79, v79, v63
	v_fmac_f32_e32 v128, v145, v128
	v_fma_f32 v131, -v81, v114, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v89, -v91, v101, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v126, v105
	v_fma_f32 v137, -v93, v120, 1.0
	v_div_scale_f32 v90, s13, v55, v79, v55
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v47, v89, v94, v101
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v89, null, v79, v79, v55
	v_div_scale_f32 v94, s15, v57, v79, v57
	v_div_scale_f32 v101, null, v79, v79, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v143, -v105, v126, 1.0
	v_rcp_f32_e32 v118, v89
	v_div_scale_f32 v97, null, v79, v79, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v124, v101
	v_fmac_f32_e32 v126, v143, v126
	v_fmac_f32_e32 v116, v133, v116
	v_div_scale_f32 v102, s19, v61, v79, v61
	v_rcp_f32_e32 v122, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v143, v106, v126
	v_mul_f32_e32 v133, v86, v116
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v135, -v89, v118, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v0.l, v2.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v141, -v101, v124, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v40, v47, 0x40e00000, v87
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v149, -v85, v133, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v114, v131, v114 :: v_dual_and_b32 v47, 1, v0
	v_fma_f32 v139, -v97, v122, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v0.l, v40.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v133, v149, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v131, v82, v114
	v_div_scale_f32 v98, s17, v59, v79, v59
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v2, v47, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v87, null, v79, v79, v54
	v_fma_f32 v147, -v81, v131, v82
	v_fmac_f32_e32 v120, v137, v120
	v_div_scale_f32 v91, null, v79, v79, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v117, v87
	v_dual_fmac_f32 v131, v147, v114 :: v_dual_and_b32 v78, 1, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v137, v94, v120
	v_div_scale_f32 v83, null, v79, v79, v52
	v_rcp_f32_e32 v119, v91
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v11, v11, v78, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v153, -v93, v137, v94
	v_fmac_f32_e32 v118, v135, v118
	v_rcp_f32_e32 v115, v83
	v_div_scale_f32 v80, vcc_lo, v49, v79, v49
	v_fmac_f32_e32 v137, v153, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v135, v90, v118
	v_fma_f32 v134, -v87, v117, 1.0
	v_div_scale_f32 v84, s10, v52, v79, v52
	v_fma_f32 v159, -v105, v143, v106
	v_fma_f32 v151, -v89, v135, v90
	v_fmac_f32_e32 v124, v141, v124
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v132, -v83, v115, 1.0
	v_fma_f32 v136, -v91, v119, 1.0
	v_div_scale_f32 v88, s12, v54, v79, v54
	v_dual_fmac_f32 v135, v151, v118 :: v_dual_and_b32 v78, 0xffff0000, v11
	v_mul_f32_e32 v141, v102, v124
	v_fmac_f32_e32 v115, v132, v115
	v_fmac_f32_e32 v117, v134, v117
	v_div_scale_f32 v92, s14, v56, v79, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v157, -v101, v141, v102
	v_fmac_f32_e32 v122, v139, v122
	v_div_scale_f32 v111, null, v78, v78, v70
	v_fmac_f32_e32 v119, v136, v119
	v_fmac_f32_e32 v141, v157, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v139, v98, v122 :: v_dual_and_b32 v0, 1, v0
	v_rcp_f32_e32 v129, v111
	v_mul_f32_e32 v132, v84, v115
	v_mul_f32_e32 v134, v88, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v40, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v79, v79, v49
	v_div_scale_f32 v99, null, v79, v79, v60
	v_fma_f32 v148, -v83, v132, v84
	v_rcp_f32_e32 v113, v0
	v_mul_f32_e32 v136, v92, v119
	v_fma_f32 v150, -v87, v134, v88
	v_rcp_f32_e32 v123, v99
	v_fmac_f32_e32 v132, v148, v115
	v_div_scale_f32 v96, s16, v58, v79, v58
	v_fma_f32 v152, -v91, v136, v92
	v_fmac_f32_e32 v134, v150, v117
	v_div_scale_f32 v100, s18, v60, v79, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v130, -v0, v113, 1.0
	v_fmac_f32_e32 v136, v152, v119
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v140, -v99, v123, 1.0
	v_div_scale_f32 v103, null, v79, v79, v62
	v_fmac_f32_e32 v113, v130, v113
	v_mul_f32_e32 v138, v96, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v123, v140, v123
	v_rcp_f32_e32 v125, v103
	v_fma_f32 v155, -v97, v139, v98
	v_mul_f32_e32 v130, v80, v113
	v_fma_f32 v154, -v95, v138, v96
	v_div_scale_f32 v104, s21, v62, v79, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v139, v155, v122
	v_fma_f32 v146, -v0, v130, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v138, v154, v121
	v_div_scale_f32 v110, s20, v68, v79, v68
	v_fma_f32 v142, -v103, v125, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v130, v146, v113
	v_dual_mul_f32 v145, v110, v128 :: v_dual_and_b32 v40, 0xffff0000, v2
	v_div_scale_f32 v112, null, v78, v78, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v0, -v0, v130, v80
	v_fma_f32 v80, -v81, v131, v82
	v_fma_f32 v81, -v83, v132, v84
	v_fma_f32 v82, -v85, v133, v86
	v_fma_f32 v83, -v87, v134, v88
	v_div_fmas_f32 v0, v0, v113, v130
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v84, -v89, v135, v90
	v_div_fmas_f32 v80, v80, v114, v131
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v49, v0, v79, v49
	v_div_fmas_f32 v81, v81, v115, v132
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v85, -v91, v136, v92
	v_div_fmas_f32 v0, v82, v116, v133
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v50, v80, v79, v50
	v_div_fmas_f32 v80, v83, v117, v134
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v86, -v93, v137, v94
	v_div_fixup_f32 v52, v81, v79, v52
	v_div_fmas_f32 v81, v84, v118, v135
	s_mov_b32 vcc_lo, s14
	v_div_fixup_f32 v53, v0, v79, v53
	v_div_fmas_f32 v0, v85, v119, v136
	s_mov_b32 vcc_lo, s15
	v_div_fixup_f32 v54, v80, v79, v54
	v_div_fmas_f32 v80, v86, v120, v137
	v_div_scale_f32 v86, s10, v71, v78, v71
	v_mul_f32_e32 v140, v100, v123
	v_fma_f32 v87, -v95, v138, v96
	v_fma_f32 v88, -v97, v139, v98
	s_mov_b32 vcc_lo, s16
	v_fmac_f32_e32 v125, v142, v125
	v_fma_f32 v156, -v99, v140, v100
	v_div_fixup_f32 v55, v81, v79, v55
	v_div_fmas_f32 v81, v87, v121, v138
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v90, -v101, v141, v102
	v_fmac_f32_e32 v140, v156, v123
	v_div_fixup_f32 v56, v0, v79, v56
	v_div_fmas_f32 v0, v88, v122, v139
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v142, v104, v125
	v_fma_f32 v89, -v99, v140, v100
	v_div_fixup_f32 v57, v80, v79, v57
	v_div_fixup_f32 v58, v81, v79, v58
	v_fma_f32 v82, -v109, v145, v110
	v_fma_f32 v158, -v103, v142, v104
	v_div_fmas_f32 v80, v89, v123, v140
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v108, s23, v67, v79, v67
	v_div_fmas_f32 v81, v90, v124, v141
	v_fmac_f32_e32 v142, v158, v125
	v_fma_f32 v83, -v111, v129, 1.0
	v_fmac_f32_e32 v145, v82, v128
	v_fmac_f32_e32 v143, v159, v126
	v_div_fixup_f32 v61, v81, v79, v61
	v_rcp_f32_e32 v81, v112
	v_mul_f32_e32 v144, v108, v127
	v_fma_f32 v91, -v103, v142, v104
	v_fma_f32 v92, -v105, v143, v106
	v_fmac_f32_e32 v129, v83, v129
	v_div_scale_f32 v83, null, v78, v78, v74
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v160, -v107, v144, v108
	v_div_fixup_f32 v59, v0, v79, v59
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v112, v81, 1.0
	v_div_fmas_f32 v0, v91, v125, v142
	s_mov_b32 vcc_lo, s22
	v_div_fixup_f32 v60, v80, v79, v60
	v_div_fmas_f32 v80, v92, v126, v143
	v_fmac_f32_e32 v81, v82, v81
	v_rcp_f32_e32 v82, v83
	v_fmac_f32_e32 v144, v160, v127
	v_div_fixup_f32 v62, v0, v79, v62
	v_div_fixup_f32 v63, v80, v79, v63
	v_div_scale_f32 v80, s9, v70, v78, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v0, -v107, v144, v108
	v_fma_f32 v84, -v109, v145, v110
	s_mov_b32 vcc_lo, s23
	v_div_scale_f32 v87, null, v78, v78, v75
	v_fma_f32 v90, -v83, v82, 1.0
	v_mul_f32_e32 v85, v80, v129
	v_div_fmas_f32 v0, v0, v127, v144
	s_mov_b32 vcc_lo, s20
	v_mul_f32_e32 v89, v86, v81
	v_div_fmas_f32 v84, v84, v128, v145
	v_fmac_f32_e32 v82, v90, v82
	v_fma_f32 v88, -v111, v85, v80
	v_rcp_f32_e32 v91, v87
	v_div_fixup_f32 v67, v0, v79, v67
	v_div_fixup_f32 v68, v84, v79, v68
	v_fma_f32 v0, -v112, v89, v86
	v_div_scale_f32 v79, s11, v74, v78, v74
	v_fmac_f32_e32 v85, v88, v129
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v89, v0, v81 :: v_dual_mul_f32 v0, v79, v82
	v_fma_f32 v88, -v87, v91, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v111, v85, v80
	v_div_scale_f32 v94, null, v78, v78, v76
	v_div_scale_f32 v84, null, v78, v78, v77
	v_div_fmas_f32 v80, v80, v129, v85
	v_fma_f32 v85, -v112, v89, v86
	v_fma_f32 v86, -v83, v0, v79
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, s12, v75, v78, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v0, v86, v82
	v_div_fmas_f32 v81, v85, v81, v89
	v_rcp_f32_e32 v85, v94
	v_mul_f32_e32 v92, v88, v91
	v_rcp_f32_e32 v90, v84
	v_fma_f32 v79, -v83, v0, v79
	v_div_fixup_f32 v71, v81, v78, v71
	v_div_scale_f32 v83, null, v78, v78, v73
	v_fma_f32 v86, -v87, v92, v88
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, s9, v77, v78, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v94, v85, 1.0
	v_fmac_f32_e32 v92, v86, v91
	v_div_fmas_f32 v0, v79, v82, v0
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v93, -v84, v90, 1.0
	v_fmac_f32_e32 v85, v81, v85
	v_rcp_f32_e32 v81, v83
	v_fma_f32 v79, -v87, v92, v88
	v_div_fixup_f32 v70, v80, v78, v70
	v_div_scale_f32 v86, s10, v76, v78, v76
	v_div_scale_f32 v87, null, v78, v78, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v79, v79, v91, v92
	v_mul_f32_e32 v88, v86, v85
	v_div_fixup_f32 v74, v0, v78, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v83, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v75, v79, v78, v75
	v_fma_f32 v79, -v94, v88, v86
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v47, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v81, v91, v81 :: v_dual_fmac_f32 v90, v93, v90
	v_div_scale_f32 v91, null, v78, v78, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v79, v85
	v_mul_f32_e32 v80, v89, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v84, v80, v89
	v_fmac_f32_e32 v80, v82, v90
	v_rcp_f32_e32 v82, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v0, -v84, v80, v89
	v_div_scale_f32 v84, s11, v73, v78, v73
	v_fma_f32 v89, -v87, v82, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v84, v81
	v_div_fmas_f32 v0, v0, v90, v80
	v_rcp_f32_e32 v80, v91
	v_div_scale_f32 v90, null, v78, v78, v69
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s9, v72, v78, v72
	v_div_fixup_f32 v77, v0, v78, v77
	v_fma_f32 v0, -v94, v88, v86
	v_fma_f32 v86, -v83, v79, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v92, v89, v82
	v_rcp_f32_e32 v93, v90
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v79, v86, v81
	v_div_fmas_f32 v0, v0, v85, v88
	v_fma_f32 v85, -v87, v92, v89
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v86, s10, v66, v78, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v76, v0, v78, v76
	v_fma_f32 v88, -v90, v93, 1.0
	v_fma_f32 v0, -v83, v79, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v92, v85, v82 :: v_dual_mul_f32 v83, v86, v80
	v_div_scale_f32 v85, null, v78, v78, v65
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v93, v88, v93
	v_div_scale_f32 v84, s12, v69, v78, v69
	v_div_fmas_f32 v0, v0, v81, v79
	v_fma_f32 v79, -v87, v92, v89
	v_fma_f32 v81, -v91, v83, v86
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v89, null, v78, v78, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v88, v84, v93 :: v_dual_fmac_f32 v83, v81, v80
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v81, v89
	v_div_fmas_f32 v79, v79, v82, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v90, v88, v84
	v_div_fixup_f32 v73, v0, v78, v73
	v_fma_f32 v92, -v85, v87, 1.0
	v_fma_f32 v0, -v91, v83, v86
	v_div_fixup_f32 v72, v79, v78, v72
	v_fmac_f32_e32 v88, v82, v93
	v_div_scale_f32 v79, s9, v65, v78, v65
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v82, -v89, v81, 1.0
	v_div_scale_f32 v86, null, v78, v78, v51
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v94, null, v78, v78, v45
	v_div_fmas_f32 v0, v0, v80, v83
	v_fma_f32 v80, -v90, v88, v84
	v_mul_f32_e32 v83, v79, v87
	v_fmac_f32_e32 v81, v82, v81
	v_rcp_f32_e32 v82, v86
	v_div_scale_f32 v84, s10, v64, v78, v64
	v_div_scale_f32 v90, null, v78, v78, v48
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v91, v84, v81
	v_div_fmas_f32 v80, v80, v93, v88
	v_fma_f32 v88, -v85, v83, v79
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v86, v82, 1.0
	v_div_fixup_f32 v66, v0, v78, v66
	v_fma_f32 v0, -v89, v91, v84
	v_fmac_f32_e32 v83, v88, v87
	v_div_scale_f32 v88, null, v78, v78, v46
	v_div_fixup_f32 v69, v80, v78, v69
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v80, s11, v51, v78, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v90, v93, 1.0
	v_fma_f32 v79, -v85, v83, v79
	v_fmac_f32_e32 v91, v0, v81
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v0, v80, v82
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s12, v48, v78, v48
	v_div_fmas_f32 v79, v79, v87, v83
	v_fma_f32 v83, -v89, v91, v84
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v84, -v86, v0, v80
	v_mul_f32_e32 v87, v92, v93
	v_fma_f32 v89, -v88, v85, 1.0
	v_div_fmas_f32 v81, v83, v81, v91
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v0, v84, v82
	v_fma_f32 v84, -v90, v87, v92
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s9, v46, v78, v46
	v_div_fixup_f32 v65, v79, v78, v65
	v_div_fixup_f32 v64, v81, v78, v64
	v_fma_f32 v79, -v86, v0, v80
	v_fmac_f32_e32 v87, v84, v93
	v_mul_f32_e32 v80, v89, v85
	v_fma_f32 v81, -v94, v83, 1.0
	v_div_scale_f32 v84, null, v47, v47, v44
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v86, s10, v45, v78, v45
	v_div_fmas_f32 v0, v79, v82, v0
	v_fma_f32 v79, -v90, v87, v92
	v_fma_f32 v82, -v88, v80, v89
	v_fmac_f32_e32 v83, v81, v83
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v90, null, v47, v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v82, v85
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v51, v0, v78, v51
	v_rcp_f32_e32 v82, v90
	v_div_fmas_f32 v79, v79, v93, v87
	v_mul_f32_e32 v87, v86, v83
	v_fma_f32 v0, -v88, v80, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v48, v79, v78, v48
	v_fma_f32 v79, -v94, v87, v86
	v_div_scale_f32 v88, s11, v44, v47, v44
	v_fmac_f32_e32 v81, v91, v81
	v_fma_f32 v89, -v90, v82, 1.0
	v_div_scale_f32 v91, null, v47, v47, v41
	v_div_fmas_f32 v0, v0, v85, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v79, v83 :: v_dual_fmac_f32 v82, v89, v82
	v_rcp_f32_e32 v80, v91
	v_div_scale_f32 v89, null, v47, v47, v42
	v_mul_f32_e32 v79, v88, v81
	v_div_fixup_f32 v46, v0, v78, v46
	v_fma_f32 v0, -v94, v87, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v89
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v86, -v84, v79, v88
	v_div_scale_f32 v85, s9, v43, v47, v43
	v_fma_f32 v94, -v91, v80, 1.0
	v_div_fmas_f32 v0, v0, v83, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v86, v81
	v_div_scale_f32 v86, s10, v41, v47, v41
	v_fmac_f32_e32 v80, v94, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v89, v93, 1.0
	v_div_fixup_f32 v45, v0, v78, v45
	v_fma_f32 v0, -v84, v79, v88
	s_mov_b32 vcc_lo, s11
	v_dual_mul_f32 v78, v86, v80 :: v_dual_fmac_f32 v93, v87, v93
	v_mul_f32_e32 v92, v85, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v81, v79
	v_div_scale_f32 v88, null, v47, v47, v38
	v_fma_f32 v81, -v91, v78, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v83, -v90, v92, v85
	v_div_scale_f32 v84, null, v47, v47, v39
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v78, v81, v80
	v_rcp_f32_e32 v81, v88
	v_fmac_f32_e32 v92, v83, v82
	v_div_scale_f32 v83, s12, v42, v47, v42
	v_div_fixup_f32 v44, v0, v47, v44
	v_fma_f32 v0, -v91, v78, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v79, -v90, v92, v85
	v_rcp_f32_e32 v85, v84
	v_mul_f32_e32 v87, v83, v93
	v_div_scale_f32 v86, null, v47, v47, v37
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v84, v85, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v90, v85
	v_div_fmas_f32 v79, v79, v82, v92
	v_fma_f32 v82, -v89, v87, v83
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v80, v78
	v_div_fixup_f32 v43, v79, v47, v43
	v_fmac_f32_e32 v87, v82, v93
	v_div_scale_f32 v79, s9, v39, v47, v39
	v_fma_f32 v82, -v88, v81, 1.0
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v89, v87, v83
	v_mul_f32_e32 v80, v79, v85
	v_div_scale_f32 v83, s10, v38, v47, v38
	v_fmac_f32_e32 v81, v82, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v78, v78, v93, v87
	v_fma_f32 v87, -v84, v80, v79
	v_div_fixup_f32 v41, v0, v47, v41
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v90, v83, v81
	v_div_scale_f32 v93, null, v47, v47, v35
	v_fmac_f32_e32 v80, v87, v85
	v_rcp_f32_e32 v82, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v88, v90, v83
	v_div_scale_f32 v89, null, v47, v47, v36
	v_fma_f32 v79, -v84, v80, v79
	v_div_scale_f32 v87, null, v47, v47, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v0, v81
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v79, v79, v85, v80
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v91, -v86, v82, 1.0
	v_fma_f32 v80, -v88, v90, v83
	v_div_fixup_f32 v42, v78, v47, v42
	v_div_scale_f32 v78, s11, v37, v47, v37
	v_rcp_f32_e32 v84, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v80, v80, v81, v90
	v_rcp_f32_e32 v81, v93
	v_div_fixup_f32 v39, v79, v47, v39
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v80, v47, v38
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v87, v84, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v93, v81, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s9, v34, v47, v34
	v_dual_fmac_f32 v81, v80, v81 :: v_dual_fmac_f32 v82, v91, v82
	v_fma_f32 v91, -v89, v92, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v79, v88, v84 :: v_dual_mul_f32 v0, v78, v82
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s12, v36, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v83, -v86, v0, v78
	v_mul_f32_e32 v85, v91, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v0, v83, v82
	v_fma_f32 v83, -v89, v85, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v86, v0, v78
	v_div_scale_f32 v86, s10, v35, v47, v35
	v_fmac_f32_e32 v85, v83, v92
	v_div_scale_f32 v83, null, v47, v47, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v78, v82, v0
	v_fma_f32 v82, -v87, v79, v88
	v_fma_f32 v78, -v89, v85, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v89, null, v47, v47, v32
	v_fmac_f32_e32 v79, v82, v84
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v37, v0, v47, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v82, v89
	v_div_fmas_f32 v78, v78, v92, v85
	v_mul_f32_e32 v85, v86, v81
	v_fma_f32 v0, -v87, v79, v88
	v_fma_f32 v90, -v83, v80, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v36, v78, v47, v36
	v_fma_f32 v78, -v93, v85, v86
	v_div_scale_f32 v87, s11, v33, v47, v33
	v_fmac_f32_e32 v80, v90, v80
	v_fma_f32 v88, -v89, v82, 1.0
	v_div_scale_f32 v90, null, v47, v47, v31
	v_div_fmas_f32 v0, v0, v84, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v78, v81 :: v_dual_fmac_f32 v82, v88, v82
	v_rcp_f32_e32 v79, v90
	v_div_scale_f32 v88, null, v47, v47, v30
	v_mul_f32_e32 v78, v87, v80
	v_div_scale_f32 v84, s9, v32, v47, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v92, v88
	v_div_fixup_f32 v0, v0, v47, v34
	v_fma_f32 v34, -v93, v85, v86
	v_fma_f32 v86, -v83, v78, v87
	v_mul_f32_e32 v91, v84, v82
	v_fma_f32 v93, -v90, v79, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v34, v34, v81, v85
	v_fmac_f32_e32 v78, v86, v80
	v_fma_f32 v81, -v89, v91, v84
	v_fmac_f32_e32 v79, v93, v79
	v_div_scale_f32 v85, s10, v31, v47, v31
	v_fma_f32 v86, -v88, v92, 1.0
	v_div_fixup_f32 v34, v34, v47, v35
	v_fma_f32 v35, -v83, v78, v87
	v_fmac_f32_e32 v91, v81, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v81, v85, v79 :: v_dual_fmac_f32 v92, v86, v92
	v_div_scale_f32 v86, null, v47, v47, v28
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, s12, v30, v47, v30
	v_div_fmas_f32 v35, v35, v80, v78
	v_fma_f32 v78, -v89, v91, v84
	v_fma_f32 v80, -v90, v81, v85
	v_rcp_f32_e32 v84, v86
	v_div_scale_f32 v89, null, v47, v47, v29
	v_mul_f32_e32 v87, v83, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v80, v79
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v80, v89
	v_div_fmas_f32 v78, v78, v82, v91
	v_fma_f32 v82, -v88, v87, v83
	v_div_fixup_f32 v33, v35, v47, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v86, v84, 1.0
	v_fma_f32 v35, -v90, v81, v85
	v_div_fixup_f32 v32, v78, v47, v32
	v_fmac_f32_e32 v87, v82, v92
	v_div_scale_f32 v78, s9, v28, v47, v28
	v_fmac_f32_e32 v84, v91, v84
	v_fma_f32 v82, -v89, v80, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, null, v40, v40, v26
	v_div_fmas_f32 v35, v35, v79, v81
	v_fma_f32 v79, -v88, v87, v83
	v_mul_f32_e32 v81, v78, v84
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, null, v40, v40, v27
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v83, s10, v29, v47, v29
	v_div_fmas_f32 v79, v79, v92, v87
	v_rcp_f32_e32 v85, v82
	v_fma_f32 v87, -v86, v81, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v88, v83, v80
	v_div_fixup_f32 v31, v35, v47, v31
	v_div_fixup_f32 v30, v79, v47, v30
	v_rcp_f32_e32 v79, v90
	v_fmac_f32_e32 v81, v87, v84
	v_fma_f32 v35, -v89, v88, v83
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v92, null, v40, v40, v24
	v_fma_f32 v87, -v82, v85, 1.0
	v_fma_f32 v78, -v86, v81, v78
	v_div_scale_f32 v86, null, v40, v40, v25
	v_fmac_f32_e32 v88, v35, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v35, s11, v27, v40, v27
	v_rcp_f32_e32 v87, v86
	v_fma_f32 v91, -v90, v79, 1.0
	v_div_fmas_f32 v78, v78, v84, v81
	v_fma_f32 v81, -v89, v88, v83
	v_mul_f32_e32 v83, v35, v85
	v_div_scale_f32 v84, s9, v26, v40, v26
	v_fmac_f32_e32 v79, v91, v79
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v82, v83, v35
	v_fma_f32 v89, -v86, v87, 1.0
	v_div_fmas_f32 v80, v81, v80, v88
	v_mul_f32_e32 v93, v84, v79
	v_div_fixup_f32 v28, v78, v47, v28
	v_fmac_f32_e32 v83, v91, v85
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, s12, v25, v40, v25
	v_fma_f32 v81, -v90, v93, v84
	v_div_fixup_f32 v29, v80, v47, v29
	v_fma_f32 v35, -v82, v83, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v88, v89, v87
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v93, v81, v79
	v_rcp_f32_e32 v94, v92
	v_div_fmas_f32 v35, v35, v85, v83
	v_fma_f32 v47, -v86, v88, v89
	v_div_scale_f32 v83, null, v40, v40, v22
	v_fma_f32 v81, -v90, v93, v84
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v47, v87
	v_div_scale_f32 v80, null, v40, v40, v23
	v_div_fmas_f32 v79, v81, v79, v93
	v_rcp_f32_e32 v85, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v81, -v86, v88, v89
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v78, -v92, v94, 1.0
	v_rcp_f32_e32 v47, v80
	v_div_fixup_f32 v26, v79, v40, v26
	v_div_fmas_f32 v81, v81, v87, v88
	v_div_fixup_f32 v27, v35, v40, v27
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v83, v85, 1.0
	v_fmac_f32_e32 v94, v78, v94
	v_div_scale_f32 v78, s10, v24, v40, v24
	v_div_fixup_f32 v25, v81, v40, v25
	v_div_scale_f32 v81, null, v40, v40, v20
	v_fma_f32 v84, -v80, v47, 1.0
	v_fmac_f32_e32 v85, v79, v85
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v87, v81
	v_dual_mul_f32 v82, v78, v94 :: v_dual_fmac_f32 v47, v84, v47
	v_div_scale_f32 v84, s9, v23, v40, v23
	v_div_scale_f32 v79, s11, v22, v40, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v92, v82, v78
	v_mul_f32_e32 v35, v84, v47
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v86, v94
	v_fma_f32 v86, -v80, v35, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v92, v82, v78
	v_fmac_f32_e32 v35, v86, v47
	v_div_scale_f32 v86, null, v40, v40, v19
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v94, v82
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v88, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v24, v78, v40, v24
	v_fma_f32 v78, -v80, v35, v84
	v_fma_f32 v84, -v81, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v35, v78, v47, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, null, v40, v40, v21
	v_div_scale_f32 v78, s9, v20, v40, v20
	v_mul_f32_e32 v82, v79, v85
	v_rcp_f32_e32 v90, v84
	v_div_scale_f32 v47, null, v40, v40, v17
	v_div_fixup_f32 v23, v35, v40, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fma_f32 v80, -v83, v82, v79
	v_fma_f32 v35, -v86, v88, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v91, s11, v17, v40, v17
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v84, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v90, v92, v90
	v_fmac_f32_e32 v82, v80, v85
	v_rcp_f32_e32 v80, v47
	v_div_scale_f32 v92, s12, v21, v40, v21
	v_fma_f32 v79, -v83, v82, v79
	v_mul_f32_e32 v83, v78, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v79, v79, v85, v82
	v_fma_f32 v89, -v47, v80, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v81, v83, v78
	v_fmac_f32_e32 v88, v35, v88
	v_div_scale_f32 v35, s10, v19, v40, v19
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v89, null, v40, v40, v18
	v_fmac_f32_e32 v83, v82, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, v35, v88
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v93, v89
	v_div_fixup_f32 v22, v79, v40, v22
	v_fma_f32 v78, -v81, v83, v78
	v_fma_f32 v82, -v86, v85, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v87, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v85, v82, v88
	v_mul_f32_e32 v81, v92, v90
	v_fma_f32 v82, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v83, null, v40, v40, v16
	v_fma_f32 v35, -v86, v85, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v93, v82, v93
	v_div_scale_f32 v82, s9, v18, v40, v18
	v_mul_f32_e32 v94, v91, v80
	v_div_fmas_f32 v35, v35, v88, v85
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v85, v83
	v_div_fixup_f32 v20, v78, v40, v20
	v_fma_f32 v79, -v47, v94, v91
	v_div_fixup_f32 v19, v35, v40, v19
	v_div_scale_f32 v87, null, v40, v40, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v79, v80
	v_fma_f32 v79, -v84, v81, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v83, v85, 1.0
	v_fma_f32 v47, -v47, v94, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v79, v90
	v_mul_f32_e32 v79, v82, v93
	v_div_fmas_f32 v47, v47, v80, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v84, v81, v92
	v_fma_f32 v84, -v89, v79, v82
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v47, v40, v17
	v_div_scale_f32 v47, null, v40, v40, v15
	v_fmac_f32_e32 v79, v84, v93
	v_div_fmas_f32 v80, v80, v90, v81
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v35, -v89, v79, v82
	v_div_fixup_f32 v21, v80, v40, v21
	v_div_scale_f32 v80, null, v40, v40, v13
	v_rcp_f32_e32 v89, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v93, v79
	v_rcp_f32_e32 v79, v47
	v_rcp_f32_e32 v84, v80
	v_div_scale_f32 v81, vcc_lo, v16, v40, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v18, v35, v40, v18
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v87, v89, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v35, -v47, v79, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v80, v84, 1.0
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s12, v14, v40, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v79, v35, v79
	v_div_scale_f32 v35, s9, v15, v40, v15
	v_fmac_f32_e32 v85, v78, v85
	v_div_scale_f32 v78, null, v40, v40, v12
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s11, v13, v40, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v82, v78
	v_dual_mul_f32 v96, v93, v89 :: v_dual_mul_f32 v95, v91, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v78, v82, 1.0
	v_fmac_f32_e32 v82, v88, v82
	v_mul_f32_e32 v92, v35, v79
	v_mul_f32_e32 v86, v81, v85
	v_div_scale_f32 v88, s10, v12, v40, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v83, v86, v81
	v_fmac_f32_e32 v86, v90, v85
	v_fma_f32 v90, -v47, v92, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v83, v86, v81
	v_fmac_f32_e32 v92, v90, v79
	v_fma_f32 v90, -v80, v95, v91
	v_mul_f32_e32 v94, v88, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v81, v85, v86
	v_fma_f32 v35, -v47, v92, v35
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_fmac_f32_e32 v95, v90, v84
	v_fma_f32 v83, -v78, v94, v88
	v_div_fmas_f32 v35, v35, v79, v92
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v47, -v87, v96, v93
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v15, v35, v40, v15
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v49
	v_rndne_f32_e32 v49, v53
	v_rndne_f32_e32 v53, v56
	v_rndne_f32_e32 v56, v59
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v98, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v47, v89
	v_fma_f32 v47, -v80, v95, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v0, v0, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v87, v96, v93
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v62
	v_rndne_f32_e32 v62, v68
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v83, v82
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v74
	v_rndne_f32_e32 v74, v76
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_and_b32_e32 v21, 15, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v78, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v73, v73, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v82, v94
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v47, v84, v95
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v12, v78, v40, v12
	v_div_fmas_f32 v79, v79, v89, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v47, v40, v13
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v52
	v_rndne_f32_e32 v52, v55
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v76, v41
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v52, v52, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v16, v81, v40, v16
	v_div_fixup_f32 v14, v79, v40, v14
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v50
	v_rndne_f32_e32 v50, v54
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v52, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v57
	v_rndne_f32_e32 v55, v58
	v_rndne_f32_e32 v57, v60
	v_rndne_f32_e32 v58, v61
	v_rndne_f32_e32 v60, v63
	v_rndne_f32_e32 v61, v67
	v_rndne_f32_e32 v63, v70
	v_rndne_f32_e32 v67, v71
	v_rndne_f32_e32 v70, v75
	v_rndne_f32_e32 v71, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v75, v43
	v_cvt_i32_f32_e32 v77, v42
	v_cvt_i32_f32_e32 v97, v17
	v_and_b32_e32 v17, 15, v52
	v_and_b32_e32 v42, 15, v46
	v_and_b32_e32 v46, 15, v76
	v_and_b32_e32 v52, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v161
	v_and_b32_e32 v76, 16, v161
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v74, v74, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	v_cvt_i32_f32_e32 v82, v34
	v_cvt_i32_f32_e32 v102, v12
	v_and_b32_e32 v12, 15, v35
	v_and_b32_e32 v34, 15, v73
	v_and_b32_e32 v35, 15, v72
	v_and_b32_e32 v43, 15, v45
	v_and_b32_e32 v45, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v72, 4, v162
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v73, 6, v76
	v_lshlrev_b32_e32 v75, 6, v161
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v89, v27
	v_cvt_i32_f32_e32 v90, v26
	v_cvt_i32_f32_e32 v91, v25
	v_cvt_i32_f32_e32 v92, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v6, v72, v6
	v_add3_u32 v0, 0, v0, v73
	v_and_or_b32 v7, 0x1b00, v75, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v83, v33
	v_cvt_i32_f32_e32 v84, v32
	v_cvt_i32_f32_e32 v99, v18
	v_cvt_i32_f32_e32 v100, v16
	v_cvt_i32_f32_e32 v85, v31
	v_cvt_i32_f32_e32 v86, v30
	v_cvt_i32_f32_e32 v87, v28
	v_cvt_i32_f32_e32 v88, v29
	v_cvt_i32_f32_e32 v96, v19
	v_cvt_i32_f32_e32 v101, v15
	v_cvt_i32_f32_e32 v103, v13
	v_cvt_i32_f32_e32 v104, v14
	v_and_b32_e32 v13, 15, v40
	v_and_b32_e32 v14, 15, v47
	v_and_b32_e32 v15, 15, v49
	v_and_b32_e32 v16, 15, v50
	v_and_b32_e32 v18, 15, v53
	v_and_b32_e32 v19, 15, v54
	v_and_b32_e32 v25, 15, v60
	v_and_b32_e32 v26, 15, v61
	v_and_b32_e32 v27, 15, v62
	v_and_b32_e32 v28, 15, v63
	v_and_b32_e32 v29, 15, v67
	v_and_b32_e32 v30, 15, v68
	v_and_b32_e32 v31, 15, v70
	v_and_b32_e32 v32, 15, v71
	v_and_b32_e32 v33, 15, v74
	v_and_b32_e32 v44, 15, v44
	v_and_b32_e32 v47, 15, v77
	v_and_b32_e32 v60, 15, v89
	v_and_b32_e32 v61, 15, v90
	v_and_b32_e32 v62, 15, v91
	v_and_b32_e32 v63, 15, v92
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v6, v8
	v_xad_u32 v77, v7, v5, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v39
	v_cvt_i32_f32_e32 v79, v38
	v_cvt_i32_f32_e32 v80, v37
	v_cvt_i32_f32_e32 v81, v36
	v_cvt_i32_f32_e32 v93, v23
	v_cvt_i32_f32_e32 v94, v22
	v_cvt_i32_f32_e32 v95, v20
	v_and_b32_e32 v20, 15, v55
	v_and_b32_e32 v22, 15, v57
	v_and_b32_e32 v24, 15, v59
	v_and_b32_e32 v36, 15, v66
	v_and_b32_e32 v37, 15, v69
	v_and_b32_e32 v38, 15, v65
	v_and_b32_e32 v39, 15, v64
	v_and_b32_e32 v40, 15, v51
	v_and_b32_e32 v41, 15, v48
	v_and_b32_e32 v53, 15, v82
	v_and_b32_e32 v54, 15, v83
	v_and_b32_e32 v55, 15, v84
	v_and_b32_e32 v68, 15, v97
	v_and_b32_e32 v69, 15, v98
	v_and_b32_e32 v70, 15, v99
	v_and_b32_e32 v71, 15, v100
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v23, 15, v58
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[12:15]
	ds_store_b128 v0, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v77
	ds_load_b128 v[12:15], v77 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[28:31]
	ds_store_b128 v0, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v77
	ds_load_b128 v[28:31], v77 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[44:47]
	ds_store_b128 v0, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v77
	ds_load_b128 v[44:47], v77 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[60:63]
	ds_store_b128 v0, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v77
	ds_load_b128 v[60:63], v77 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[16:19]
	ds_store_b128 v0, v[24:27] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v77
	ds_load_b128 v[24:27], v77 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[32:35]
	ds_store_b128 v0, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v77
	ds_load_b128 v[40:43], v77 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v48, 15, v78
	v_and_b32_e32 v49, 15, v79
	v_and_b32_e32 v50, 15, v80
	v_and_b32_e32 v51, 15, v81
	v_and_b32_e32 v56, 15, v85
	v_and_b32_e32 v57, 15, v86
	v_and_b32_e32 v58, 15, v87
	v_and_b32_e32 v59, 15, v88
	v_and_b32_e32 v64, 15, v93
	v_and_b32_e32 v65, 15, v94
	v_and_b32_e32 v66, 15, v95
	v_and_b32_e32 v67, 15, v96
	v_and_b32_e32 v72, 15, v101
	v_and_b32_e32 v73, 15, v102
	v_and_b32_e32 v74, 15, v103
	v_and_b32_e32 v75, 15, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[48:51]
	ds_store_b128 v0, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v77
	ds_load_b128 v[56:59], v77 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v27, 4, v19
	v_lshl_or_b32 v27, v43, 4, v35
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v162
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[64:67]
	ds_store_b128 v0, v[72:75] offset:512
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v0, v12, 4, v5
	v_lshl_or_b32 v5, v13, 4, v6
	v_lshl_or_b32 v6, v14, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, v9, v4
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s9, s34, 31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v4, s33, 7, v43
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s34, s9
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 16, v7
	v_add_nc_u32_e32 v14, 32, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[64:67], v77
	ds_load_b128 v[68:71], v77 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v72, v15, 4, v8
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v17, v25, 4, v17
	v_lshl_or_b32 v18, v26, 4, v18
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s9, v[4:5]
	v_mad_u64_u32 v[12:13], null, v12, s9, v[4:5]
	v_mad_u64_u32 v[13:14], null, v14, s9, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v20, v28, 4, v20
	v_lshl_or_b32 v21, v29, 4, v21
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v23, v31, 4, v23
	v_lshl_or_b32 v24, v40, 4, v32
	v_lshl_or_b32 v25, v41, 4, v33
	v_lshl_or_b32 v26, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v15, s9, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v72.l
	v_and_b16 v2.l, 0xff, v6.l
	v_lshlrev_b16 v4.l, 8, v5.l
	v_and_b16 v4.h, 0xff, v0.l
	v_lshlrev_b16 v5.l, 8, v19.l
	v_and_b16 v5.h, 0xff, v18.l
	v_lshlrev_b16 v6.l, 8, v17.l
	v_and_b16 v6.h, 0xff, v16.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v44, 4, v36
	v_lshl_or_b32 v29, v45, 4, v37
	v_lshl_or_b32 v30, v46, 4, v38
	v_lshl_or_b32 v31, v47, 4, v39
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v2.l, v1.l
	v_or_b16 v15.l, v4.h, v4.l
	v_or_b16 v16.h, v5.h, v5.l
	v_or_b16 v16.l, v6.h, v6.l
	v_cndmask_b32_e32 v0, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v4.h, 0xff, v20.l
	v_lshlrev_b16 v5.l, 8, v27.l
	v_and_b16 v5.h, 0xff, v26.l
	v_lshlrev_b16 v6.l, 8, v25.l
	v_and_b16 v6.h, 0xff, v24.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[15:16], v0, s[28:31], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.h, v4.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_cndmask_b32_e32 v0, 0x80000000, v12, vcc_lo
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v30.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v4.h, 0xff, v28.l
	v_lshlrev_b16 v5.l, 8, v35.l
	v_and_b16 v5.h, 0xff, v34.l
	v_lshlrev_b16 v6.l, 8, v33.l
	v_and_b16 v6.h, 0xff, v32.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	v_lshl_or_b32 v38, v62, 4, v54
	v_lshl_or_b32 v39, v63, 4, v55
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v40, v68, 4, v64
	v_lshl_or_b32 v41, v69, 4, v65
	v_lshl_or_b32 v42, v70, 4, v66
	v_lshl_or_b32 v44, v71, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[7:8], v0, s[28:31], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.h, v4.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_cndmask_b32_e32 v0, 0x80000000, v13, vcc_lo
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v38.l
	v_lshlrev_b16 v4.l, 8, v37.l
	v_and_b16 v4.h, 0xff, v36.l
	v_lshlrev_b16 v5.l, 8, v44.l
	v_and_b16 v5.h, 0xff, v42.l
	v_lshlrev_b16 v6.l, 8, v41.l
	v_and_b16 v6.h, 0xff, v40.l
	buffer_store_b64 v[7:8], v0, s[28:31], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 2, v76
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_or_b16 v13.h, v5.h, v5.l
	v_or_b16 v13.l, v6.h, v6.l
	v_dual_cndmask_b32 v4, 0x80000000, v14 :: v_dual_and_b32 v5, 2, v9
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s34, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v11.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[12:13], v4, s[28:31], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v43
	v_mov_b16_e32 v1.l, v10.h
	v_add3_u32 v0, v0, v5, v43
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s34, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v161
	s_and_b32 s29, s27, 0xffff
	s_mov_b32 s28, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s33, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[28:31], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp60:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 84
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 84
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17620
; TotalNumSgprs: 38
; NumVgprs: 256
; ScratchSize: 84
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 38
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 84
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 20
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
