	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s8, s[0:1], 0x5c
	s_load_b32 s10, s[0:1], 0x84
	s_load_b64 s[4:5], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v50, 3, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v17, 7, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s15, s2, 5
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s9, s3, 9
	s_mov_b32 s7, 0x31027000
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s11, s15, s9
	.loc	1 787 79 is_stmt 0              ; attention.py:787:79
	v_lshlrev_b32_e32 v2, 3, v17
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v3, s15, v50
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v64, 32, v0
	v_and_b32_e32 v66, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v9, 0x70, v9
	v_lshlrev_b32_e32 v68, 1, v64
	v_lshlrev_b32_e32 v69, 1, v66
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s8, v50
	s_mul_i32 s2, s8, s11
	s_lshl_b32 s6, s8, 4
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s18, s15, s10
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v9, v10, v9
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s18, s18, 32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 787 26                        ; attention.py:787:26
	v_add3_u32 v1, v1, v2, s2
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s8, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v70, 0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v1, v1, s6, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s2
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_gt_i32 s18, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v5, 0x80000000, v1
	s_clause 0x1
	buffer_load_b128 v[1:4], v2, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(1)
	ds_store_b128 v70, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v70, v[5:8] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1044 48                       ; attention.py:1044:48
	v_lshlrev_b32_e32 v19, 1, v64
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_lshlrev_b32_e32 v18, 1, v66
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 19                          ; attention.py:0:19
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr18
.LBB0_3:                                ; %Flow91
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x38
	s_load_b32 s14, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v49, 2, v66
	v_and_b32_e32 v65, 64, v0
	v_and_b32_e32 v63, 16, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v2, v8 :: v_dual_add_nc_u32 v67, 0, v49
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v97, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 974 51 is_stmt 1              ; attention.py:974:51
	v_lshrrev_b32_e32 v7, 4, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v2, 4, v17
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v64
	.loc	1 981 24                        ; attention.py:981:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc_lo, s14, v49
	s_clause 0x2
	s_load_b32 s19, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[16:17], s[0:1], 0x28
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_or_b32 v7, s3, 8, v7
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s0, s18, 0x200
	.loc	1 759 21                        ; attention.py:759:21
	v_or3_b32 v1, v66, v1, s15
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s0, s0, 15
	v_lshrrev_b32_e32 v12, 1, v65
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[61:62], null, s14, v7, v[49:50]
	v_mov_b32_e32 v49, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v72, v66, 7, v2
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s1, s0, 31
	v_dual_mov_b32 v90, 0xff800000 :: v_dual_add_nc_u32 v73, s10, v1
	s_lshr_b32 s1, s1, 28
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v3, v64, 6, v72
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s1, s0, s1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v1
	v_add_nc_u32_e32 v12, 0, v12
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v6, 0x70, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v1, 0x70, v3, 0
	v_xad_u32 v4, 0x60, v3, 0
	ds_load_b128 v[21:24], v1
	ds_load_b128 v[17:20], v4
	v_xad_u32 v1, 0x50, v3, 0
	v_xad_u32 v4, v3, 64, 0
	v_xad_u32 v8, v3, 48, 0
	v_xad_u32 v9, v3, 32, 0
	v_xad_u32 v10, v3, 16, 0
	v_add_nc_u32_e32 v3, 0, v3
	v_bfe_i32 v13, v0, 0, 1
	v_add_nc_u32_e32 v84, v12, v69
	v_mov_b32_e32 v12, v49
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[25:28], v4
	ds_load_b128 v[37:40], v8
	ds_load_b128 v[33:36], v9
	ds_load_b128 v[45:48], v10
	ds_load_b128 v[41:44], v3
	v_xor_b32_e32 v9, 0x50, v72
	v_and_b32_e32 v13, 0x90, v13
	v_xor_b32_e32 v4, 48, v72
	v_xor_b32_e32 v11, 0x70, v72
	v_lshlrev_b32_e32 v14, 5, v0
	v_add_nc_u32_e32 v80, 0, v9
	v_mov_b32_e32 v9, 0
	v_lshrrev_b32_e32 v6, 2, v6
	v_bfe_i32 v15, v0, 2, 1
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v78, 0, v4
	v_mov_b32_e32 v4, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v6, v13, v6
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v13, s9, v50
	v_lshlrev_b32_e32 v16, 7, v0
	v_and_b32_e32 v15, 0x90, v15
	v_lshlrev_b32_e32 v51, 4, v64
	v_add_nc_u32_e32 v82, 0, v11
	v_mul_lo_u32 v13, s8, v13
	v_dual_mov_b32 v11, v49 :: v_dual_and_b32 v14, 0x160, v14
	v_add_nc_u32_e32 v5, 0, v64
	v_xor_b32_e32 v3, 32, v72
	v_xor_b32_e32 v10, 0x60, v72
	v_xor_b32_e32 v1, 16, v72
	v_xor_b32_e32 v8, 64, v72
	v_lshl_add_u32 v62, v13, 1, v2
	v_dual_mov_b32 v13, v49 :: v_dual_and_b32 v16, 0x700, v16
	v_mov_b32_e32 v2, v49
	v_or3_b32 v74, v15, v51, v14
	v_add_nc_u32_e32 v77, 0, v3
	v_add_nc_u32_e32 v81, 0, v10
	v_mov_b32_e32 v10, v49
	v_lshl_add_u32 v5, v63, 2, v5
	v_xor_b32_e32 v15, 16, v74
	v_dual_mov_b32 v3, v49 :: v_dual_add_nc_u32 v14, 0, v16
	.loc	1 811 33                        ; attention.py:811:33
	s_and_b32 s29, s1, -16
	.loc	1 903 13                        ; attention.py:903:13
	s_mul_i32 s1, s3, s14
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v71, 4, v63
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s1, s1, 6
	v_dual_mov_b32 v7, v49 :: v_dual_add_nc_u32 v76, 0, v1
	v_lshl_add_u32 v75, v66, 3, s1
	v_add_nc_u32_e32 v79, 0, v8
	v_mov_b32_e32 v8, v49
	v_add_nc_u32_e32 v83, v5, v69
	v_add_nc_u32_e32 v86, 0, v15
	v_mov_b32_e32 v15, v49
	v_dual_mov_b32 v16, v49 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v5, v49
	v_add_nc_u32_e32 v85, v14, v6
	v_mov_b32_e32 v14, v49
	v_mov_b32_e32 v6, v49
	.loc	1 945 31                        ; attention.py:945:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s30, s19, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 903 13                        ; attention.py:903:13
	s_mov_b32 s28, 0
	s_and_b32 s25, s7, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_lshl_b32 s31, s14, 1
	s_lshl_b32 s33, s14, 3
	s_lshl_b32 s34, s8, 5
	s_mov_b32 s20, s4
	s_mov_b32 s21, s5
	s_mov_b32 s35, 0x76543210
	s_mov_b32 s24, s6
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v50, 0x80000000, v62, s2
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v53, v49 :: v_dual_cndmask_b32 v94, 0x80000000, v61
	v_dual_mov_b32 v52, v49 :: v_dual_cndmask_b32 v95, 0x80000000, v75
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[57:60], v50, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v51, v49 :: v_dual_add_nc_u32 v96, s28, v71
	v_dual_mov_b32 v50, v49 :: v_dual_add_nc_u32 v93, 0, v72
	v_dual_mov_b32 v56, v49 :: v_dual_add_nc_u32 v75, s31, v75
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v105, 6, v96
	v_add_nc_u32_e32 v106, 8, v96
	v_add_nc_u32_e32 v107, 10, v96
	v_add_nc_u32_e32 v108, 12, v96
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v54, v49 :: v_dual_add_nc_u32 v91, v67, v65
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s5, v105, v73
	v_cmp_le_i32_e64 s6, v106, v73
	v_cmp_le_i32_e64 s7, v107, v73
	v_cmp_le_i32_e64 s8, v108, v73
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v55, v49 :: v_dual_add_nc_u32 v92, v67, v68
	v_dual_mov_b32 v87, v97 :: v_dual_add_nc_u32 v88, 0, v74
	v_dual_mov_b32 v104, v56 :: v_dual_add_nc_u32 v61, s33, v61
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v103, v55 :: v_dual_mov_b32 v102, v54
	v_dual_mov_b32 v101, v53 :: v_dual_mov_b32 v100, v52
	v_dual_mov_b32 v99, v51 :: v_dual_mov_b32 v98, v50
	v_dual_mov_b32 v97, v49 :: v_dual_add_nc_u32 v50, 2, v96
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s1, v96, v73
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s5, s0, s5
	s_and_b32 s6, s0, s6
	s_and_b32 s7, s0, s7
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s3, v50, v73
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s1, s0, s1
	s_and_b32 s8, s0, s8
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_mov_b16_e32 v89.l, 0
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s10, 0xff800000, v90
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s3, s0, s3
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s28, s28, 16
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v113.h, v89.l
	v_mov_b16_e32 v116.h, v89.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v115.l, v89.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v51.h, v89.l
	v_mov_b16_e32 v52.h, v89.l
	v_mov_b16_e32 v54.h, v89.l
	v_mov_b16_e32 v114.h, v89.l
	v_mov_b16_e32 v55.h, v89.l
	v_mov_b16_e32 v56.h, v89.l
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v62, s34, v62
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v70, v[57:60]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v94, v94, s[24:27], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[59:60], v95, s[16:19], 0 offen
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[105:108], v93
	ds_load_b128 v[109:112], v76
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[105:112], v[41:48], v[97:104]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[105:108], v77
	ds_load_b128 v[109:112], v78
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[105:112], v[33:40], v[97:104]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[105:108], v79
	ds_load_b128 v[109:112], v80
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[105:112], v[25:32], v[97:104]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[105:108], v81
	ds_load_b128 v[109:112], v82
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_wmma_f32_16x16x16_bf16 v[97:104], v[105:112], v[17:24], v[97:104]
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v53, 4, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v93, s30, v101 :: v_dual_add_nc_u32 v96, 14, v96
	v_mul_f32_e32 v50, s30, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s4, v53, v73
	v_cmp_le_i32_e64 s9, v96, v73
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v53, s30, v98
	v_dual_mul_f32 v57, s30, v99 :: v_dual_mul_f32 v58, s30, v100
	v_dual_mul_f32 v95, s30, v102 :: v_dual_mul_f32 v96, s30, v103
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v98, 0xff800000, v50, s1
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v97, s30, v104
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s4, s0, s4
	s_and_b32 s9, s0, s9
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v53, 0xff800000, v53, s3
	v_cndmask_b32_e64 v57, 0xff800000, v57, s4
	v_cndmask_b32_e64 v58, 0xff800000, v58, s5
	v_cndmask_b32_e64 v93, 0xff800000, v93, s6
	v_cndmask_b32_e64 v95, 0xff800000, v95, s7
	v_cndmask_b32_e64 v96, 0xff800000, v96, s8
	v_cndmask_b32_e64 v97, 0xff800000, v97, s9
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v50, v98, v53, v57
.Ltmp2:
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s28, s29
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v99, v58, v93, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v100, v96, v97
	v_max3_f32 v50, v50, v99, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v99, v50, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v50, v90, v50, v99
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v93, v93, v50
	v_sub_f32_e32 v95, v95, v50
	v_sub_f32_e32 v96, v96, v50
	v_sub_f32_e32 v97, v97, v50
	v_sub_f32_e32 v98, v98, v50
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v96, v96
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v98, v98
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v93, 0, v93, s6
	v_cndmask_b32_e64 v95, 0, v95, s7
	.loc	1 970 74 is_stmt 1              ; attention.py:970:74
	v_sub_f32_e32 v99, v90, v50
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v96, 0, v96, s8
	v_cndmask_b32_e64 v97, 0, v97, s9
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v53, v53, v50
.Ltmp6:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v108, v93, v95
.Ltmp7:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v99, v99
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v90, 0, v98, s1
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v102, v93, 16, 1
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v100, v53
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v103, v95, 16, 1
	v_bfe_u32 v104, v96, 16, 1
	v_cmp_o_f32_e64 s1, v90, v90
	v_bfe_u32 v105, v97, 16, 1
	v_cmp_o_f32_e64 s6, v93, v93
	v_cmp_o_f32_e64 s7, v95, v95
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v53, 0, v99, s10
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v96, v96
	v_add3_u32 v93, v93, v102, 0x7fff
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v98, 0, v100, s3
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v95, v95, v103, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	ds_store_b32 v92, v53
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v91, v91
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v92, v90, 16, 1
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v106, v90, v98
.Ltmp9:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v58, v58, v50
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v99, v98, 16, 1
	v_cmp_o_f32_e64 s3, v98, v98
	v_add3_u32 v90, v90, v92, 0x7fff
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v92, v96, v97 :: v_dual_sub_f32 v57, v57, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp11:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v98, v98, v99, 0x7fff
	v_add3_u32 v96, v96, v104, 0x7fff
	v_cmp_o_f32_e64 s9, v97, v97
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v92, v108, v92
.Ltmp13:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v57, v57
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v97, v97, v105, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v90.h, s1
	v_cndmask_b16 v52.l, 0x7fff, v98.h, s3
	v_cndmask_b16 v56.l, 0x7fff, v93.h, s6
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v9, v9, v91
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v58, v58
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v10, v10, v91
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v57, 0, v57, s4
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v11, v11, v91
	v_mul_f32_e32 v13, v13, v91
	v_mul_f32_e32 v15, v15, v91
	v_mul_f32_e32 v1, v1, v91
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v100, v57, 16, 1
	v_cmp_o_f32_e64 s4, v57, v57
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v91
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v58, 0, v58, s5
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v91
	v_mul_f32_e32 v4, v4, v91
	v_mul_f32_e32 v5, v5, v91
	v_mul_f32_e32 v6, v6, v91
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v101, v58, 16, 1
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v107, v57, v58
.Ltmp15:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v57, v57, v100, 0x7fff
	v_cmp_o_f32_e64 s5, v58, v58
	v_cndmask_b16 v57.l, 0x7fff, v95.h, s7
	v_add3_u32 v58, v58, v101, 0x7fff
	v_cndmask_b16 v58.l, 0x7fff, v97.h, s9
	v_cndmask_b16 v54.l, 0x7fff, v57.h, s4
	v_cndmask_b16 v57.h, 0x7fff, v96.h, s8
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v91
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v55.l, 0x7fff, v58.h, s5
	ds_store_b16 v83, v51
	ds_store_b16 v83, v52 offset:128
	ds_store_b16 v83, v54 offset:256
	ds_store_b16 v83, v55 offset:384
	ds_store_b16 v83, v56 offset:512
	ds_store_b16 v83, v57 offset:640
	ds_store_b16_d16_hi v83, v57 offset:768
	ds_store_b16 v83, v58 offset:896
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v91
	v_mul_f32_e32 v12, v12, v91
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_bfe_i32 v57, v94, 0, 8
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v51.l, v94.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v52.l, 4, v94.l
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v58, 8, v94
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v93, 0xffff0000, v59
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v55.l, v57.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v51.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v89.h, v59.l
	v_mov_b16_e32 v115.h, v60.l
	v_and_b32_e32 v59, 0xffff0000, v60
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v60.l, v94.h
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v54.l, v94.h, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v52.l, v52.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v55.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v55.l, 0, -16, s1
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v95, 24, v94
	v_bfe_i32 v96, v58, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v56.l, 4, v58.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v57.l, v58.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v58, v60, 0, 8
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v54.l
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_or_b16 v60.l, v51.l, v55.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b16 v51.l, v52.l, -16
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v99, v106, v107
.Ltmp17:
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v94, 20, v94
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v106, v95, 0, 8
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v57.h, 0, -16, s3
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v97.l, v52.l, v51.l, s4
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_mov_b16_e32 v52.l, v96.l
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_and_b16 v56.l, v56.l, 15
	v_and_b16 v51.l, v94.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v58.l
	v_mov_b16_e32 v58.l, v106.l
	v_cmp_gt_i16_e64 s1, 0, v52.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v57.l
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_or_b16 v94.l, v54.l, v57.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b16 v57.h, v56.l, -16
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v52.l, v95.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s6, 0, v58.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v55.l, 4, v95.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v54.l, v51.l, -16
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v58.l, v56.l, v57.h, s1
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v56.l, 0, -16, s3
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v52.l
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_bfe_i32 v60, v60, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v54.l, v51.l, v54.l, s4
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v95, v97, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v57.l, v57.l, v56.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v56.l, v55.l, -16
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v51.l, 0, -16, s5
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v94, v94, 0, 16
	v_bfe_i32 v58, v58, 0, 16
	v_bfe_i32 v57, v57, 0, 16
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v51.l, v52.l, v51.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v52.l, v55.l, v56.l, s6
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v57, v57
	v_bfe_i32 v96, v54, 0, 16
	v_bfe_i32 v106, v51, 0, 16
	v_bfe_i32 v97, v52, 0, 16
	v_cvt_f32_i32_e32 v94, v94
	v_mul_f32_e32 v57, v93, v57
	v_cvt_f32_i32_e32 v58, v58
	v_mul_f32_e32 v60, v89, v60
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v90, v99, v92
.Ltmp19:
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v94, v115, v94
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v52.l, v57.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v89, v89, v95
	v_cvt_f32_i32_e32 v95, v96
	v_cvt_f32_i32_e32 v96, v97
	v_cvt_f32_i32_e32 v97, v106
	v_mul_f32_e32 v58, v93, v58
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	ds_load_u16_d16 v98, v84
	ds_load_u16_d16 v99, v84 offset:128
	ds_load_u16_d16 v100, v84 offset:256
	ds_load_u16_d16 v101, v84 offset:384
	ds_load_u16_d16 v102, v84 offset:512
	ds_load_u16_d16 v103, v84 offset:640
	ds_load_u16_d16 v104, v84 offset:768
	ds_load_u16_d16 v105, v84 offset:896
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v93, v115, v95
	v_mul_f32_e32 v95, v59, v96
	v_mul_f32_e32 v59, v59, v97
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v113.l, v60.h
	v_mov_b16_e32 v51.l, v58.h
	v_and_b32_e32 v52, 1, v52
	v_mov_b16_e32 v114.l, v89.h
	v_mov_b16_e32 v116.l, v94.h
	v_mov_b16_e32 v54.l, v93.h
	v_mov_b16_e32 v55.l, v95.h
	v_mov_b16_e32 v56.l, v59.h
