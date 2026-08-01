	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s47, s[0:1], 0x64
	s_load_b64 s[16:17], s[0:1], 0x7c
	s_load_b32 s58, s[0:1], 0x5c
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v48, 3, v0
	s_load_b32 s19, s[0:1], 0x84
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v45, 2, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s8, s47
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
	v_lshlrev_b32_e32 v3, 2, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s4, s5
	s_add_i32 s9, s4, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s2, s47
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
	v_cmp_gt_i32_e32 vcc_lo, s58, v3
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s10, s6, s10
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s10, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s10, s10, s47
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s18, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s18, v48
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v4, s12, v48
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s46, s2, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s44, 1, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[4:5], null, v4, s58, v[3:4]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s44
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	buffer_load_b32 v4, v3, s[4:7], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s5, s47, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s6, s5, s47
	s_abs_i32 s5, s5
	s_ashr_i32 s6, s6, 31
	s_mul_hi_u32 s7, s5, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v5, 2, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s9, s7, s8
	s_add_i32 s11, s7, 1
	s_sub_i32 s5, s5, s9
	v_lshrrev_b32_e32 v50, 3, v3
	s_sub_i32 s2, s5, s8
	s_cmp_ge_u32 s5, s8
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v5, v45, v5, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s2, s2, s5
	s_add_i32 s5, s7, 1
	s_cmp_ge_u32 s2, s8
	s_mov_b32 s4, 0
	s_cselect_b32 s2, s5, s7
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s17, s19
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, s18
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, 16
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s5, s19, s16
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s6, s7, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s5, s5, s18
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s6, s6, 63
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s7, s46, s2
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s8, s6, 31
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s5, s5, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s8, s8, 26
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s7, s7, 6
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s6, s6, s8
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s5, s5, 0x7fffffc0
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s7, s2
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s6, s6, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s59, s7, s5
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s76, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s59, s76
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v5, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v9, 3, v3
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr9
.LBB0_3:                                ; %Flow145
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b32 s45, s[0:1], 0x60
	v_and_b32_e32 v49, 15, v0
	v_lshlrev_b32_e32 v46, 1, v0
	v_and_b32_e32 v47, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v4, s18, v49
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v5, s12, v49, 1
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x68
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v4
	v_dual_mov_b32 v24, 0x7632 :: v_dual_lshlrev_b32 v33, 3, v1
	v_dual_mov_b32 v117, 0xff800000 :: v_dual_and_b32 v10, 16, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_dual_cndmask_b32 v4, 0x80000000, v5 :: v_dual_add_nc_u32 v3, 0, v3
	v_cmp_eq_u32_e32 vcc_lo, 0, v47
	v_lshlrev_b32_e32 v16, 3, v0
	v_bfe_i32 v18, v0, 2, 1
	v_dual_mov_b32 v19, 0xff800000 :: v_dual_lshlrev_b32 v34, 4, v47
	v_cndmask_b32_e64 v15, 0x420, 0, vcc_lo
	v_dual_mov_b32 v23, 0x5410 :: v_dual_add_nc_u32 v2, s19, v2
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s9, 0xffff
	s_mov_b32 s60, s8
	v_mov_b32_e32 v1, 0
	buffer_load_u16 v9, v4, s[60:63], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v4, 24, v46
	v_lshlrev_b32_e32 v13, 5, v0
	v_and_b32_e32 v6, 24, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v5, 4, v0
	v_dual_mov_b32 v118, 0xff800000 :: v_dual_lshlrev_b32 v51, 4, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v25, v49, 5, v4
	v_and_b32_e32 v7, 0x70, v0
	v_lshlrev_b32_e32 v8, 3, v49
	v_dual_mov_b32 v4, v1 :: v_dual_and_b32 v11, 14, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v30, 8, v25
	v_lshlrev_b32_e32 v12, 6, v47
	v_bfe_i32 v20, v0, 3, 1
	v_bfe_i32 v21, v0, 5, 1
	v_and_b32_e32 v18, 0x840, v18
	v_and_or_b32 v15, v16, 16, v15
	v_cmp_eq_u32_e64 s1, 0, v10
	v_lshl_add_u32 v58, v49, 1, v3
	v_mov_b32_e32 v3, v1
	v_xor_b32_e32 v31, 16, v25
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[35:36], null, s45, v48, v[33:34]
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v59, 0, v25
	v_xor_b32_e32 v25, 24, v25
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s77, s3, 11
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v84, 0, v30
	v_and_b32_e32 v17, 4, v0
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v53, s16, v2
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v54, s17, v2
	v_xor_b32_e32 v55, v51, v6
	v_and_or_b32 v56, v5, 1, s77
	v_lshlrev_b32_e32 v28, 2, v11
	v_lshlrev_b32_e32 v29, 3, v10
	v_and_b32_e32 v16, 0x420, v20
	v_and_b32_e32 v21, 0x840, v21
	v_cndmask_b32_e64 v23, 0x1054, v23, s1
	v_mov_b32_e32 v2, v1
	v_lshrrev_b32_e32 v26, 1, v7
	v_mov_b32_e32 v5, v1
	v_lshl_or_b32 v27, v7, 4, v8
	v_mov_b32_e32 v7, v1
	v_lshl_or_b32 v11, v11, 7, v12
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v85, 0, v31
	v_add_nc_u32_e32 v86, 0, v25
	v_xor_b32_e32 v52, v45, v50
	v_and_b32_e32 v22, 0x80, v46
	v_mov_b32_e32 v8, v1
	v_lshl_add_u32 v17, v17, 7, 0
	v_mov_b32_e32 v20, v1
	v_or3_b32 v73, v11, v29, v28
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_xor_b32_e32 v12, 0x210, v52
	s_lshr_b32 s0, s0, 29
	v_xor_b32_e32 v32, 8, v55
	s_add_i32 s2, s3, s0
	v_xor_b32_e32 v26, v27, v26
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s2, -8
	v_add_nc_u32_e32 v75, 0, v12
	v_xor_b32_e32 v12, 8, v73
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s2, s2, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s2, s13, s2
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s8, s14, s8
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s45, v33
	v_or_b32_e32 v60, 22, v56
	v_or_b32_e32 v61, 24, v56
	v_or_b32_e32 v62, 26, v56
	v_or_b32_e32 v63, 28, v56
	v_or_b32_e32 v64, 30, v56
	v_or_b32_e32 v65, 32, v56
	v_or_b32_e32 v66, 34, v56
	v_or_b32_e32 v67, 36, v56
	v_or_b32_e32 v68, 38, v56
	v_or_b32_e32 v69, 40, v56
	v_or_b32_e32 v70, 42, v56
	v_or_b32_e32 v71, 44, v56
	v_or_b32_e32 v72, 46, v56
	v_or_b32_e32 v76, 48, v56
	v_or_b32_e32 v77, 50, v56
	v_or_b32_e32 v78, 52, v56
	v_or_b32_e32 v79, 54, v56
	v_or_b32_e32 v80, 56, v56
	v_or_b32_e32 v81, 58, v56
	v_or_b32_e32 v82, 60, v56
	v_or_b32_e32 v83, 62, v56
	v_add_nc_u32_e32 v87, 0, v32
	v_add_nc_u32_e32 v88, 0, v26
	v_add_nc_u32_e32 v97, 0, v12
	.loc	1 774 26                        ; attention.py:774:26
	s_mov_b32 s48, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s18, s18, s15
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s82, s8, s2
	s_lshl_b32 s78, s45, 4
	s_lshl_b32 s79, s45, 5
	s_mul_i32 s80, s45, 48
	s_mov_b32 s81, 0x76543210
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s74, s62
	s_mov_b32 s75, s63
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s73, s7, 0xffff
	s_mov_b32 s68, s10
	s_mov_b32 s72, s6
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s69, s11
	s_add_i32 s82, s82, s18
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e32 vcc_lo, s58, v34
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	v_and_b32_e32 v14, 28, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_or_b32 v57, 0x3e0, v13, v14
	v_lshlrev_b32_e32 v14, 4, v6
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v13, 0x60, v13
	v_xor_b32_e32 v36, 20, v57
	v_xor_b32_e32 v37, 24, v57
	v_xor_b32_e32 v38, 28, v57
	v_or3_b32 v74, v15, v18, v14
	v_cndmask_b32_e64 v14, 0x3276, v24, s1
	v_add_nc_u32_e32 v93, 0, v36
	v_add_nc_u32_e32 v94, 0, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[36:37], null, s15, v48, v[33:34]
	v_add_nc_u32_e32 v95, 0, v38
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[37:38], v59
	ds_load_b64 v[39:40], v84
	ds_load_b64 v[41:42], v85
	ds_load_b64 v[43:44], v86
	v_xor_b32_e32 v11, 4, v57
	v_xor3_b32 v13, v16, v13, v21
	v_lshl_or_b32 v15, v23, 8, v23
	v_lshl_or_b32 v14, v14, 8, v14
	v_xor_b32_e32 v27, 8, v57
	v_add_nc_u32_e32 v89, 0, v11
	v_add3_u32 v13, v17, v22, v13
	v_and_b32_e32 v15, 0x540054, v15
	v_and_b32_e32 v11, 0x760076, v14
	v_xor_b32_e32 v28, 12, v57
	v_xor_b32_e32 v29, 16, v57
	v_xor_b32_e32 v16, 16, v73
	v_xor_b32_e32 v18, 24, v73
	v_xor_b32_e32 v21, 32, v73
	v_xor_b32_e32 v23, 40, v73
	v_xor_b32_e32 v17, 48, v73
	v_xor_b32_e32 v22, 56, v73
	v_xor_b32_e32 v24, 32, v74
	v_xor_b32_e32 v25, 64, v74
	v_xor_b32_e32 v30, 0x60, v74
	v_add_nc_u32_e32 v96, v13, v10
	v_lshl_or_b32 v10, v15, 4, v15
	v_lshl_or_b32 v11, v11, 4, v11
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s1, s12, 0x3fb8aa3b
	v_add_nc_u32_e32 v90, 0, v27
	v_add_nc_u32_e32 v91, 0, v28
	v_add_nc_u32_e32 v92, 0, v29
	v_add_nc_u32_e32 v98, 0, v16
	v_add_nc_u32_e32 v99, 0, v18
	v_add_nc_u32_e32 v100, 0, v21
	v_add_nc_u32_e32 v101, 0, v23
	v_add_nc_u32_e32 v102, 0, v17
	v_add_nc_u32_e32 v103, 0, v22
	v_add_nc_u32_e32 v104, 0, v24
	v_add_nc_u32_e32 v105, 0, v25
	v_add_nc_u32_e32 v106, 0, v30
	v_and_b32_e32 v107, 0x5040504, v10
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v108, 1, v36
	v_add_nc_u32_e32 v109, 2, v36
	v_add_nc_u32_e32 v110, 3, v36
	v_add_nc_u32_e32 v111, 4, v36
	v_add_nc_u32_e32 v112, 5, v36
	v_add_nc_u32_e32 v113, 6, v36
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v115, s1, v9 :: v_dual_and_b32 v114, 0x7060706, v11
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v116, 7, v36
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v18, 1, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s18, s59, s77
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v17, 0, v55
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s48 :: v_dual_mov_b32 v12, s51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v18, s18, v18
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v10, s49 :: v_dual_mov_b32 v11, s50
	v_dual_mov_b32 v14, s53 :: v_dual_mov_b32 v13, s52
	v_mov_b32_e32 v16, s55
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[21:22], null, v18, s58, v[34:35]
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v15, s54
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v119, 6, v33
	v_or_b32_e32 v126, 4, v33
	v_or_b32_e32 v144, 1, v33
	v_or_b32_e32 v127, 2, v33
	v_or_b32_e32 v129, 7, v33
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v18, 0x80000000, v21, vcc_lo
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s19, s82, s59
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v128, 5, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v130, s59, v33
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v131, 3, v33
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[21:24], v18, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v130, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s2, v130, v54
	v_or_b32_e32 v148, 2, v56
	v_or_b32_e32 v152, 4, v56
	v_or_b32_e32 v153, 6, v56
	v_or_b32_e32 v154, 8, v56
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s2
	v_or_b32_e32 v174, 10, v56
	s_and_b32 s2, s44, s1
	v_or_b32_e32 v175, 12, v56
	v_or_b32_e32 v176, 14, v56
	v_or_b32_e32 v177, 16, v56
	v_or_b32_e32 v178, 18, v56
	v_or_b32_e32 v179, 20, v56
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_add_lshl_u32 v145, s59, v56, 1
	v_add_lshl_u32 v130, v174, s59, 1
	v_add_lshl_u32 v180, v60, s59, 1
	v_add_lshl_u32 v181, v61, s59, 1
	v_add_lshl_u32 v182, v62, s59, 1
	v_add_lshl_u32 v183, v63, s59, 1
	v_add_lshl_u32 v184, v64, s59, 1
	v_add_lshl_u32 v185, v65, s59, 1
	v_add_lshl_u32 v186, v66, s59, 1
	v_add_lshl_u32 v187, v67, s59, 1
	v_add_lshl_u32 v188, v68, s59, 1
	v_add_lshl_u32 v189, v69, s59, 1
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v17, v[21:22]
	ds_store_b64 v87, v[23:24]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[29:32], v59 offset1:1
	ds_load_2addr_stride64_b64 v[120:123], v59 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[140:143], v84 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[29:30], v[37:38], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[132:139], v[31:32], v[37:38], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[120:121], v[37:38], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[122:123], v[37:38], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v84 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v85 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[140:141], v[39:40], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[132:139], v[142:143], v[39:40], v[132:139] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v140, v179, s59, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[9:10], v[39:40], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[11:12], v[39:40], v[166:173] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v85 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[13:14], v[41:42], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[132:139], v[15:16], v[41:42], v[132:139] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v86 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[9:10], v[41:42], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[11:12], v[41:42], v[166:173] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v86 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[13:14], v[43:44], v[21:28] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v13, s59, v129
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[132:139], v[15:16], v[43:44], v[132:139] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v129, v154, s59, 1
	v_add_lshl_u32 v14, v70, s59, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v149, v23
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v13, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v13, v54
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v13, s19, v109, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v150, v24
	v_cvt_f32_i32_e32 v23, v132
	v_cvt_f32_i32_e32 v16, v133
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s10, s11
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v17, v134
	v_cvt_f32_i32_e32 v18, v135
	v_cvt_f32_i32_e32 v24, v136
	v_cvt_f32_i32_e32 v155, v137
	v_cvt_f32_i32_e32 v156, v138
	v_cvt_f32_i32_e32 v157, v139
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[9:10], v[43:44], v[158:165] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v10, s59, v119
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[166:173], v[11:12], v[43:44], v[166:173] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v11, s59, v126
	v_or_b32_e32 v126, s59, v144
	v_or_b32_e32 v12, s59, v127
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s4, v10, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v10, v54
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v11, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v11, v54
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v126, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s15, v126, v54
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v12, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v12, v54
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v11, s19, v113, 1
	v_add_lshl_u32 v126, s19, v108, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s4, s5
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v10, s19, v111, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s6, s7
	s_and_b32 s7, s14, s15
	s_and_b32 s4, s44, s4
	s_and_b32 s6, s8, s9
	s_and_b32 s14, s44, s7
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s44, s5
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v126, 0x80000000, v126, s14
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s44, s6
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	s_clause 0x3
	buffer_load_u16 v11, v11, s[64:67], 0 offen
	buffer_load_u16 v144, v126, s[64:67], 0 offen
	buffer_load_u16 v10, v10, s[64:67], 0 offen
	buffer_load_u16 v13, v13, s[64:67], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v119, s59, v128
	v_or_b32_e32 v127, s59, v131
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v126, s19, v116, 1
	v_add_lshl_u32 v12, s19, v112, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s44, s1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v119, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s13, v119, v54
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v119, s19, v36, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v127, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s17, v127, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v127, v152, s59, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s12, s13
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v128, v153, s59, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s44, s8
	s_and_b32 s10, s16, s17
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v12, 0x80000000, v12, s9
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s44, s10
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v132, v71, s59, 1
	v_add_lshl_u32 v133, v72, s59, 1
	v_add_lshl_u32 v134, v76, s59, 1
	v_add_lshl_u32 v135, v77, s59, 1
	v_add_lshl_u32 v136, v78, s59, 1
	v_add_lshl_u32 v131, v175, s59, 1
	v_add_lshl_u32 v137, v176, s59, 1
	v_add_lshl_u32 v138, v177, s59, 1
	v_add_lshl_u32 v139, v178, s59, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v9, v21
	v_cvt_f32_i32_e32 v146, v22
	v_cvt_f32_i32_e32 v22, v25
	v_cvt_f32_i32_e32 v147, v26
	v_cvt_f32_i32_e32 v151, v27
	v_cvt_f32_i32_e32 v25, v158
	v_cvt_f32_i32_e32 v158, v159
	v_cvt_f32_i32_e32 v124, v160
	v_cvt_f32_i32_e32 v125, v161
	v_cvt_f32_i32_e32 v26, v162
	v_cvt_f32_i32_e32 v123, v163
	v_cvt_f32_i32_e32 v122, v164
	v_cvt_f32_i32_e32 v121, v165
	v_cvt_f32_i32_e32 v27, v166
	v_cvt_f32_i32_e32 v120, v167
	v_cvt_f32_i32_e32 v32, v168
	v_cvt_f32_i32_e32 v31, v169
	v_cvt_f32_i32_e32 v21, v170
	v_cvt_f32_i32_e32 v30, v171
	v_cvt_f32_i32_e32 v29, v172
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v169, v79, s59, 1
	v_add_lshl_u32 v170, v80, s59, 1
	v_add_lshl_u32 v171, v81, s59, 1
	v_add_lshl_u32 v172, v83, s59, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v15, v28
	v_cvt_f32_i32_e32 v28, v173
	v_mul_f32_e32 v31, v115, v31
	v_mul_f32_e32 v29, v115, v29
	v_mul_f32_e32 v23, v115, v23
	v_mul_f32_e32 v27, v115, v27
	v_mul_f32_e32 v25, v115, v25
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v11.h, 0xff80, v11.l, s4
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v11.l, 0xff80, v10.l, s5
	v_cndmask_b32_e64 v10, 0x80000000, v119, s2
	v_cndmask_b32_e64 v119, 0x80000000, v126, s7
	buffer_load_u16 v10, v10, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v10.h, 0xff80, v13.l, s6
	v_add_lshl_u32 v13, s19, v110, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v13, 0x80000000, v13, s10
	s_clause 0x2
	buffer_load_u16 v119, v119, s[64:67], 0 offen
	buffer_load_u16 v12, v12, s[64:67], 0 offen
	buffer_load_u16 v126, v13, s[64:67], 0 offen
	v_cndmask_b16 v10.l, 0xff80, v10.l, s2
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v13.h, 0xff80, v119.l, s7
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v119, v82, s59, 1
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v12.h, 0xff80, v126.l, s10
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v126, v148, s59, 1
	s_clause 0x1f
	buffer_load_u16 v148, v145, s[68:71], 0 offen
	buffer_load_u16 v168, v126, s[68:71], 0 offen
	buffer_load_u16 v167, v127, s[68:71], 0 offen
	buffer_load_u16 v154, v128, s[68:71], 0 offen
	buffer_load_u16 v153, v130, s[68:71], 0 offen
	buffer_load_u16 v152, v131, s[68:71], 0 offen
	buffer_load_u16 v159, v137, s[68:71], 0 offen
	buffer_load_u16 v160, v139, s[68:71], 0 offen
	buffer_load_u16 v161, v140, s[68:71], 0 offen
	buffer_load_u16 v162, v180, s[68:71], 0 offen
	buffer_load_u16 v163, v182, s[68:71], 0 offen
	buffer_load_u16 v164, v183, s[68:71], 0 offen
	buffer_load_u16 v165, v184, s[68:71], 0 offen
	buffer_load_u16 v166, v186, s[68:71], 0 offen
	buffer_load_u16 v127, v129, s[68:71], 0 offen
	buffer_load_u16 v128, v138, s[68:71], 0 offen
	buffer_load_u16 v129, v181, s[68:71], 0 offen
	buffer_load_u16 v130, v185, s[68:71], 0 offen
	buffer_load_u16 v142, v187, s[68:71], 0 offen
	buffer_load_u16 v143, v188, s[68:71], 0 offen
	buffer_load_u16 v131, v189, s[68:71], 0 offen
	buffer_load_u16 v141, v14, s[68:71], 0 offen
	buffer_load_u16 v140, v132, s[68:71], 0 offen
	buffer_load_u16 v139, v133, s[68:71], 0 offen
	buffer_load_u16 v132, v134, s[68:71], 0 offen
	buffer_load_u16 v138, v135, s[68:71], 0 offen
	buffer_load_u16 v137, v136, s[68:71], 0 offen
	buffer_load_u16 v136, v169, s[68:71], 0 offen
	buffer_load_u16 v126, v170, s[68:71], 0 offen
	buffer_load_u16 v135, v171, s[68:71], 0 offen
	buffer_load_u16 v134, v119, s[68:71], 0 offen
	buffer_load_u16 v133, v172, s[68:71], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v13.l, 0xff80, v12.l, s9
	v_cndmask_b16 v12.l, 0xff80, v144.l, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v119.l, 0
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v14.h, v11.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v88, v[10:11], v[12:13] offset1:16
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v11.l, v119.l
	v_mov_b16_e32 v119.h, v10.l
	v_mov_b16_e32 v14.l, v119.l
	v_mov_b16_e32 v10.l, v119.l
	v_mov_b16_e64 v144.h, v13.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v11
	v_cmp_neq_f32_e64 s8, 0xff800000, v119
	v_cmp_neq_f32_e64 s11, 0xff800000, v14
	v_cmp_neq_f32_e64 s12, 0xff800000, v10
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v119.h, v12.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s1, s4, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v12.l, v119.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v10, 0, 1, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v13.l, v119.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s4, s5, s11
	s_and_b32 s6, s6, s12
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v144.l, v119.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v12
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v11, 0, 1, s4
	v_cndmask_b32_e64 v12, 0, 1, s6
	v_lshlrev_b16 v10.l, 8, v10.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v13
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s2, s8
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v144
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v13, 0, 1, s8
	v_or_b16 v144.h, v11.l, v10.l
	v_mov_b16_e32 v10.l, v12.l
	s_and_b32 s5, s7, s13
	s_and_b32 s7, s9, s15
	v_cndmask_b32_e64 v14, 0, 1, s5
	v_mov_b16_e32 v11.l, v13.l
	v_lshlrev_b16 v10.l, 8, v10.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v119
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, s10, s16
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v171, v115, v9
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v12, 0, 1, s9
	v_or_b16 v144.l, v11.l, v10.l
	v_mov_b16_e32 v10.l, v14.l
	v_cndmask_b32_e64 v11, 0, 1, s7
	s_and_b32 s10, s14, s2
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v10.l, 8, v10.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v32, v115, v32
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v177.h, v119.l
	v_mov_b16_e64 v178.h, v119.l
	v_mov_b16_e64 v180.h, v119.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v145.h, v11.l, v10.l
	v_cndmask_b32_e64 v11, 0, 1, s10
	v_lshlrev_b16 v10.l, 8, v12.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v176.h, v119.l
	v_mov_b16_e64 v179.h, v119.l
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s59, s59, 64
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v145.l, v11.l, v10.l
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v10, 0, v73
	ds_load_b64 v[169:170], v10
	ds_load_b64 v[11:12], v97
	ds_load_b64 v[13:14], v98
	ds_load_b64 v[9:10], v99
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s59, s76
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v119.h, v169.l
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v172, 16, v148
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v148, 0x3fb8aa3b, v119
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v167, 16, v167
	v_lshlrev_b32_e32 v168, 16, v168
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v153, 16, v153
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v148, v171, v172
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v171, v115, v146 :: v_dual_and_b32 v146, 0xffff0000, v169
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v152, 16, v152
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e32 v119.h, v11.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v169, v115, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.h, v119.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v146, 0x3fb8aa3b, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v146, v171, v168
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v168, v115, v149 :: v_dual_lshlrev_b32 v149, 16, v170
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v171.h, v119.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v149, 0x3fb8aa3b, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v149, v168, v167
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v167, 0xffff0000, v170
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v168, v115, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v170.h, v119.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v150, 0x3fb8aa3b, v167 :: v_dual_mul_f32 v167, v115, v156
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v156, 16, v160
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v160, 16, v162
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v162, 0x3fb8aa3b, v119
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v150, v168, v154
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v154, v115, v147
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v147, 0xffff0000, v11
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v168, v115, v157 :: v_dual_and_b32 v11, 0xffff0000, v12
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e32 v119.h, v13.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v147, 0x3fb8aa3b, v147
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v147, v154, v153
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v153, v115, v151
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v151, 16, v12
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v154, 0, v74
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v12, v115, v15
	v_mul_f32_e32 v15, v115, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v16, v115, v17 :: v_dual_mul_f32 v151, 0x3fb8aa3b, v151
	v_mul_f32_e32 v17, v115, v18
	v_mul_f32_e32 v18, v115, v155
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v155, 16, v159
	v_lshlrev_b32_e32 v159, 16, v161
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v151, v153, v152
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v152, 0, v52
	v_add_nc_u32_e32 v153, 0, v57
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v161, 16, v163
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v157, 0x3fb8aa3b, v11
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v11, 0xffff0000, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v157, v12, v155
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v155, 0x3fb8aa3b, v11
	ds_load_b64 v[11:12], v100
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v155, v15, v156
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v15, 16, v14
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(20)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v158, 0x3fb8aa3b, v15 :: v_dual_lshlrev_b32 v163, 16, v164
	.loc	1 838 37                        ; attention.py:838:37
	v_and_b32_e32 v15, 0xffff0000, v14
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v164, 16, v165
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v165, 16, v166
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[13:14], v101
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v158, v16, v159
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v159, 0x3fb8aa3b, v15
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(2)
	v_and_b32_e32 v15, 0xffff0000, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v159, v17, v160 :: v_dual_mul_f32 v156, 0x3fb8aa3b, v15
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v15, 16, v10
	v_and_b32_e32 v10, 0xffff0000, v10
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v156, v18, v161
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[17:18], v102
	v_mul_f32_e32 v161, 0x3fb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v161, v168, v164 :: v_dual_mov_b32 v164, v117
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_dual_max_f32 v117, v118, v118 :: v_dual_mul_f32 v118, v115, v125
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v160, 0x3fb8aa3b, v15
	ds_load_b64 v[15:16], v103
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(3)
	v_and_b32_e32 v10, 0xffff0000, v11
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v160, v167, v163 :: v_dual_mov_b32 v163, v20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v10, 0x3fb8aa3b, v10
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v20, v115, v124
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v124, 16, v142
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v142, 16, v12
	v_and_b32_e32 v12, 0xffff0000, v12
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v10, v169, v165 :: v_dual_add_nc_u32 v165, 0, v51
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt vmcnt(12)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v142, 0x3fb8aa3b, v142 :: v_dual_lshlrev_b32 v125, 16, v143
	v_mul_f32_e32 v12, 0x3fb8aa3b, v12
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_store_b32 v152, v144
	ds_store_b32 v75, v145
	s_waitcnt lgkmcnt(0)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v142, v20, v124
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v20, v115, v123 :: v_dual_and_b32 v123, 0xffff0000, v13
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v12, v118, v125
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v118, 16, v141
	.loc	1 881 25                        ; attention.py:881:25
	s_barrier
	ds_load_b32 v145, v92
	ds_load_b32 v174, v95
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v141, 0x3fb8aa3b, v123
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v123, 16, v14
	v_and_b32_e32 v14, 0xffff0000, v14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v30, v115, v30
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v143, v90
	ds_load_b32 v144, v91
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v141, v20, v118
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v118, v115, v122
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v122, 16, v140
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v140, 0x3fb8aa3b, v123
	v_mul_f32_e32 v14, 0x3fb8aa3b, v14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v124, 0x3fb8aa3b, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v119.h, v9.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v24, v115, v24
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v140, v118, v122
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v118, v115, v121 :: v_dual_lshlrev_b32 v121, 16, v139
	v_mul_f32_e32 v9, 0x3fb8aa3b, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v119.h, v11.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v26, v115, v26 :: v_dual_lshlrev_b32 v123, 16, v131
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v14, v118, v121
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v118, v115, v120 :: v_dual_and_b32 v121, 0xffff0000, v17
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v120, 16, v138
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v11, v93
	ds_load_b32 v173, v94
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v28, v115, v28
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v138, 0x3fb8aa3b, v121
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v121, 0xffff0000, v15
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(2)
	v_and_b32_e32 v131, 1, v144
	v_mad_u64_u32 v[166:167], null, s18, s45, v[35:36]
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v138, v118, v120
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v118, 16, v137
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v137, 0x3fb8aa3b, v121 :: v_dual_lshlrev_b32 v120, 16, v18
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v121, 16, v16
	v_and_b32_e32 v16, 0xffff0000, v16
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s34, 1, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v120, 0x3fb8aa3b, v120 :: v_dual_lshlrev_b32 v181, 1, v166
	v_dual_mul_f32 v122, 0x3fb8aa3b, v121 :: v_dual_lshlrev_b32 v121, 16, v130
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v18, 0xffff0000, v18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v120, v32, v118
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v118, 16, v136
	v_lshlrev_b32_e32 v130, 16, v132
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v132, 0x1000000, v144
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v18, 0x3fb8aa3b, v18
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v167.h, v119.l
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s18, 0xff800000, v19
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v20.h, v119.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s35, 0, v132
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v18, v31, v118
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v118, 16, v135
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v135, 1, v145
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.h, v119.l
	v_mov_b16_e32 v17.h, v119.l
	v_mov_b16_e32 v32.h, v119.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v137, v30, v118
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v118, 16, v134
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s38, 1, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v31.h, v119.l
	v_mov_b16_e32 v30.h, v119.l
	v_mov_b16_e64 v169.h, v119.l
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v122, v29, v118 :: v_dual_lshlrev_b32 v29, 16, v133
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v133, v153
	ds_load_b32 v134, v89
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v16, 0x3fb8aa3b, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v118, 16, v129
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v22, v115, v22 :: v_dual_and_b32 v129, 1, v143
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v16, v28, v29 :: v_dual_lshlrev_b32 v29, 16, v128
	v_dual_fmac_f32 v9, v24, v118 :: v_dual_lshlrev_b32 v28, 16, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s30, 1, v129
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v124, v23, v29 :: v_dual_mul_f32 v23, 0x3fb8aa3b, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v119.h, v13.l
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v29, 0x10000, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v23, v25, v121
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v125, 0x1000000, v133
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v13, 0x3fb8aa3b, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v119.h, v17.l
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v121, 0x1000000, v173
	v_and_b32_e32 v127, 1, v134
	v_cmp_ne_u32_e64 s20, 0, v125
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v125, 0xff800000, v9, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v9, 0x10000, v11
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v175, 0x3fb8aa3b, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v119.h, v15.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v162, v22, v28 :: v_dual_and_b32 v15, 1, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s14, 0, v9
	v_and_b32_e32 v9, 1, v173
	v_cmp_ne_u32_e64 s13, 0, v121
	v_cmp_eq_u32_e64 s43, 1, v15
	v_and_b32_e32 v15, 0x1000000, v143
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v13, v26, v123
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s19, 1, v9
	v_lshrrev_b16 v9.l, 8, v133.l
	v_and_b32_e32 v26, 0x1000000, v174
	v_cmp_ne_u32_e64 s31, 0, v15
	v_cmp_eq_u32_e64 s23, 1, v127
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v121, 0xff800000, v124, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	v_and_b32_e32 v118, 0x1000000, v11
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v124, 0xff800000, v159, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v128, 0x1000000, v134
	v_and_b32_e32 v123, 1, v133
	v_cmp_eq_u16_e64 s16, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v134.l
	v_cmp_ne_u32_e64 s11, 0, v26
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v26, 0xff800000, v162, s23
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v22, 0x10000, v133
	v_cmp_ne_u32_e64 s24, 0, v128
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, 0xff800000, v161, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v136, 0x1000000, v145
	v_and_b32_e32 v25, 0x10000, v143
	v_and_b32_e32 v28, 0x10000, v144
	v_cmp_eq_u16_e64 s22, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v143.l
	v_cmp_ne_u32_e64 s21, 0, v22
	v_cmp_eq_u32_e64 s2, 1, v123
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v129, 0xff800000, v23, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s41, 0, v136
	v_and_b16 v9.l, 1, v9.l
	v_cmp_ne_u32_e64 s17, 0, v118
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, 0xff800000, v13, s43
	v_cndmask_b32_e64 v23, 0xff800000, v146, s16
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v13, 16, v126
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s26, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v144.l
	v_lshrrev_b16 v9.h, 8, v173.l
	v_and_b32_e32 v24, 0x10000, v134
	v_cmp_ne_u32_e64 s29, 0, v25
	v_cmp_ne_u32_e64 s37, 0, v28
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, 0xff800000, v12, s41
	v_cndmask_b32_e64 v136, 0xff800000, v14, s17
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v175, v27, v130
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v12, v115, v21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s36, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v145.l
	v_and_b16 v9.h, 1, v9.h
	v_cmp_ne_u32_e64 s25, 0, v24
	v_cmp_ne_u32_e64 s40, 0, v29
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v126, 0xff800000, v156, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	v_and_b32_e32 v22, 0x10000, v174
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v25, 0xff800000, v150, s20
	v_cndmask_b32_e64 v123, 0xff800000, v158, s29
	v_cndmask_b32_e64 v127, 0xff800000, v160, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v11.l
	v_lshrrev_b16 v11.l, 8, v174.l
	v_cmp_ne_u32_e64 s12, 0, v22
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v22, 0xff800000, v148, s2
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v15, 0x10000, v173
	v_and_b16 v9.l, 1, v9.l
	v_and_b16 v11.l, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, 0xff800000, v10, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v14, 1, v174
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, 0x3fb8aa3b, v119
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s42, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v152, 0xff800000, v122, s12
	v_cndmask_b32_e64 v27, 0xff800000, v147, s22
	v_cndmask_b32_e64 v122, 0xff800000, v155, s26
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s28, 1, v9.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, 0xff800000, v141, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s27, 1, v11.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v10, v12, v13
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v118, v22, v23
.Ltmp4:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s15, 0, v15
	v_cmp_eq_u32_e64 s33, 1, v14
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v24, 0xff800000, v149, s21
	v_cndmask_b32_e64 v28, 0xff800000, v151, s25
	v_cndmask_b32_e64 v29, 0xff800000, v157, s24
	v_cndmask_b32_e64 v131, 0xff800000, v142, s40
	v_cndmask_b32_e64 v135, 0xff800000, v140, s14
	v_cndmask_b32_e64 v139, 0xff800000, v120, s15
	v_cndmask_b32_e64 v140, 0xff800000, v18, s13
	v_cndmask_b32_e64 v153, 0xff800000, v16, s11
	v_cndmask_b32_e64 v138, 0xff800000, v138, s28
	v_cndmask_b32_e64 v151, 0xff800000, v137, s27
	v_cndmask_b32_e64 v137, 0xff800000, v175, s19
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v12, v122, v123, v124
	v_max3_f32 v13, v125, v126, v127
	v_max3_f32 v15, v128, v129, v130
	v_max3_f32 v120, v25, v26, v27
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, 0xff800000, v10, s33
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v9, v28, v29, v121
	v_max_f32_e32 v21, v152, v153
	v_max3_f32 v11, v131, v132, v133
	v_max3_f32 v16, v134, v135, v136
	v_max3_f32 v10, v137, v138, v139
	v_max3_f32 v12, v12, v13, v15
	v_max3_f32 v13, v118, v24, v120
	v_max_f32_e32 v118, v140, v150
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v154, v[22:25]
	ds_store_b128 v154, v[129:132] offset:512
	ds_store_b128 v104, v[26:29]
	ds_store_b128 v104, v[133:136] offset:512
	ds_store_b128 v105, v[121:124]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v120, v11, v16, v10
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v105, v[137:140] offset:512
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v141, v13, v9, v12
	v_max3_f32 v21, v118, v151, v21
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v106, v[125:128]
	ds_store_b128 v106, v[150:153] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v96
	ds_load_b128 v[9:12], v96 offset:256
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v21, v141, v120, v21
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v155.h, v119.l
	v_mov_b16_e32 v119.h, v119.l
	v_mov_b16_e64 v162.h, v119.l
	v_mov_b16_e64 v173.h, v119.l
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v118, v21, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v18.h, v119.l
	v_mov_b16_e64 v161.h, v119.l
	v_mov_b16_e64 v154.h, v119.l
	v_mov_b16_e64 v156.h, v119.l
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v120, v19, v21, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.h, v119.l
	v_mov_b16_e64 v158.h, v119.l
	v_mov_b16_e64 v159.h, v119.l
	v_mov_b16_e64 v160.h, v119.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v143, v137, v120
	v_sub_f32_e32 v21, v22, v120
	v_sub_f32_e32 v22, v23, v120
	v_sub_f32_e32 v23, v24, v120
	v_sub_f32_e32 v24, v25, v120
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v143, v143
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v25, v26, v120
	v_sub_f32_e32 v26, v27, v120
	v_sub_f32_e32 v27, v28, v120
	v_sub_f32_e32 v28, v29, v120
	v_sub_f32_e32 v29, v121, v120
