	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s59, s[0:1], 0x64
	s_load_b32 s72, s[0:1], 0x5c
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v56, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v53, 2, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s8, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s8
	s_sub_i32 s5, 0, s8
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v1, 7, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v2, 2, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s4, s5
	s_add_i32 s9, s4, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s2, s59
	s_mul_hi_u32 s4, s6, s9
	s_ashr_i32 s10, s5, 31
	s_mul_i32 s7, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s6, s7
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s8
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s6, s6, s4
	s_load_b64 s[4:5], s[0:1], 0x0
	s_xor_b32 s6, s6, s10
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s72, v2
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s10, s6, s10
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s13, s10, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s10, s10, s59
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s13, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s13, v56
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s12, v56
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s58, s2, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s44, 1, v9
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, v3, s72, v[2:3]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s44
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	buffer_load_b32 v3, v2, s[4:7], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s59, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 0x60, v0
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s5, s4, s59
	s_abs_i32 s4, s4
	s_ashr_i32 s5, s5, 31
	s_mul_hi_u32 s6, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v4, 2, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s7, s6, s8
	s_add_i32 s9, s6, 1
	s_sub_i32 s4, s4, s7
	v_lshrrev_b32_e32 v58, 3, v2
	s_sub_i32 s2, s4, s8
	s_cmp_ge_u32 s4, s8
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v4, v53, v4, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s8
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s5
	s_sub_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s58, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s73, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s4, s73, s2
	s_mov_b32 s2, 0
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s74, s4, 0x800
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s73, s74
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v10, 3, v2
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr10
.LBB0_3:                                ; %Flow137
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b32 s45, s[0:1], 0x60
	v_and_b32_e32 v57, 15, v0
	v_lshlrev_b32_e32 v54, 1, v0
	v_and_b32_e32 v55, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_8
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v3, s13, v57
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s12, v57, 1
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[46:47], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x68
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v3
	v_dual_mov_b32 v19, 0x5410 :: v_dual_and_b32 v12, 16, v0
	v_dual_mov_b32 v109, 0xff800000 :: v_dual_add_nc_u32 v2, 0, v2
	.loc	1 779 31                        ; attention.py:779:31
	v_dual_cndmask_b32 v3, 0x80000000, v4 :: v_dual_lshlrev_b32 v10, 3, v1
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v4, 24, v54
	v_cmp_eq_u32_e32 vcc_lo, 0, v55
	v_lshlrev_b32_e32 v60, 4, v0
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_and_b32 v5, 24, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v21, v57, 5, v4
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s9, 0xffff
	s_mov_b32 s60, s8
	v_lshlrev_b32_e32 v6, 5, v0
	buffer_load_u16 v11, v3, s[60:63], 0 offen
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v3, v0, 4, 1
	v_cndmask_b32_e64 v8, 0x420, 0, vcc_lo
	v_lshlrev_b32_e32 v13, 3, v0
	v_bfe_i32 v15, v0, 2, 1
	v_bfe_i32 v16, v0, 3, 1
	v_bfe_i32 v17, v0, 5, 1
	v_cmp_eq_u32_e64 s1, 0, v12
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s75, s3, 11
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v25, 8, v21
	v_dual_mov_b32 v20, 0x7632 :: v_dual_lshlrev_b32 v41, 4, v55
	v_dual_mov_b32 v62, 0xff800000 :: v_dual_and_b32 v7, 28, v0
	v_and_b32_e32 v14, 4, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v64, 0x800, v3
	v_or_b32_e32 v66, s75, v3
	v_dual_mov_b32 v4, v1 :: v_dual_lshlrev_b32 v23, 4, v5
	v_and_b32_e32 v15, 0x840, v15
	v_and_b32_e32 v16, 0x420, v16
	v_and_b32_e32 v17, 0x840, v17
	v_cndmask_b32_e64 v19, 0x1054, v19, s1
	v_lshl_add_u32 v68, v57, 1, v2
	v_mov_b32_e32 v2, v1
	v_and_or_b32 v13, v13, 16, v8
	v_mov_b32_e32 v3, v1
	v_xor_b32_e32 v65, v60, v5
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v24, 0x60, v6
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v26, 16, v21
	v_dual_mov_b32 v70, v1 :: v_dual_add_nc_u32 v69, 0, v21
	v_xor_b32_e32 v21, 24, v21
	v_add_nc_u32_e32 v89, 0, v25
	v_and_or_b32 v67, 0x3e0, v6, v7
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_lshl_add_u32 v14, v14, 7, 0
	v_mov_b32_e32 v8, v1
	v_or3_b32 v87, v13, v15, v23
	v_xor3_b32 v15, v16, v24, v17
	v_cndmask_b32_e64 v16, 0x3276, v20, s1
	v_lshl_or_b32 v17, v19, 8, v19
	v_add_nc_u32_e32 v90, 0, v26
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s1, s12, 0x3fb8aa3b
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v91, 0, v21
	v_xor_b32_e32 v13, 28, v67
	v_lshl_or_b32 v16, v16, 8, v16
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_xor_b32_e32 v61, v53, v58
	s_lshr_b32 s0, s0, 29
	v_add_nc_u32_e32 v99, 0, v13
	s_add_i32 s2, s3, s0
	v_mul_lo_u32 v9, v9, s15
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s2, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s2, s2, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	v_xor_b32_e32 v22, 0x210, v61
	v_xor_b32_e32 v27, 8, v65
	v_xor_b32_e32 v28, 4, v67
	v_xor_b32_e32 v29, 8, v67
	v_xor_b32_e32 v30, 12, v67
	v_xor_b32_e32 v31, 16, v67
	v_xor_b32_e32 v32, 20, v67
	v_xor_b32_e32 v33, 24, v67
	v_xor_b32_e32 v19, 32, v87
	v_xor_b32_e32 v20, 64, v87
	v_xor_b32_e32 v21, 0x60, v87
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s8, s14, s8
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s2, s13, s2
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v59, 1, v0
	s_add_i32 s8, s8, s2
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s45, v10
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v63, 0x800, v10
	v_or_b32_e32 v71, 32, v66
	v_or_b32_e32 v72, 34, v66
	v_or_b32_e32 v73, 36, v66
	v_or_b32_e32 v74, 38, v66
	v_or_b32_e32 v75, 40, v66
	v_or_b32_e32 v76, 42, v66
	v_or_b32_e32 v77, 44, v66
	v_or_b32_e32 v78, 46, v66
	v_or_b32_e32 v79, 48, v66
	v_or_b32_e32 v80, 50, v66
	v_or_b32_e32 v81, 52, v66
	v_or_b32_e32 v82, 54, v66
	v_or_b32_e32 v83, 56, v66
	v_or_b32_e32 v84, 58, v66
	v_or_b32_e32 v85, 60, v66
	v_or_b32_e32 v86, 62, v66
	v_add_nc_u32_e32 v88, 0, v22
	v_add_nc_u32_e32 v92, 0, v27
	v_add_nc_u32_e32 v93, 0, v28
	v_add_nc_u32_e32 v94, 0, v29
	v_add_nc_u32_e32 v95, 0, v30
	v_add_nc_u32_e32 v96, 0, v31
	v_add_nc_u32_e32 v97, 0, v32
	v_add_nc_u32_e32 v98, 0, v33
	v_add_nc_u32_e32 v100, 0, v19
	v_add_nc_u32_e32 v101, 0, v20
	v_add_nc_u32_e32 v102, 0, v21
	v_add3_u32 v105, s8, v10, v9
	.loc	1 774 26                        ; attention.py:774:26
	s_mov_b32 s48, 0
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s76, s45, 4
	s_lshl_b32 s77, s45, 5
	s_mul_i32 s78, s45, 48
	s_mov_b32 s79, 0x76543210
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s64, s10
	s_mov_b32 s68, s6
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s65, s11
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e32 vcc_lo, s72, v41
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[42:43], null, s45, v56, v[10:11]
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v11, 16, v11
	v_and_b32_e32 v18, 0x80, v54
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[43:44], v69
	ds_load_b64 v[45:46], v89
	ds_load_b64 v[47:48], v90
	ds_load_b64 v[49:50], v91
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v107, s1, v11
	v_add3_u32 v14, v14, v18, v15
	v_and_b32_e32 v15, 0x540054, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v103, v14, v12
	v_lshl_or_b32 v13, v15, 4, v15
	v_and_b32_e32 v15, 0x760076, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v104, 0x5040504, v13
	v_lshl_or_b32 v12, v15, 4, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v106, 0x7060706, v12
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 41 is_stmt 0                ; attention.py:0:41
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b16_e32 v110.l, 0
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v143, 8, v52
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_mul_f32_e32 v144, v107, v10
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v10, 8, v51
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v124.h, v123.l
	v_mov_b16_e32 v123.l, v110.l
	v_mov_b16_e32 v123.h, v122.l
	v_mov_b16_e32 v117.h, v116.l
	v_mov_b16_e32 v116.l, v110.l
	v_mov_b16_e32 v116.h, v115.l
	v_mov_b16_e32 v115.h, v114.l
	v_mov_b16_e32 v114.l, v110.l
	v_mov_b16_e32 v114.h, v113.l
	v_mov_b16_e32 v112.h, v111.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v111, v107, v9
	v_mul_f32_e32 v146, v107, v12
	v_mul_f32_e32 v145, v107, v11
	v_mul_f32_e32 v14, v107, v14
	v_mul_f32_e32 v147, v107, v13
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v9.l, 0xff, v51.l
	v_and_b16 v9.h, 0xff, v10.l
	v_and_b16 v10.l, 0xff, v51.h
	v_lshrrev_b32_e32 v12, 24, v51
	v_and_b16 v11.l, 0xff, v143.l
	v_and_b16 v11.h, 0xff, v52.h
	v_lshrrev_b32_e32 v13, 24, v52
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v125.h, v124.l
	v_mov_b16_e32 v124.l, v110.l
	v_mov_b16_e32 v120.h, v119.l
	v_mov_b16_e32 v119.l, v110.l
	v_mov_b16_e32 v119.h, v118.l
	v_mov_b16_e32 v113.h, v112.l
	v_mov_b16_e32 v112.l, v110.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v22, v22
	v_mul_f32_e32 v20, v107, v20
	v_mul_f32_e32 v16, v107, v16
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v10.h, 0xff, v52.l
	v_cmp_ne_u16_e64 s1, 0, v9.l
	v_cmp_ne_u16_e64 s2, 0, v9.h
	v_cmp_ne_u16_e64 s4, 0, v10.l
	v_cmp_ne_u16_e64 s5, 0, v12.l
	v_cmp_ne_u16_e64 s7, 0, v11.l
	v_cmp_ne_u16_e64 s8, 0, v11.h
	v_cmp_ne_u16_e64 s9, 0, v13.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v128.h, v127.l
	v_mov_b16_e32 v127.l, v110.l
	v_mov_b16_e32 v127.h, v126.l
	v_mov_b16_e32 v126.l, v110.l
	v_mov_b16_e32 v126.h, v125.l
	v_mov_b16_e32 v125.l, v110.l
	v_mov_b16_e32 v122.l, v110.l
	v_mov_b16_e32 v122.h, v121.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v26, v26
	v_dual_mul_f32 v18, v107, v18 :: v_dual_mul_f32 v51, v20, v124
	v_mul_f32_e32 v17, v107, v17
	v_mul_f32_e32 v22, v107, v22
	v_mul_f32_e32 v111, v111, v119
	v_mul_f32_e32 v119, v16, v112
	v_mul_f32_e32 v19, v107, v19
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s6, 0, v10.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s33, s10, s1
	s_and_b32 s34, s10, s2
	s_and_b32 s36, s10, s4
	s_and_b32 s25, s10, s8
	s_and_b32 s29, s10, s5
	s_and_b32 s27, s10, s9
	s_and_b32 s31, s10, s7
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v126, v18, v126
	v_dual_mul_f32 v26, v107, v26 :: v_dual_mul_f32 v127, v17, v127
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v17, 0, 1, s33
	v_cndmask_b32_e64 v18, 0, 1, s34
	v_cndmask_b32_e64 v10, 0, 1, s36
	v_cndmask_b32_e64 v9, 0, 1, s25
	v_cndmask_b32_e64 v13, 0, 1, s29
	v_cndmask_b32_e64 v11, 0, 1, s27
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v122, v22, v122 :: v_dual_mul_f32 v125, v19, v125
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v19, 0, 1, s31
	s_and_b32 s30, s10, s6
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v12, 0, 1, s30
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_mov_b16_e32 v10.l, v17.l
	v_lshlrev_b16 v10.h, 8, v11.l
	v_mov_b16_e32 v11.l, v19.l
	v_lshlrev_b16 v11.h, 8, v13.l
	v_mov_b16_e32 v13.l, v18.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v28, v107, v28
	v_mul_f32_e32 v30, v107, v30
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v12.h, v12.l, v9.l
	v_or_b16 v12.l, v10.l, v9.h
	v_add_nc_u32_e32 v9, 0, v61
	v_or_b16 v10.h, v11.l, v10.h
	v_or_b16 v10.l, v13.l, v11.h
	v_add_nc_u32_e32 v11, 0, v67
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v9, v12
	ds_store_b32 v88, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v11
	ds_load_b32 v12, v93
	ds_load_b32 v13, v94
	ds_load_b32 v17, v95
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v136.h, v135.l
	v_mov_b16_e64 v135.l, v110.l
	v_mov_b16_e64 v135.h, v134.l
	v_mov_b16_e64 v134.l, v110.l
	v_mov_b16_e64 v134.h, v133.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_mul_f32_e32 v25, v107, v25
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v140.h, v139.l
	v_mov_b16_e64 v139.l, v110.l
	v_mov_b16_e64 v139.h, v138.l
	v_mov_b16_e64 v138.l, v110.l
	v_mov_b16_e64 v138.h, v137.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v23, v23
	v_mul_f32_e32 v134, v26, v134
	v_dual_mul_f32 v38, v107, v38 :: v_dual_mul_f32 v135, v25, v135
	v_mul_f32_e32 v37, v107, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v110.h, v142.l
	v_mov_b16_e64 v141.h, v141.l
	v_mov_b16_e64 v141.l, v110.l
	v_mov_b16_e64 v142.l, v110.l
	v_mov_b16_e64 v142.h, v140.l
	v_mov_b16_e32 v121.l, v110.l
	v_mov_b16_e32 v121.h, v120.l
	v_mov_b16_e32 v118.l, v110.l
	v_mov_b16_e32 v118.h, v117.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v23, v107, v23 :: v_dual_mul_f32 v118, v144, v118
	v_mul_f32_e32 v38, v38, v138
	v_dual_mul_f32 v34, v107, v34 :: v_dual_mul_f32 v37, v37, v139
	v_mul_f32_e32 v35, v107, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v120.l, v110.l
	v_mov_b16_e32 v113.l, v110.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v24, v107, v24
	v_dual_mul_f32 v15, v107, v15 :: v_dual_mul_f32 v34, v34, v141
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v35, v35, v142 :: v_dual_and_b32 v16, 0x1000000, v11
	v_mul_f32_e32 v121, v23, v121
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v9.l, 8, v11.l
	v_and_b32_e32 v23, 0x10000, v11
	v_and_b32_e32 v11, 1, v11
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v21, v107, v21 :: v_dual_mul_f32 v120, v24, v120
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v113, v15, v113 :: v_dual_and_b32 v24, 0x1000000, v12
	v_cvt_f32_i32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v52, v21, v123
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_b32 v15, v96
	ds_load_b32 v19, v97
	ds_load_b32 v20, v98
	ds_load_b32 v21, v99
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v132.h, v131.l
	v_mov_b16_e64 v131.l, v110.l
	v_mov_b16_e64 v131.h, v130.l
	v_mov_b16_e64 v130.l, v110.l
	v_mov_b16_e64 v130.h, v129.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v40
	v_mul_f32_e32 v29, v107, v29
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v9.h, 8, v12.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v39, v39
	v_mul_f32_e32 v30, v30, v130
	v_dual_mul_f32 v40, v107, v40 :: v_dual_mul_f32 v29, v29, v131
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v10.l, 1, v9.l
	s_waitcnt lgkmcnt(5)
	v_lshrrev_b16 v9.l, 8, v13.l
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt lgkmcnt(4)
	v_dual_mul_f32 v114, v14, v114 :: v_dual_and_b32 v131, 0x10000, v17
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v14.l, 1, v9.h
	v_lshrrev_b16 v9.h, 8, v17.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v140.l, v110.l
	v_mov_b16_e64 v137.l, v110.l
	v_mov_b16_e64 v137.h, v136.l
	v_mov_b16_e64 v136.l, v110.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v107, v36
	v_mul_f32_e32 v33, v107, v33
	v_mul_f32_e32 v39, v107, v39
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v18.l, 1, v9.l
	v_and_b16 v22.l, 1, v9.h
	s_waitcnt lgkmcnt(3)
	v_lshrrev_b16 v9.l, 8, v15.l
	s_waitcnt lgkmcnt(2)
	v_lshrrev_b16 v9.h, 8, v19.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v117.l, v110.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_dual_mul_f32 v36, v36, v140 :: v_dual_mul_f32 v33, v33, v110
	v_dual_mul_f32 v40, v40, v136 :: v_dual_mul_f32 v39, v39, v137
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v112, 0x10000, v12
	v_and_b16 v25.l, 1, v9.l
	v_and_b16 v25.h, 1, v9.h
	s_waitcnt lgkmcnt(1)
	v_lshrrev_b16 v9.l, 8, v20.l
	v_and_b32_e32 v141, 0x1000000, v20
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v9.h, 8, v21.l
	v_cmp_eq_u32_e64 s42, 1, v11
	v_cmp_eq_u16_e64 s43, 1, v10.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v133.l, v110.l
	v_mov_b16_e64 v133.h, v132.l
	v_mov_b16_e64 v132.l, v110.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v27, v107, v27
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v129.l, v110.l
	v_mov_b16_e64 v129.h, v128.l
	v_mov_b16_e64 v128.l, v110.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v116, v146, v116
	v_dual_mul_f32 v32, v107, v32 :: v_dual_mul_f32 v117, v145, v117
	v_mul_f32_e32 v31, v107, v31
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v115.l, v110.l
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v26.l, 1, v9.l
	v_and_b32_e32 v144, 0x1000000, v21
	v_and_b16 v26.h, 1, v9.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v9, 0xff800000, v33, s42
	v_cndmask_b32_e64 v10, 0xff800000, v34, s43
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v145, 0x10000, v21
	v_cmp_ne_u32_e64 s35, 0, v112
	v_cmp_ne_u32_e64 s8, 0, v141
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v28, v28, v132 :: v_dual_mul_f32 v27, v27, v133
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v136, 0x10000, v15
	v_and_b32_e32 v124, 0x1000000, v13
	v_and_b32_e32 v132, 1, v17
	v_and_b32_e32 v133, 0x1000000, v15
	v_and_b32_e32 v137, 1, v15
	v_and_b32_e32 v123, 1, v12
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v32, v32, v128 :: v_dual_mul_f32 v31, v31, v129
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v138, 0x1000000, v19
	v_and_b32_e32 v130, 0x1000000, v17
	v_and_b32_e32 v139, 0x10000, v19
	v_and_b32_e32 v140, 1, v19
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v115, v147, v115 :: v_dual_and_b32 v128, 0x10000, v13
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v129, 1, v13
	v_and_b32_e32 v142, 0x10000, v20
	v_and_b32_e32 v143, 1, v20
	v_cmp_ne_u32_e64 s40, 0, v23
	v_cmp_ne_u32_e64 s41, 0, v16
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v15, 0xff800000, v39, s35
	v_cndmask_b32_e64 v39, 0xff800000, v116, s8
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v146, 1, v21
	v_cmp_eq_u16_e64 s5, 1, v26.h
	v_cmp_ne_u32_e64 s1, 0, v145
	v_cmp_ne_u32_e64 s4, 0, v144
	v_cmp_ne_u32_e64 s24, 0, v124
	v_cmp_eq_u32_e64 s21, 1, v132
	v_cmp_eq_u16_e64 s22, 1, v22.l
	v_cmp_ne_u32_e64 s19, 0, v131
	v_cmp_eq_u32_e64 s17, 1, v137
	v_cmp_eq_u16_e64 s18, 1, v25.l
	v_cmp_ne_u32_e64 s16, 0, v136
	v_cmp_ne_u32_e64 s15, 0, v133
	v_cmp_eq_u32_e64 s39, 1, v123
	v_cmp_eq_u16_e64 s38, 1, v14.l
	v_cmp_ne_u32_e64 s37, 0, v24
	v_cmp_ne_u32_e64 s20, 0, v130
	v_cmp_eq_u32_e64 s13, 1, v140
	v_cmp_eq_u16_e64 s14, 1, v25.h
	v_cmp_ne_u32_e64 s11, 0, v139
	v_cmp_ne_u32_e64 s12, 0, v138
	v_cmp_eq_u32_e64 s26, 1, v129
	v_cmp_eq_u16_e64 s28, 1, v18.l
	v_cmp_ne_u32_e64 s23, 0, v128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v11, 0xff800000, v35, s40
	v_cndmask_b32_e64 v12, 0xff800000, v36, s41
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s10, 1, v143
	v_cmp_eq_u16_e64 s9, 1, v26.l
	v_cmp_ne_u32_e64 s7, 0, v142
	v_cmp_eq_u32_e64 s6, 1, v146
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v112, 0xff800000, v114, s5
	v_cndmask_b32_e64 v113, 0xff800000, v113, s1
	v_cndmask_b32_e64 v114, 0xff800000, v119, s4
	v_add_nc_u32_e32 v25, 0, v87
	v_cndmask_b32_e64 v20, 0xff800000, v28, s24
	v_cndmask_b32_e64 v21, 0xff800000, v29, s21
	v_cndmask_b32_e64 v22, 0xff800000, v30, s22
	v_cndmask_b32_e64 v23, 0xff800000, v31, s19
	v_cndmask_b32_e64 v28, 0xff800000, v127, s17
	v_cndmask_b32_e64 v29, 0xff800000, v126, s18
	v_cndmask_b32_e64 v30, 0xff800000, v125, s16
	v_cndmask_b32_e64 v31, 0xff800000, v51, s15
	v_cndmask_b32_e64 v13, 0xff800000, v37, s39
	v_cndmask_b32_e64 v14, 0xff800000, v38, s38
	v_cndmask_b32_e64 v16, 0xff800000, v40, s37
	v_cndmask_b32_e64 v24, 0xff800000, v32, s20
	v_cndmask_b32_e64 v32, 0xff800000, v52, s13
	v_cndmask_b32_e64 v33, 0xff800000, v122, s14
	v_cndmask_b32_e64 v34, 0xff800000, v121, s11
	v_cndmask_b32_e64 v35, 0xff800000, v120, s12
	v_cndmask_b32_e64 v17, 0xff800000, v135, s26
	v_cndmask_b32_e64 v18, 0xff800000, v134, s28
	v_cndmask_b32_e64 v19, 0xff800000, v27, s23
	v_cndmask_b32_e64 v36, 0xff800000, v111, s10
	v_cndmask_b32_e64 v37, 0xff800000, v118, s9
	v_cndmask_b32_e64 v38, 0xff800000, v117, s7
	v_cndmask_b32_e64 v111, 0xff800000, v115, s6
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v128, v113, v114
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v25, v[9:12]
	ds_store_b128 v25, v[28:31] offset:512
	ds_store_b128 v100, v[13:16]
	ds_store_b128 v100, v[32:35] offset:512
	ds_store_b128 v101, v[17:20]
	ds_store_b128 v101, v[36:39] offset:512
	ds_store_b128 v102, v[21:24]
	ds_store_b128 v102, v[111:114] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[115:118], v103 offset:256
	ds_load_b128 v[119:122], v103
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v51, v18, v19, v20
	v_max3_f32 v52, v21, v22, v23
	v_max3_f32 v123, v24, v28, v29
	v_max3_f32 v124, v30, v31, v32
	v_max3_f32 v125, v33, v34, v35
	v_max3_f32 v126, v36, v37, v38
	v_max_f32_e32 v127, v39, v111