.Ltmp20:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v92, v90, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v96, 1, v113
	v_and_b32_e32 v97, 1, v114
	v_and_b32_e32 v51, 1, v51
	v_and_b32_e32 v106, 1, v116
	v_and_b32_e32 v54, 1, v54
	v_and_b32_e32 v55, 1, v55
	v_and_b32_e32 v56, 1, v56
	v_cmp_o_f32_e64 s1, v60, v60
	v_cmp_o_f32_e64 s3, v89, v89
	v_cmp_o_f32_e64 s5, v58, v58
	v_cmp_o_f32_e64 s6, v57, v57
	v_add3_u32 v60, v60, v96, 0x7fff
	v_add3_u32 v89, v89, v97, 0x7fff
	v_add3_u32 v52, v57, v52, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v16, v16, v91 :: v_dual_add_f32 v97, v90, v92
	v_mov_b32_e32 v90, v50
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v51, v58, v51, 0x7fff
	v_cmp_o_f32_e64 s4, v94, v94
	v_cmp_o_f32_e64 s7, v93, v93
	v_cmp_o_f32_e64 s8, v95, v95
	v_cmp_o_f32_e64 s9, v59, v59
	v_add3_u32 v94, v94, v106, 0x7fff
	v_add3_u32 v54, v93, v54, 0x7fff
	v_add3_u32 v55, v95, v55, 0x7fff
	v_add3_u32 v56, v59, v56, 0x7fff
	v_cndmask_b16 v57.h, 0x7fff, v89.h, s3
	v_cndmask_b16 v57.l, 0x7fff, v60.h, s1
	v_cndmask_b16 v58.h, 0x7fff, v51.h, s5
	v_cndmask_b16 v58.l, 0x7fff, v52.h, s6
	v_cndmask_b16 v51.l, 0x7fff, v94.h, s4
	v_cndmask_b16 v51.h, 0x7fff, v54.h, s7
	v_cndmask_b16 v52.h, 0x7fff, v55.h, s8
	v_cndmask_b16 v52.l, 0x7fff, v56.h, s9
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v84 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v84 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v84 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v84 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v84 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v84 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v104, v84 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v105, v84 offset:960
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v85, v57, v58 offset1:8
	ds_store_2addr_b32 v85, v51, v52 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[106:109], v88
	ds_load_b128 v[114:117], v88 offset:1024
	ds_load_b128 v[110:113], v86
	ds_load_b128 v[118:121], v86 offset:1024
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v14, v14, v91 :: v_dual_fmac_f32 v97, v87, v53
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[106:113], v[98:105], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[114:121], v[98:105], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v19, v68 :: v_dual_mov_b32 v18, v69
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_add_nc_u32_e32 v17, v67, v19
	v_add_nc_u32_e32 v19, v67, v65
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v0, 1, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	ds_store_b32 v17, v97
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v19, v19
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v17, 2, v65
	.loc	1 1044 19                       ; attention.py:1044:19
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s13, s13, 0xffff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_add_nc_u32_e32 v18, 0, v18
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v20, v17, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v21, s15, v20
	s_mov_b32 s15, 0x31027000
	.loc	1 790 23 is_stmt 1              ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v21
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v21, null, v19, v19, v9
	v_div_scale_f32 v23, null, v19, v19, v10
	v_div_scale_f32 v24, null, v19, v19, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v26, v21
	v_rcp_f32_e32 v27, v23
	v_div_scale_f32 v25, null, v19, v19, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v28, v24
	v_div_scale_f32 v22, vcc_lo, v9, v19, v9
	v_rcp_f32_e32 v30, v25
	v_div_scale_f32 v36, null, v19, v19, v13
	v_fma_f32 v33, -v21, v26, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v34, -v23, v27, 1.0
	v_div_scale_f32 v29, s1, v10, v19, v10
	v_fma_f32 v35, -v24, v28, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v26, v33, v26 :: v_dual_and_b32 v17, 24, v0
	v_fmac_f32_e32 v27, v34, v27
	v_rcp_f32_e32 v38, v36
	v_div_scale_f32 v31, s2, v11, v19, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v34, v22, v26
	v_fma_f32 v37, -v25, v30, 1.0
	v_fmac_f32_e32 v28, v35, v28
	v_div_scale_f32 v43, null, v19, v19, v14
	v_fma_f32 v40, -v21, v34, v22
	v_mul_f32_e32 v35, v29, v27
	v_fmac_f32_e32 v30, v37, v30
	v_div_scale_f32 v33, s4, v13, v19, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v40, v26
	v_fma_f32 v40, -v36, v38, 1.0
	v_mul_f32_e32 v37, v31, v28
	v_fma_f32 v41, -v23, v35, v29
	v_div_scale_f32 v32, s3, v12, v19, v12
	v_fmac_f32_e32 v38, v40, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v24, v37, v31
	v_fmac_f32_e32 v35, v41, v27
	v_fma_f32 v21, -v21, v34, v22
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_lshrrev_b32_e32 v41, 6, v65
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v0, 32, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v42, v28
	v_fma_f32 v22, -v23, v35, v29
	v_div_fmas_f32 v21, v21, v26, v34
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v29, null, v19, v19, v15
	v_fma_f32 v23, -v24, v37, v31
	v_div_fmas_f32 v22, v22, v27, v35
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v24, v43
	v_div_fixup_f32 v9, v21, v19, v9
	v_div_fmas_f32 v23, v23, v28, v37
	v_mul_f32_e32 v21, v33, v38
	v_div_fixup_f32 v10, v22, v19, v10
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v27, null, v19, v19, v16
	v_div_fixup_f32 v11, v23, v19, v11
	v_rcp_f32_e32 v23, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v43, v24, 1.0
	v_mul_f32_e32 v39, v32, v30
	v_fma_f32 v26, -v36, v21, v33
	v_rcp_f32_e32 v28, v27
	v_fmac_f32_e32 v24, v22, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v25, v39, v32
	v_fmac_f32_e32 v21, v26, v38
	v_div_scale_f32 v22, s1, v14, v19, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v29, v23, 1.0
	v_fmac_f32_e32 v23, v26, v23
	v_div_scale_f32 v26, s2, v15, v19, v15
	v_fmac_f32_e32 v39, v44, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v39, v32
	v_fma_f32 v32, -v27, v28, 1.0
	v_div_fmas_f32 v25, v25, v30, v39
	v_fma_f32 v30, -v36, v21, v33
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v28, v32, v28
	v_div_scale_f32 v32, s3, v16, v19, v16
	v_div_fixup_f32 v12, v25, v19, v12
	v_mul_f32_e32 v25, v22, v24
	v_div_fmas_f32 v21, v30, v38, v21
	v_mul_f32_e32 v30, v26, v23
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v38, s4, v7, v19, v7
	v_fma_f32 v31, -v43, v25, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v29, v30, v26
	v_div_fixup_f32 v13, v21, v19, v13
	v_fmac_f32_e32 v25, v31, v24
	v_div_scale_f32 v31, null, v19, v19, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v33, v23
	v_fma_f32 v21, -v43, v25, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v31
	v_mul_f32_e32 v22, v32, v28
	v_div_fmas_f32 v21, v21, v24, v25
	v_fma_f32 v24, -v29, v30, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v25, -v27, v22, v32
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v29, null, v19, v19, v2
	v_fma_f32 v26, -v31, v34, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v22, v25, v28
	v_div_fixup_f32 v14, v21, v19, v14
	v_div_fmas_f32 v23, v24, v23, v30
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v34, v26, v34
	v_div_scale_f32 v26, s1, v1, v19, v1
	v_fma_f32 v21, -v27, v22, v32
	v_rcp_f32_e32 v24, v29
	v_div_scale_f32 v25, null, v19, v19, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v27, v26, v34
	v_div_fmas_f32 v21, v21, v28, v22
	v_div_fixup_f32 v15, v23, v19, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v23, v25
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v22, -v31, v27, v26
	v_div_fixup_f32 v16, v21, v19, v16
	v_fma_f32 v30, -v29, v24, 1.0
	v_div_scale_f32 v28, s2, v2, v19, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v27, v22, v34
	v_div_scale_f32 v22, null, v19, v19, v4
	v_fma_f32 v21, -v31, v27, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v33, v22
	v_div_fmas_f32 v21, v21, v34, v27
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v34, null, v19, v19, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v21, v21, v19, v1
	v_fma_f32 v27, -v22, v33, 1.0
	v_fmac_f32_e32 v24, v30, v24
	v_fma_f32 v30, -v25, v23, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v33, v27, v33 :: v_dual_mul_f32 v32, v28, v24
	v_fmac_f32_e32 v23, v30, v23
	v_div_scale_f32 v30, s3, v3, v19, v3
	v_div_scale_f32 v27, s1, v4, v19, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v29, v32, v28
	v_mul_f32_e32 v31, v30, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v32, v26, v24
	v_fma_f32 v26, -v25, v31, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v1, -v29, v32, v28
	v_fmac_f32_e32 v31, v26, v23
	v_div_scale_f32 v28, null, v19, v19, v6
	v_rcp_f32_e32 v26, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v1, v1, v24, v32
	v_fma_f32 v24, -v25, v31, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v30, v28
	v_mul_f32_e32 v25, v27, v33
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v2, v1, v19, v2
	v_fma_f32 v29, -v34, v26, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v28, v30, 1.0
	v_fmac_f32_e32 v26, v29, v26
	v_div_scale_f32 v29, s2, v5, v19, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v32, v30
	v_div_fmas_f32 v23, v24, v23, v31
	v_fma_f32 v24, -v22, v25, v27
	v_div_scale_f32 v31, null, v19, v19, v7
	v_div_scale_f32 v32, null, v19, v19, v8
	v_fmac_f32_e32 v25, v24, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v31
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v37, v32
	v_div_fixup_f32 v3, v23, v19, v3
	v_fma_f32 v22, -v22, v25, v27
	v_mul_f32_e32 v23, v29, v26
	v_div_scale_f32 v24, s3, v6, v19, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v22, v22, v33, v25
	v_fma_f32 v1, -v31, v35, 1.0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e32 vcc_lo, 0, v97
	.loc	1 1044 19                       ; attention.py:1044:19
	v_lshrrev_b32_e32 v33, 5, v64
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v36, v24, v30
	v_div_fixup_f32 v4, v22, v19, v4
	v_fmac_f32_e32 v35, v1, v35
	v_fma_f32 v1, -v32, v37, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v39, 0, 1, vcc_lo
	v_add_nc_u32_e32 v33, v18, v33
	v_add_nc_u32_e32 v18, v18, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v27, -v34, v23, v29
	v_fmac_f32_e32 v37, v1, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_mov_b16_e32 v1.l, v39.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v39, s1, v8, v19, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v23, v27, v26
	v_fma_f32 v25, -v28, v36, v24
	v_mul_f32_e32 v27, v38, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	ds_store_b8 v33, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v1, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v18, v39, v37
	v_fmac_f32_e32 v36, v25, v30
	v_fma_f32 v40, -v31, v27, v38
	v_fma_f32 v22, -v34, v23, v29
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v25, -v32, v18, v39
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s14, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v40, v35
	v_div_fmas_f32 v22, v22, v26, v23
	v_fma_f32 v23, -v28, v36, v24
	v_fmac_f32_e32 v18, v25, v37
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v24, -v31, v27, v38
	v_div_fixup_f32 v5, v22, v19, v5
	v_div_fmas_f32 v23, v23, v30, v36
	v_fma_f32 v25, -v32, v18, v39
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v24, v24, v35, v27
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	s_waitcnt lgkmcnt(0)
	v_and_b16 v1.l, 1, v1.l
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s14, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v18, v25, v37, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cmp_eq_u16_e32 vcc_lo, 1, v1.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v23, v19, v6
	v_div_fixup_f32 v6, v24, v19, v7
	v_div_fixup_f32 v7, v18, v19, v8
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v18, s11, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v8, 0, v9 :: v_dual_cndmask_b32 v9, 0, v10
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cndmask_b32_e32 v10, 0, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v18, s14, v18
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v19, v8, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v11, 0, v12 :: v_dual_cndmask_b32 v6, 0, v6
	v_dual_cndmask_b32 v12, 0, v13 :: v_dual_cndmask_b32 v13, 0, v14
	v_dual_cndmask_b32 v14, 0, v15 :: v_dual_cndmask_b32 v15, 0, v16
	v_cndmask_b32_e32 v16, 0, v21, vcc_lo
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v3, 0, v3
	v_cndmask_b32_e32 v5, 0, v5, vcc_lo
	v_cndmask_b32_e32 v7, 0, v7, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v19, v8, v19, 0x7fff
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v0, v18, v0, 1
	.loc	1 1044 19 is_stmt 1             ; attention.py:1044:19
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_bfe_u32 v8, v9, 16, 1
	v_bfe_u32 v20, v10, 16, 1
	v_bfe_u32 v21, v11, 16, 1
	v_cmp_o_f32_e64 s3, v10, v10
	v_cndmask_b16 v19.l, 0x7fff, v19.h, vcc_lo
	v_add3_u32 v8, v9, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v9, v10, v20, 0x7fff
	v_add3_u32 v10, v11, v21, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	v_bfe_u32 v11, v13, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v12, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s3
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s4
	v_bfe_u32 v10, v14, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_add3_u32 v8, v12, v8, 0x7fff
	v_add3_u32 v11, v13, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v13, v13
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v12, v15, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s3
	v_bfe_u32 v11, v16, 16, 1
	v_bfe_u32 v13, v2, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_add3_u32 v12, v15, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_add3_u32 v11, v16, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v16, v16
	v_add3_u32 v13, v2, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v2, v2
	v_cndmask_b16 v10.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v2, v3, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s3
	v_bfe_u32 v12, v4, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_add3_u32 v3, v4, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v4, v5, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v5, v5
	v_bfe_u32 v5, v1, 16, 1
	v_bfe_u32 v12, v6, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s4
	v_add3_u32 v4, v1, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v1, v6, v12, 0x7fff
	v_bfe_u32 v5, v7, 16, 1
	v_cmp_o_f32_e64 s3, v6, v6
	v_cmp_eq_u32_e64 s4, 0, v63
	v_mov_b32_e32 v6, 0x5410
	v_mov_b32_e32 v12, 0x7632
	v_add3_u32 v5, v7, v5, 0x7fff
	v_cmp_o_f32_e64 s5, v7, v7
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b32_e64 v6, 0x1054, v6, s4
	v_cndmask_b32_e64 v12, 0x3276, v12, s4
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s3
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s5
	v_cndmask_b32_e64 v7, v8, v19, s4
	v_lshl_or_b32 v4, v6, 8, v6
	v_lshl_or_b32 v5, v12, 8, v12
	v_cndmask_b32_e64 v6, v19, v8, s4
	v_cndmask_b32_e64 v8, v10, v9, s4
	v_cndmask_b32_e64 v9, v9, v10, s4
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v5, 0x760076, v5
	v_cndmask_b32_e64 v10, v3, v11, s4
	v_cndmask_b32_e64 v3, v11, v3, s4
	s_mov_b32 s3, 0x76543210
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b32_e64 v11, v1, v2, s4
	v_cndmask_b32_e64 v1, v2, v1, s4
	v_permlanex16_b32 v2, v6, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x5040504, v4
	v_and_b32_e32 v13, 0x7060706, v5
	v_permlanex16_b32 v6, v3, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v9, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v1, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v2, v7, v12
	v_perm_b32 v5, v6, v10, v12
	v_perm_b32 v6, v6, v10, v13
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v10, v18, v17, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v2, v2, v7, v13
	v_perm_b32 v3, v4, v8, v12
	v_perm_b32 v4, v4, v8, v13
	v_perm_b32 v7, v9, v11, v12
	v_perm_b32 v8, v9, v11, v13
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x1
	buffer_store_b128 v[1:4], v9, s[12:15], 0 offen
	buffer_store_b128 v[5:8], v0, s[12:15], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 122
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
		.amdhsa_inst_pref_size 49
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_vgpr, 122
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6172
; TotalNumSgprs: 38
; NumVgprs: 122
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 38
; NumVGPRsForWavesPerEU: 122
; Occupancy: 10
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	968                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     122
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