.Ltmp17:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v121, v16, v16
.Ltmp18:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v141, v122, v120
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v122, v13, v9, v14
.Ltmp20:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v174, v123, v120
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v143, s19
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v175, v124, v120
	v_sub_f32_e32 v182, v125, v120
	v_sub_f32_e32 v183, v126, v120
	v_sub_f32_e32 v185, v128, v120
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v155.l, v143.h
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v118, v12, v12
.Ltmp22:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v187, v130, v120
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v130, v166, s78, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v191, v134, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v155, 1, v155
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v189, v132, v120 :: v_dual_max_f32 v118, v121, v118
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v121, v10, v15, v11
.Ltmp24:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v132, v166, s80, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v144, v139, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v139.h, v119.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v118, v122, v121, v118
.Ltmp26:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v121, v19, v120
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v121, v121
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v19, 0, v121, s18
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v147, v136, v120
	v_sub_f32_e32 v149, v140, v120
	v_sub_f32_e32 v145, v150, v120
	v_sub_f32_e32 v150, v151, v120
	v_dual_sub_f32 v151, v153, v120 :: v_dual_mul_f32 v8, v8, v19
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v19
	v_mul_f32_e32 v2, v2, v19
	v_mul_f32_e32 v3, v3, v19
	v_mul_f32_e32 v4, v4, v19
	v_mul_f32_e32 v5, v5, v19
	v_mul_f32_e32 v6, v6, v19
	v_mul_f32_e32 v7, v7, v19
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v19, v118
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v147, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v153.h, v119.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v149, v149
	v_exp_f32_e32 v145, v145
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v151, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
.Ltmp32:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v147, s17
	v_cndmask_b32_e64 v149, 0, v149, s13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v145, 0, v145, s33
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v118, v118, v19
.Ltmp34:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v19, v22
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v151, s11
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v156.l, v149.h
	v_cmp_o_f32_e64 s13, v143, v143
	v_mov_b16_e64 v159.l, v145.h
	v_add3_u32 v143, v143, v155, 0x7fff
	v_cmp_o_f32_e64 s19, v145, v145
	v_and_b32_e32 v156, 1, v156
	v_mov_b16_e64 v160.l, v151.h
	v_and_b32_e32 v159, 1, v159
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v19, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v145, v145, v159, 0x7fff
	v_mov_b16_e32 v20.l, v19.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s16, v19, v19
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v121, v19, v20, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v19, v21
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v21, 0x80000000, v130, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v19, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v147, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v167.l, v19.h
	v_cmp_o_f32_e64 s18, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v167
	v_add3_u32 v122, v19, v20, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v19, v24
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v122.l, 0x7fff, v145.h, s19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v19, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.l, v19.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s20, v19, v19
	v_and_b32_e32 v20, 1, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_add3_u32 v123, v19, v20, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v19, v23
	v_exp_f32_e32 v20, v175
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v19, s21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v20, 0, v20, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v17.l, v19.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s21, v19, v19
	v_mov_b16_e64 v172.l, v20.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v17, 1, v17
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v22, v174
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v24, 1, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_add3_u32 v124, v19, v17, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v26
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v22, 0, v22, s29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v17, 0, v17, s22
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v18.l, v22.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s31, v22, v22
	v_mov_b16_e32 v32.l, v17.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s22, v17, v17
	v_and_b32_e32 v19, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v125, v17, v19, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v25
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v155.h, 0x7fff, v125.h, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v31.l, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s23, v17, v17
	v_and_b32_e32 v19, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v126, v17, v19, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v28
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v155.l, 0x7fff, v126.h, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v30.l, v17.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v184, v127, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v17, v17
	v_and_b32_e32 v19, 1, v30
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v30, 0x80000000, v132, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v132, v20, v24, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v24, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v127, v17, v19, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v27
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v24, 0, v24, s35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v17, 0, v17, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v173.l, v24.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v169.l, v17.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v186, v129, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v28, 1, v173
	v_and_b32_e32 v19, 1, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v128, v17, v19, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v141
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v170.l, v17.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v188, v131, v120
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v131, v166, s79, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v19, 1, v170
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v25, 0x80000000, v131, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v129, v17, v19, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v19, v29
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v17, 0x80000000, v181, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v19, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v171.l, v19.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v190, v133, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v171
	v_add3_u32 v130, v19, v23, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v23, v182
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v23, 0, v23, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v162.l, v23.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v142, v135, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v135, v24, v28, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v28, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v23, v23
	v_and_b32_e32 v27, 1, v162
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v142
	v_exp_f32_e32 v162, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v133, v23, v27, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v27, v187
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v28, 0, v28, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v159.l, 0x7fff, v133.h, s35
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v142, s14
	v_cndmask_b32_e64 v162, 0, v162, s43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v178.l, v28.h
	v_cmp_o_f32_e64 s14, v149, v149
	v_add3_u32 v149, v149, v156, 0x7fff
	v_mov_b16_e64 v153.l, v142.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v146, v152, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v152.h, v119.l
	v_mov_b16_e64 v152.l, v147.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v27, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v32, 1, v178
	v_and_b32_e32 v153, 1, v153
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v146, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v152, 1, v152
	v_mov_b16_e64 v177.l, v27.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v148, v138, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v137, v28, v32, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v32, v191
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v147, v147, v152, 0x7fff
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v152, v118 :: v_dual_and_b32 v31, 1, v177
.Ltmp36:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v148, v148
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v146, s12
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v142, v142
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v152, v152 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v138, v27, v31, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v31, v188
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v32, s42
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v142, v142, v153, 0x7fff
	v_add3_u32 v131, v22, v18, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v22, v183
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v148, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v139.l, v32.h
	v_cmp_o_f32_e64 s43, v162, v162
	v_cmp_o_f32_e64 s28, v146, v146
	v_cndmask_b16 v147.h, 0x7fff, v147.h, s2
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v31, s40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.l, v148.h
	v_cmp_o_f32_e64 s12, v148, v148
	v_cndmask_b16 v147.l, 0x7fff, v142.h, s11
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v22, 0, v22, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v180.l, v31.h
	v_and_b32_e32 v154, 1, v154
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[17:20], v17, s[72:75], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s36, v24, v24
	v_mov_b16_e64 v161.l, v22.h
	v_and_b32_e32 v141, 1, v180
	v_add3_u32 v148, v148, v154, 0x7fff
	v_cndmask_b16 v148.l, 0x7fff, v143.h, s13
	v_cmp_o_f32_e64 s34, v22, v22
	v_and_b32_e32 v26, 1, v161
	v_and_b32_e32 v161, 1, v139
	v_add3_u32 v139, v31, v141, 0x7fff
	v_cndmask_b16 v148.h, 0x7fff, v148.h, s12
	v_cmp_o_f32_e64 s38, v27, v27
	v_cmp_o_f32_e64 s39, v28, v28
	v_add3_u32 v141, v32, v161, 0x7fff
	v_mov_b16_e64 v161.h, v119.l
	v_mov_b16_e64 v119.l, v162.h
	v_mov_b16_e64 v161.l, v146.h
	v_cmp_o_f32_e64 s42, v32, v32
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v144, v144
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v156.l, 0x7fff, v128.h, s25
	v_and_b32_e32 v119, 1, v119
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v150, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v161, 1, v161
	v_permlanex16_b32 v128, v155, s81, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v156.h, 0x7fff, v127.h, s24
	v_add3_u32 v119, v162, v119, 0x7fff
	v_cndmask_b16 v153.h, 0x7fff, v121.h, s16
	v_add3_u32 v146, v146, v161, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v144, 0, v144, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v127, v128, v155, v107
	v_cndmask_b16 v167.l, 0x7fff, v119.h, s43
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v119.h, 0x7fff, v149.h, s14
	v_cndmask_b16 v121.l, 0x7fff, v146.h, s28
	v_permlanex16_b32 v146, v147, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v149, v148, s81, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v158.l, v150.h
	v_cmp_o_f32_e64 s17, v150, v150
	v_perm_b32 v128, v128, v155, v114
	v_perm_b32 v145, v146, v147, v107
	v_perm_b32 v146, v146, v147, v114
	v_and_b32_e32 v158, 1, v158
	v_perm_b32 v147, v149, v148, v107
	v_perm_b32 v148, v149, v148, v114
	v_mov_b16_e64 v157.l, v144.h
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v162, v164, v164
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v150, v150, v158, 0x7fff
	v_cndmask_b16 v158.l, 0x7fff, v131.h, s31
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v131, v152, v152
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v157, 1, v157
	v_cndmask_b16 v153.l, 0x7fff, v122.h, s18
	v_cndmask_b16 v154.h, 0x7fff, v123.h, s20
	v_cndmask_b16 v154.l, 0x7fff, v124.h, s21
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v118, v118, v131
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v144, v144
	v_add3_u32 v144, v144, v157, 0x7fff
	v_cndmask_b16 v157.l, 0x7fff, v130.h, s29
	v_permlanex16_b32 v124, v153, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v149, v118
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v126, v154, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v130, v156, s81, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v157.h, 0x7fff, v129.h, s26
	v_perm_b32 v123, v124, v153, v107
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v149, v149 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v124, v124, v153, v114
	v_perm_b32 v125, v126, v154, v107
	v_perm_b32 v126, v126, v154, v114
	v_perm_b32 v129, v130, v156, v107
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v149, v149, v149
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v130, v130, v156, v114
	v_cmp_o_f32_e64 s27, v151, v151
	v_cndmask_b16 v158.h, 0x7fff, v132.h, s30
	v_cndmask_b16 v119.l, 0x7fff, v144.h, s15
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v149, v118, v149
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v161.h, 0x7fff, v138.h, s38
	v_cndmask_b16 v161.l, 0x7fff, v137.h, s39
	v_cndmask_b16 v167.h, 0x7fff, v141.h, s42
	v_cndmask_b16 v122.h, 0x7fff, v150.h, s17
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v118, v117, v149
	v_max_f32_e32 v117, v162, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v132, v157, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v150, v119, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v144, v167, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v13, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v134, v22, v26, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v26, v184
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v14, v14, v118
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	buffer_load_b128 v[21:24], v21, s[72:75], 0 offen
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v9, v9, v118
	v_sub_f32_e32 v10, v10, v118
	v_sub_f32_e32 v15, v15, v118
	v_sub_f32_e32 v16, v16, v118
	v_sub_f32_e32 v11, v11, v118
	v_sub_f32_e32 v12, v12, v118
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v26, 0, v26, s37
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v9, v9
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v15, v15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v176.l, v26.h
	v_cmp_o_f32_e64 s37, v26, v26
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v16, v16
	v_exp_f32_e32 v12, v12
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v29, 1, v176
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s8
	v_cndmask_b32_e64 v9, 0, v9, s10
	v_cndmask_b32_e64 v14, 0, v14, s6
	v_cndmask_b32_e64 v10, 0, v10, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v136, v26, v29, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v29, v189
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[25:28], v25, s[72:75], 0 offen
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s4
	v_cndmask_b32_e64 v11, 0, v11, s7
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v12, 0, v12, s5
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v9, v13, v9 :: v_dual_add_f32 v10, v14, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_add_f32 v11, v15, v11 :: v_dual_and_b32 v160, 1, v160
.Ltmp52:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s41
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s41, v31, v31
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v9, v9, v10 :: v_dual_add_f32 v12, v16, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v151, v151, v160, 0x7fff
	v_mov_b16_e64 v179.l, v29.h
	v_cmp_o_f32_e64 s40, v29, v29
	v_cndmask_b16 v159.h, 0x7fff, v134.h, s34
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v10, v11, v12
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v160.h, 0x7fff, v135.h, s36
	v_and_b32_e32 v140, 1, v179
	v_cndmask_b16 v160.l, 0x7fff, v136.h, s37
	v_cndmask_b16 v166.l, 0x7fff, v139.h, s41
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v121.h, 0x7fff, v151.h, s27
	v_add3_u32 v140, v29, v140, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[29:32], v30, s[72:75], 0 offen
	s_waitcnt lgkmcnt(0)
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp60:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v166.h, 0x7fff, v140.h, s40
	v_permlanex16_b32 v134, v158, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v136, v159, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v138, v160, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v151, v164, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v140, v161, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v142, v166, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp64:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v131, v132, v157, v107
	v_perm_b32 v132, v132, v157, v114
	v_perm_b32 v133, v134, v158, v107
	v_perm_b32 v134, v134, v158, v114
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp66:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v135, v136, v159, v107
	v_perm_b32 v136, v136, v159, v114
	v_perm_b32 v137, v138, v160, v107
	v_perm_b32 v138, v138, v160, v114
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v149, v150, v119, v107
	v_perm_b32 v150, v150, v119, v114
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v119, v151
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v152, v122, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v155, v9, v10
.Ltmp70:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v168, v121, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v139, v140, v161, v107
	v_perm_b32 v140, v140, v161, v114
	v_perm_b32 v141, v142, v166, v107
	v_perm_b32 v142, v142, v166, v114
	v_perm_b32 v143, v144, v167, v107
	v_perm_b32 v144, v144, v167, v114
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v164
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v151, v152, v122, v107
	v_perm_b32 v152, v152, v122, v114
	v_perm_b32 v153, v168, v121, v107
	v_perm_b32 v154, v168, v121, v114
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v165, v[17:20]
	s_waitcnt vmcnt(2)
	ds_store_b128 v165, v[21:24] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v165, v[25:28] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v165, v[29:32] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v58
	ds_load_u16_d16 v10, v58 offset:256
	ds_load_u16_d16 v11, v58 offset:512
	ds_load_u16_d16 v12, v58 offset:768
	ds_load_u16_d16 v13, v58 offset:1024
	ds_load_u16_d16 v14, v58 offset:1280
	ds_load_u16_d16 v15, v58 offset:1536
	ds_load_u16_d16 v16, v58 offset:1792
	ds_load_u16_d16 v17, v58 offset:2048
	ds_load_u16_d16 v18, v58 offset:2304
	ds_load_u16_d16 v19, v58 offset:2560
	ds_load_u16_d16 v20, v58 offset:2816
	ds_load_u16_d16 v21, v58 offset:3072
	ds_load_u16_d16 v22, v58 offset:3328
	ds_load_u16_d16 v23, v58 offset:3584
	ds_load_u16_d16 v24, v58 offset:3840
	ds_load_u16_d16 v25, v58 offset:4096
	ds_load_u16_d16 v26, v58 offset:4352
	ds_load_u16_d16 v27, v58 offset:4608
	ds_load_u16_d16 v28, v58 offset:4864
	ds_load_u16_d16 v29, v58 offset:5120
	ds_load_u16_d16 v30, v58 offset:5376
	ds_load_u16_d16 v31, v58 offset:5632
	ds_load_u16_d16 v32, v58 offset:5888
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v9, v58 offset:128
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v10, v58 offset:384
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v11, v58 offset:640
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v12, v58 offset:896
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v13, v58 offset:1152
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v14, v58 offset:1408
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v15, v58 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v16, v58 offset:1920
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[123:130], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v9, v58 offset:6144
	ds_load_u16_d16 v10, v58 offset:6400
	ds_load_u16_d16 v11, v58 offset:6656
	ds_load_u16_d16 v12, v58 offset:6912
	ds_load_u16_d16 v13, v58 offset:7168
	ds_load_u16_d16 v14, v58 offset:7424
	ds_load_u16_d16 v15, v58 offset:7680
	ds_load_u16_d16 v16, v58 offset:7936
	ds_load_u16_d16_hi v17, v58 offset:2176
	ds_load_u16_d16_hi v18, v58 offset:2432
	ds_load_u16_d16_hi v19, v58 offset:2688
	ds_load_u16_d16_hi v20, v58 offset:2944
	ds_load_u16_d16_hi v21, v58 offset:3200
	ds_load_u16_d16_hi v22, v58 offset:3456
	ds_load_u16_d16_hi v23, v58 offset:3712
	ds_load_u16_d16_hi v24, v58 offset:3968
	ds_load_u16_d16_hi v25, v58 offset:4224
	ds_load_u16_d16_hi v26, v58 offset:4480
	ds_load_u16_d16_hi v27, v58 offset:4736
	ds_load_u16_d16_hi v28, v58 offset:4992
	ds_load_u16_d16_hi v29, v58 offset:5248
	ds_load_u16_d16_hi v30, v58 offset:5504
	ds_load_u16_d16_hi v31, v58 offset:5760
	ds_load_u16_d16_hi v32, v58 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v9, v58 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v10, v58 offset:6528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v11, v58 offset:6784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v12, v58 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v13, v58 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v14, v58 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v15, v58 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v16, v58 offset:8064
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v123, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v123, v123 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[131:138], v[1:8]
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v17, 0, v119, s1
	v_dual_mov_b32 v19, v120 :: v_dual_add_f32 v20, v155, v123
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[139:146], v[1:8]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v20, v163, v17
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[147:154], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v9, v50
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v117, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v20, v8
.LBB0_8:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v48
	s_mov_b32 s1, 0x76543210
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp74:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s47, s47, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v10, 0xff800000, v117, vcc_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v12, 0, v20, vcc_lo
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v49
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s45, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v11, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v9, 0, v9
.Ltmp76:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp78:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v3, 0, v3
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v15, v1 :: v_dual_add_f32 v12, v12, v13
	v_dual_mov_b32 v16, v2 :: v_dual_mov_b32 v17, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v11 :: v_dual_and_b32 v11, 12, v45
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v14, v10 :: v_dual_add_nc_u32 v11, 0, v11
.Ltmp84:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s46, s47
	.loc	1 1025 30 is_stmt 0             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp85:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v13, v12
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v17 :: v_dual_add_f32 v2, v2, v16
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_add_f32 v1, v1, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v8 :: v_dual_max_f32 v10, v10, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v1
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_cndmask_b32 v13, 0, v6
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v9, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v9, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp95:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_dual_cndmask_b32 v11, 0, v4 :: v_dual_cndmask_b32 v12, 0, v5
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v3 :: v_dual_mov_b32 v4, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v14 :: v_dual_cndmask_b32 v14, 0, v7
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v7, v10
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v4
	v_add_f32_e32 v4, v3, v5
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, v9
.Ltmp105:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v2 :: v_dual_mov_b32 v16, v4
.Ltmp106:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v6 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v10, v10
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v7, v7
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v19, v14
.Ltmp112:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v9, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v5 :: v_dual_max_f32 v8, v8, v10
.Ltmp114:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v20, v15 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp115:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v9, v7 :: v_dual_mov_b32 v10, v8
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v4, v16
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v16, v11 :: v_dual_add_f32 v13, v13, v18
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v18, v13 :: v_dual_add_f32 v11, v11, v16
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v16, v11 :: v_dual_add_f32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_mov_b32 v18, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_add_f32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v19, v14
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v15
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v15, v20
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v15, v11 :: v_dual_add_f32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v20, v16
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v19, v15
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v16, v20
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v12
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_10
; %bb.9:
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp135:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp137:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp139:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_10:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp140:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp141:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v45
	v_and_b32_e32 v4, 0xe0, v46
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_lshlrev_b32 v2, 5, v47
.Ltmp143:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp145:
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
.Ltmp146:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 192
		.amdhsa_next_free_sgpr 83
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 192
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 83
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11244
; TotalNumSgprs: 85
; NumVgprs: 192
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 85
; NumVGPRsForWavesPerEU: 192
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
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     85
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     192
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