.Ltmp6:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v108
	.loc	1 877 25                        ; attention.py:877:25
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v25, v118, v118
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v26, v122, v122
	v_max3_f32 v27, v119, v115, v120
	v_max3_f32 v40, v116, v121, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v25, v26, v25
	v_max3_f32 v25, v27, v40, v25
	v_max3_f32 v27, v12, v13, v14
	v_max3_f32 v40, v15, v16, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v26, v25
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v26, v26, v26
	v_max_f32_e32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v26, v25
	v_mov_b32_dpp v26, v26 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v26, v26, v26
	v_max_f32_e32 v25, v25, v26
	v_max_f32_e32 v26, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v26, v26, v11, v27
	v_max3_f32 v27, v51, v52, v123
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v51, v25
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v52, v124, v125, v126
	v_max3_f32 v123, v127, v112, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v26, v26, v40, v27
	v_max3_f32 v26, v26, v52, v123
.Ltmp14:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v52, v62, v62
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v40, v26, s79, 0xfedcba98 op_sel:[1,0]
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v27, v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v26, v108, v26, v40
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v27, v25, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v25, v109, v109 :: v_dual_sub_f32 v40, v108, v26
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v123, v13, v26 :: v_dual_max_f32 v62, v52, v27
	v_sub_f32_e32 v128, v18, v26
	v_sub_f32_e32 v124, v14, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v40, v40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v126, v16, v26
	v_dual_sub_f32 v52, v115, v62 :: v_dual_max_f32 v25, v25, v27
	v_sub_f32_e32 v118, v118, v62
	v_sub_f32_e32 v108, v120, v62
	v_sub_f32_e32 v120, v10, v26
	v_sub_f32_e32 v115, v121, v62
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v51, v109, v25
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v40, 0, v40, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v109
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v115
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v51, v51
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v127, v17, v26 :: v_dual_mul_f32 v4, v4, v40
	v_sub_f32_e32 v121, v11, v26
	v_dual_sub_f32 v125, v15, v26 :: v_dual_mul_f32 v2, v2, v40
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v18, 0, v10, s34
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v108
	v_exp_f32_e32 v16, v118
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v129, v19, v26 :: v_dual_mul_f32 v6, v6, v40
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v27, 0, v51, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v119, v62
	v_sub_f32_e32 v119, v9, v26
	v_dual_sub_f32 v28, v28, v26 :: v_dual_mul_f32 v7, v7, v40
	v_dual_sub_f32 v131, v21, v26 :: v_dual_mul_f32 v8, v8, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v9, v51
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v13, s30
	v_cndmask_b32_e64 v11, 0, v11, s36
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v130, v20, v26 :: v_dual_mul_f32 v1, v1, v40
	v_dual_sub_f32 v132, v22, v26 :: v_dual_mul_f32 v3, v3, v40
	v_dual_sub_f32 v134, v24, v26 :: v_dual_mul_f32 v5, v5, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v9, s33
	v_mad_u64_u32 v[9:10], null, s80, s45, v[42:43]
.Ltmp20:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v115, v17, v18
.Ltmp21:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v109, v116, v62
	v_sub_f32_e32 v116, v117, v62
	v_sub_f32_e32 v117, v122, v62
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v13, v9, s76, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v14, v116
	v_exp_f32_e32 v15, v117
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v14, s31
	v_cndmask_b32_e64 v108, 0, v15, s25
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v14, v9, s77, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v51, v51, v52 :: v_dual_sub_f32 v122, v12, v26
.Ltmp23:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v109
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v16, s27
.Ltmp24:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v52, v108, v109 :: v_dual_sub_f32 v109, v113, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v12, s29
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v52
.Ltmp27:
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v12, 0x800, v56
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v111, v26
	v_sub_f32_e32 v111, v114, v26
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v116, v11, v10
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v114, v120
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s2, s73, v12
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v12, 1, v9
	v_add_lshl_u32 v9, v9, s78, 1
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v108, v115, v116
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v116, v122
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s2, s0, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v122, v129
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v108, v51
.Ltmp33:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v108, v112, v26
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v118, v124
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v17, 0x80000000, v14, s2
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v112, v51
.Ltmp35:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v21, 0x80000000, v9, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v129, v28
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v116, s41
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s73, s73, 64
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v112, v112 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s73, s74
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v118, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v112
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v120, v126
	v_exp_f32_e32 v112, v127
	v_exp_f32_e32 v126, v132
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v124, v51
.Ltmp41:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v119
	v_exp_f32_e32 v119, v125
	v_exp_f32_e32 v125, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v124, v124 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v112, 0, v112, s26
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v28, v51, v124
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
.Ltmp45:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v113, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v124.h, v110.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v123
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v119, s35
.Ltmp46:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v51, v28
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v124.l, v113.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v133, v23, v26
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[9:12], v12, s[68:71], 0 offen
	buffer_load_b128 v[13:16], v13, s[68:71], 0 offen
	buffer_load_b128 v[17:20], v17, s[68:71], 0 offen
	buffer_load_b128 v[21:24], v21, s[68:71], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v123, v130
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v116, 1, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v127, v133
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v28, v28, v51
.Ltmp51:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v121
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v114, s43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v114.h, v110.l
	v_add3_u32 v116, v113, v116, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v121, v128
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v28, v70, v27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v114.l, v51.h
	v_cmp_o_f32_e64 s2, v51, v51
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v128, v134
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v115, s40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v114, 1, v114
	v_mov_b32_e32 v70, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v124.l, v115.h
	v_add3_u32 v114, v51, v114, 0x7fff
	v_mov_b16_e32 v51.l, v40.h
	v_mov_b16_e32 v51.h, v110.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v30, v30, v26
	v_sub_f32_e32 v32, v32, v26
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v114.h, 0x7fff, v114.h, s2
	v_cmp_o_f32_e64 s2, v113, v113
	v_and_b32_e32 v51, 1, v51
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v117, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v117, 1, v124
	v_mov_b16_e32 v124.l, v118.h
	v_cndmask_b16 v114.l, 0x7fff, v116.h, s2
	v_add3_u32 v51, v40, v51, 0x7fff
	v_mov_b16_e32 v40.l, v113.h
	v_mov_b16_e32 v40.h, v110.l
	v_add3_u32 v116, v115, v117, 0x7fff
	v_and_b32_e32 v117, 1, v124
	v_cmp_o_f32_e64 s2, v115, v115
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v120, s37
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v29, v29, v26 :: v_dual_and_b32 v40, 1, v40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s25
	v_add3_u32 v117, v118, v117, 0x7fff
	v_cmp_o_f32_e64 s25, v118, v118
	v_mov_b16_e32 v118.l, v115.h
	v_mov_b16_e32 v118.h, v110.l
	v_add3_u32 v40, v113, v40, 0x7fff
	v_mov_b16_e32 v120.l, v119.h
	v_mov_b16_e32 v120.h, v110.l
	v_cmp_o_f32_e64 s27, v113, v113
	v_and_b32_e32 v113, 1, v118
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v26
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v51.l, 0x7fff, v116.h, s2
	v_cndmask_b16 v116.h, 0x7fff, v117.h, s25
	v_and_b32_e32 v117, 1, v120
	v_cndmask_b16 v116.l, 0x7fff, v40.h, s27
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v121, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v113, v115, v113, 0x7fff
	v_cmp_o_f32_e64 s2, v115, v115
	v_add3_u32 v115, v119, v117, 0x7fff
	v_mov_b16_e32 v117.h, v110.l
	v_mov_b16_e32 v117.l, v40.h
	v_mov_b16_e32 v118.l, v112.h
	v_cndmask_b16 v113.h, 0x7fff, v113.h, s2
	v_cmp_o_f32_e64 s2, v119, v119
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v123, s24
	v_cndmask_b32_e64 v120, 0, v122, s23
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v36, v36, v26 :: v_dual_and_b32 v117, 1, v117
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v113.l, 0x7fff, v115.h, s2
	v_and_b32_e32 v115, 1, v118
	v_mov_b16_e32 v118.l, v119.h
	v_mov_b16_e32 v121.l, v120.h
	v_mov_b16_e32 v121.h, v110.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v31, v31, v26
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v117, v40, v117, 0x7fff
	v_cmp_o_f32_e64 s2, v40, v40
	v_add3_u32 v40, v112, v115, 0x7fff
	v_cmp_o_f32_e64 s23, v112, v112
	v_and_b32_e32 v112, 1, v121
	v_and_b32_e32 v115, 1, v118
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v126, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v117.h, 0x7fff, v117.h, s2
	v_cndmask_b16 v117.l, 0x7fff, v40.h, s23
	v_add3_u32 v40, v120, v112, 0x7fff
	v_add3_u32 v112, v119, v115, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v125, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v121.l, v118.h
	v_cmp_o_f32_e64 s2, v119, v119
	v_cmp_o_f32_e64 s21, v120, v120
	v_mov_b16_e32 v119.h, v110.l
	v_mov_b16_e32 v119.l, v115.h
	v_and_b32_e32 v120, 1, v121
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v38, v26
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v112.h, 0x7fff, v112.h, s2
	v_cndmask_b16 v112.l, 0x7fff, v40.h, s21
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v128, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v119, 1, v119
	v_add3_u32 v120, v118, v120, 0x7fff
	v_cmp_o_f32_e64 s2, v118, v118
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v127, s19
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v30, v30
	v_exp_f32_e32 v31, v31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v121.l, v40.h
	v_add3_u32 v119, v115, v119, 0x7fff
	v_cndmask_b16 v120.h, 0x7fff, v120.h, s2
	v_mov_b16_e32 v122.l, v118.h
	v_mov_b16_e32 v122.h, v110.l
	v_cmp_o_f32_e64 s2, v115, v115
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v129, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v121, 1, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v122, 1, v122
	v_mov_b16_e32 v123.h, v110.l
	v_mov_b16_e32 v123.l, v115.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v33, v26
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v32, v32
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v121, v40, v121, 0x7fff
	v_cmp_o_f32_e64 s17, v40, v40
	v_mov_b16_e32 v40.l, v29.h
	v_mov_b16_e32 v40.h, v110.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v26
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v120.l, 0x7fff, v119.h, s2
	v_add3_u32 v119, v118, v122, 0x7fff
	v_and_b32_e32 v122, 1, v123
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v30, s16
	v_cndmask_b32_e64 v31, 0, v31, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v40, 1, v40
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v118, v118
	v_add3_u32 v118, v115, v122, 0x7fff
	v_mov_b16_e32 v122.l, v30.h
	v_mov_b16_e32 v122.h, v110.l
	v_mov_b16_e32 v123.l, v31.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v40, v29, v40, 0x7fff
	v_cmp_o_f32_e64 s15, v29, v29
	v_cmp_o_f32_e64 s16, v115, v115
	v_and_b32_e32 v29, 1, v122
	v_and_b32_e32 v115, 1, v123
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s14
	v_cndmask_b32_e64 v32, 0, v32, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v121.l, 0x7fff, v119.h, s2
	v_add3_u32 v29, v30, v29, 0x7fff
	v_add3_u32 v115, v31, v115, 0x7fff
	v_cmp_o_f32_e64 s2, v31, v31
	v_cmp_o_f32_e64 s13, v30, v30
	v_mov_b16_e32 v30.l, v33.h
	v_mov_b16_e32 v30.h, v110.l
	v_mov_b16_e32 v31.l, v32.h
	v_mov_b16_e32 v31.h, v110.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s12
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v37, v37, v26
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v115.l, 0x7fff, v29.h, s13
	v_and_b32_e32 v29, 1, v30
	v_and_b32_e32 v30, 1, v31
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v34, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v35.h
	v_mov_b16_e32 v34.h, v110.l
	v_cndmask_b16 v115.h, 0x7fff, v115.h, s2
	v_add3_u32 v29, v33, v29, 0x7fff
	v_cmp_o_f32_e64 s2, v33, v33
	v_add3_u32 v30, v32, v30, 0x7fff
	v_and_b32_e32 v34, 1, v34
	v_cmp_o_f32_e64 s11, v32, v32
	v_mov_b16_e32 v33.l, v31.h
	v_cndmask_b16 v140.h, 0x7fff, v29.h, s2
	v_cmp_o_f32_e64 s2, v35, v35
	v_add3_u32 v32, v35, v34, 0x7fff
	v_cndmask_b16 v140.l, 0x7fff, v30.h, s11
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v36, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.h, v110.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v141.h, 0x7fff, v32.h, s2
	v_mov_b16_e32 v32.h, v110.l
	v_mov_b16_e32 v32.l, v30.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v26
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v29, 1, v33
	v_cmp_o_f32_e64 s10, v31, v31
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v32, 1, v32
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v29, v31, v29, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v37, s9
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.h, v110.l
	v_add3_u32 v32, v30, v32, 0x7fff
	v_cndmask_b16 v141.l, 0x7fff, v29.h, s10
	v_mov_b16_e32 v33.l, v31.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v38, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v31, v31
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v39, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v30, v30
	v_and_b32_e32 v33, 1, v33
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v108, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.l, v34.h
	v_mov_b16_e32 v35.l, v29.h
	v_cmp_o_f32_e64 s8, v29, v29
	v_add3_u32 v33, v31, v33, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v32.h, s7
	v_mov_b16_e32 v32.h, v110.l
	v_and_b32_e32 v35, 1, v35
	v_mov_b16_e32 v36.h, v110.l
	v_cndmask_b16 v37.h, 0x7fff, v33.h, s2
	v_mov_b16_e32 v39.h, v110.l
	v_cndmask_b16 v121.h, 0x7fff, v121.h, s17
	v_add3_u32 v31, v29, v35, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v52, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v30, 1, v36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v109
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.h, v110.l
	v_cndmask_b16 v38.h, 0x7fff, v31.h, s8
	v_mov_b16_e32 v32.l, v29.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v108, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v30, v34, v30, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v118.h, s16
	v_and_b32_e32 v32, 1, v32
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v111, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.l, v31.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v109, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v31, v31
	v_add3_u32 v32, v29, v32, 0x7fff
	v_cmp_o_f32_e64 s1, v34, v34
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v52.l, v35.h
	v_permlanex16_b32 v108, v117, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v109, v112, s79, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v111, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v29, v29
	v_add3_u32 v36, v31, v36, 0x7fff
	v_and_b32_e32 v34, 1, v52
	v_permlanex16_b32 v110, v120, s79, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v39.l, v33.h
	v_cmp_o_f32_e64 s5, v33, v33
	v_permlanex16_b32 v111, v121, s79, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v29, v35, v34, 0x7fff
	v_permlanex16_b32 v34, v116, s79, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v39, 1, v39
	v_permlanex16_b32 v118, v40, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v119, v115, s79, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s6, v35, v35
	v_cndmask_b16 v38.l, 0x7fff, v30.h, s1
	v_add3_u32 v31, v33, v39, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v32.h, s4
	v_permlanex16_b32 v32, v51, s79, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v34, v116, v104
	v_perm_b32 v34, v34, v116, v106
	v_cndmask_b16 v52.h, 0x7fff, v31.h, s5
	v_cndmask_b16 v39.h, 0x7fff, v36.h, s2
	v_perm_b32 v31, v32, v51, v104
	v_perm_b32 v32, v32, v51, v106
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v51, 0, v60
	s_waitcnt vmcnt(3)
	ds_store_b128 v51, v[9:12]
	s_waitcnt vmcnt(2)
	ds_store_b128 v51, v[13:16] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v51, v[17:20] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v51, v[21:24] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v68
	ds_load_u16_d16 v10, v68 offset:256
	ds_load_u16_d16 v11, v68 offset:512
	ds_load_u16_d16 v12, v68 offset:768
	ds_load_u16_d16 v13, v68 offset:1024
	ds_load_u16_d16 v14, v68 offset:1280
	ds_load_u16_d16 v15, v68 offset:1536
	ds_load_u16_d16 v16, v68 offset:1792
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v17, v108, v117, v104
	v_perm_b32 v18, v108, v117, v106
	v_perm_b32 v19, v109, v112, v104
	v_perm_b32 v20, v109, v112, v106
	v_perm_b32 v21, v110, v120, v104
	v_perm_b32 v22, v110, v120, v106
	v_perm_b32 v23, v111, v121, v104
	v_perm_b32 v24, v111, v121, v106
	v_perm_b32 v108, v118, v40, v104
	v_perm_b32 v109, v118, v40, v106
	v_perm_b32 v110, v119, v115, v104
	v_perm_b32 v111, v119, v115, v106
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v9, v68 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v10, v68 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v11, v68 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v12, v68 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v13, v68 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v14, v68 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v15, v68 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v16, v68 offset:1920
	ds_load_u16_d16 v116, v68 offset:2048
	ds_load_u16_d16 v117, v68 offset:2304
	ds_load_u16_d16 v118, v68 offset:2560
	ds_load_u16_d16 v119, v68 offset:2816
	ds_load_u16_d16 v120, v68 offset:3072
	ds_load_u16_d16 v121, v68 offset:3328
	ds_load_u16_d16 v122, v68 offset:3584
	ds_load_u16_d16 v123, v68 offset:3840
	ds_load_u16_d16 v124, v68 offset:4096
	ds_load_u16_d16 v125, v68 offset:4352
	ds_load_u16_d16 v126, v68 offset:4608
	ds_load_u16_d16 v127, v68 offset:4864
	ds_load_u16_d16 v128, v68 offset:5120
	ds_load_u16_d16 v129, v68 offset:5376
	ds_load_u16_d16 v130, v68 offset:5632
	ds_load_u16_d16 v131, v68 offset:5888
	ds_load_u16_d16 v132, v68 offset:6144
	ds_load_u16_d16 v133, v68 offset:6400
	ds_load_u16_d16 v134, v68 offset:6656
	ds_load_u16_d16 v135, v68 offset:6912
	ds_load_u16_d16 v136, v68 offset:7168
	ds_load_u16_d16 v137, v68 offset:7424
	ds_load_u16_d16 v138, v68 offset:7680
	ds_load_u16_d16 v139, v68 offset:7936
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v30, v114, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v113, s79, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v52.l, 0x7fff, v29.h, s6
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v116, v68 offset:2176
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v117, v68 offset:2432
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v118, v68 offset:2688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v119, v68 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v120, v68 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v121, v68 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v122, v68 offset:3712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v123, v68 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v124, v68 offset:4224
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v125, v68 offset:4480
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v126, v68 offset:4736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v127, v68 offset:4992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v128, v68 offset:5248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v129, v68 offset:5504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v130, v68 offset:5760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v131, v68 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v132, v68 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v133, v68 offset:6528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v134, v68 offset:6784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v135, v68 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v136, v68 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v137, v68 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v138, v68 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v139, v68 offset:8064
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v29, v30, v114, v104
	v_perm_b32 v30, v30, v114, v106
	v_perm_b32 v35, v36, v113, v104
	v_perm_b32 v36, v36, v113, v106
	v_permlanex16_b32 v142, v140, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v143, v141, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v144, v37, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v145, v38, s79, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[29:36], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v146, v39, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v147, v52, s79, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v112, v142, v140, v104
	v_perm_b32 v113, v142, v140, v106
	v_perm_b32 v114, v143, v141, v104
	v_perm_b32 v115, v143, v141, v106
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[116:123], v[17:24], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v9, v144, v37, v104
	v_perm_b32 v10, v144, v37, v106
	v_perm_b32 v11, v145, v38, v104
	v_perm_b32 v12, v145, v38, v106
	v_perm_b32 v13, v146, v39, v104
	v_perm_b32 v14, v146, v39, v106
	v_perm_b32 v15, v147, v52, v104
	v_perm_b32 v16, v147, v52, v106
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[124:131], v[108:115], v[1:8]
	v_dual_mov_b32 v108, v26 :: v_dual_mov_b32 v109, v25
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[132:139], v[9:16], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_9
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s80, s73, s75
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v11, 0x800, v59
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v9, s80, v59
	v_or_b32_e32 v15, 2, v66
	v_or_b32_e32 v16, 4, v66
	v_or_b32_e32 v17, 6, v66
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s1, s73, v11
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[9:10], null, v9, s72, v[41:42]
	v_or_b32_e32 v18, 8, v66
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v14, s73, v66, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s1, vcc_lo, s1
	v_or_b32_e32 v19, 10, v66
	v_or_b32_e32 v20, 12, v66
	v_or_b32_e32 v21, 14, v66
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	v_or_b32_e32 v22, 16, v66
	v_or_b32_e32 v23, 18, v66
	v_or_b32_e32 v24, 20, v66
	v_or_b32_e32 v25, 22, v66
	buffer_load_b128 v[9:12], v9, s[60:63], 0 offen
	v_or_b32_e32 v26, 24, v66
	v_or_b32_e32 v27, 26, v66
	v_or_b32_e32 v28, 28, v66
	v_or_b32_e32 v29, 30, v66
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_lt_i32_e64 s1, s73, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v15, v15, s73, 1
	v_add_lshl_u32 v16, v16, s73, 1
	v_add_lshl_u32 v17, v17, s73, 1
	v_add_lshl_u32 v111, v85, s73, 1
	v_add_lshl_u32 v18, v18, s73, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v13, 0, v65
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v30, v71, s73, 1
	v_add_lshl_u32 v31, v72, s73, 1
	v_add_lshl_u32 v32, v73, s73, 1
	v_add_lshl_u32 v33, v74, s73, 1
	v_add_lshl_u32 v34, v75, s73, 1
	v_add_lshl_u32 v35, v76, s73, 1
	v_add_lshl_u32 v36, v77, s73, 1
	v_add_lshl_u32 v37, v78, s73, 1
	v_add_lshl_u32 v38, v79, s73, 1
	v_add_lshl_u32 v39, v80, s73, 1
	v_add_lshl_u32 v40, v81, s73, 1
	v_add_lshl_u32 v51, v82, s73, 1
	v_add_lshl_u32 v52, v83, s73, 1
	v_add_lshl_u32 v110, v84, s73, 1
	v_add_lshl_u32 v112, v86, s73, 1
	v_add_lshl_u32 v19, v19, s73, 1
	v_add_lshl_u32 v20, v20, s73, 1
	v_add_lshl_u32 v21, v21, s73, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v22, v22, s73, 1
	v_add_lshl_u32 v23, v23, s73, 1
	v_add_lshl_u32 v24, v24, s73, 1
	v_add_lshl_u32 v25, v25, s73, 1
	v_add_lshl_u32 v26, v26, s73, 1
	v_add_lshl_u32 v27, v27, s73, 1
	v_add_lshl_u32 v28, v28, s73, 1
	v_add_lshl_u32 v29, v29, s73, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	v_cndmask_b32_e64 v111, 0x80000000, v111, s1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	v_cndmask_b32_e64 v30, 0x80000000, v30, s1
	v_cndmask_b32_e64 v31, 0x80000000, v31, s1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	v_cndmask_b32_e64 v40, 0x80000000, v40, s1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s1
	v_cndmask_b32_e64 v110, 0x80000000, v110, s1
	v_cndmask_b32_e64 v143, 0x80000000, v112, s1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	v_cndmask_b32_e64 v28, 0x80000000, v28, s1
	v_cndmask_b32_e64 v29, 0x80000000, v29, s1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s1, s73, v63
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v13, v[9:10]
	ds_store_b64 v92, v[11:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v142, v14, s[64:67], 0 offen
	buffer_load_u16 v141, v15, s[64:67], 0 offen
	buffer_load_u16 v140, v16, s[64:67], 0 offen
	buffer_load_u16 v139, v17, s[64:67], 0 offen
	buffer_load_u16 v138, v18, s[64:67], 0 offen
	buffer_load_u16 v137, v19, s[64:67], 0 offen
	buffer_load_u16 v136, v20, s[64:67], 0 offen
	buffer_load_u16 v135, v21, s[64:67], 0 offen
	buffer_load_u16 v134, v22, s[64:67], 0 offen
	buffer_load_u16 v133, v23, s[64:67], 0 offen
	buffer_load_u16 v132, v24, s[64:67], 0 offen
	buffer_load_u16 v131, v25, s[64:67], 0 offen
	buffer_load_u16 v130, v26, s[64:67], 0 offen
	buffer_load_u16 v129, v27, s[64:67], 0 offen
	buffer_load_u16 v128, v28, s[64:67], 0 offen
	buffer_load_u16 v127, v29, s[64:67], 0 offen
	buffer_load_u16 v126, v30, s[64:67], 0 offen
	buffer_load_u16 v125, v31, s[64:67], 0 offen
	buffer_load_u16 v124, v32, s[64:67], 0 offen
	buffer_load_u16 v123, v33, s[64:67], 0 offen
	buffer_load_u16 v122, v34, s[64:67], 0 offen
	buffer_load_u16 v121, v35, s[64:67], 0 offen
	buffer_load_u16 v120, v36, s[64:67], 0 offen
	buffer_load_u16 v119, v37, s[64:67], 0 offen
	buffer_load_u16 v118, v38, s[64:67], 0 offen
	buffer_load_u16 v117, v39, s[64:67], 0 offen
	buffer_load_u16 v116, v40, s[64:67], 0 offen
	buffer_load_u16 v115, v51, s[64:67], 0 offen
	buffer_load_u16 v114, v52, s[64:67], 0 offen
	buffer_load_u16 v113, v110, s[64:67], 0 offen
	buffer_load_u16 v112, v111, s[64:67], 0 offen
	buffer_load_u16 v111, v143, s[64:67], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v69 offset1:1
	ds_load_2addr_stride64_b64 v[151:154], v69 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[155:158], v89 offset1:1
	ds_load_2addr_stride64_b64 v[159:162], v89 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[163:166], v90 offset1:1
	ds_load_2addr_stride64_b64 v[167:170], v90 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[171:174], v91 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v150, s55 :: v_dual_mov_b32 v149, s54
	v_dual_mov_b32 v148, s53 :: v_dual_mov_b32 v147, s52
	v_dual_mov_b32 v146, s51 :: v_dual_mov_b32 v145, s50
	v_dual_mov_b32 v144, s49 :: v_dual_mov_b32 v143, s48
	v_mov_b32_e32 v52, 0
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[175:178], v91 offset0:2 offset1:3
	v_mov_b32_e32 v51, 0
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s10, s44, s1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[43:44], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[11:12], v[43:44], v[143:150] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[151:152], v[43:44], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[43:44], v[143:150] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[155:156], v[45:46], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[157:158], v[45:46], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[159:160], v[45:46], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[161:162], v[45:46], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[163:164], v[47:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[165:166], v[47:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[167:168], v[47:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[47:48], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[171:172], v[49:50], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[173:174], v[49:50], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[49:50], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[49:50], v[9:16] neg_lo:[1,1,0]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s2, s10
	s_cbranch_execz .LBB0_5
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v51, s73, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v52, 31, v51
	v_add_co_u32 v51, s1, s46, v51
	v_add_co_ci_u32_e64 v52, null, s47, v52, s1
	global_load_b64 v[51:52], v[51:52], off
	s_branch .LBB0_5
.LBB0_8:
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v25, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v28, v8
	s_branch .LBB0_10
.LBB0_9:                                ; %Flow
	v_mov_b32_e32 v10, v58
.LBB0_10:                               ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v56
	s_mov_b32 s1, 0x76543210
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp53:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s59, s59, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v25 :: v_dual_cndmask_b32 v12, 0, v28
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v57
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s45, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v11, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_nc_u32 v10, 0, v10
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp57:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s58, s59
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp59:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_max_f32 v9, v9, v11
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v2 :: v_dual_and_b32 v11, 12, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v11, 0, v11
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v13, v12
.Ltmp65:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_add_f32 v2, v2, v16
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_mov_b32 v15, v1
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_max_f32 v9, v9, v14
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v10, v9
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v15
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v10, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp75:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v11, 0, v4 :: v_dual_mov_b32 v4, v2
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v14, v1
	v_dual_cndmask_b32 v12, 0, v5 :: v_dual_cndmask_b32 v13, 0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v15, 0, v8, vcc_lo
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v14 :: v_dual_cndmask_b32 v14, 0, v7
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v18, v13 :: v_dual_add_f32 v3, v3, v17
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v3, v5
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v4 :: v_dual_add_f32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v7, v9 :: v_dual_add_f32 v4, v4, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v3, v10
	v_dual_mov_b32 v6, v4 :: v_dual_max_f32 v9, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v8, v8, v9 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v7, v10, v3 :: v_dual_mov_b32 v20, v15
.Ltmp91:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_mov_b32 v10, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v16, v11
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v2, v5
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v20
	v_add_f32_e32 v13, v13, v18
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v9, v7
.Ltmp98:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v15 :: v_dual_mov_b32 v19, v14
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v2, v1
.Ltmp101:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v16, v15, v20 :: v_dual_mov_b32 v17, v12
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v15, v11
	v_add_f32_e32 v13, v13, v18
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v14
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v14, v19
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v14, v11
	v_mov_b32_e32 v19, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_12
; %bb.11:
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp121:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp123:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp125:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_12:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp126:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp127:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v53
	v_and_b32_e32 v4, 0xe0, v54
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_lshlrev_b32 v2, 5, v55
.Ltmp129:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp131:
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s45, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[56:59], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp132:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 179
		.amdhsa_next_free_sgpr 81
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 179
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10256
; TotalNumSgprs: 83
; NumVgprs: 179
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 179
; Occupancy: 8
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
	.byte	5                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     179
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
