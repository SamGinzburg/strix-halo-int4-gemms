	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b32 s59, s[0:1], 0x68
	s_load_b128 s[60:63], s[0:1], 0x4c
	s_load_b32 s81, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_and_b32_e32 v41, 31, v0
	v_lshrrev_b32_e32 v56, 5, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_bfe_i32 v3, v0, 7, 1
	v_and_b32_e32 v4, 0x7f, v0
	v_lshlrev_b32_e32 v57, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v58, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v3, 0x88, v3
	v_xor_b32_e32 v3, v3, v4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s8
	s_bitcmp1_b32 s8, 8
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s17, s3, s62
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v4, 0x110, v3
	s_cselect_b32 s5, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s7, s59
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s7
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s12, s2, s59
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v61, 0, v4
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s12, s12, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s21, s4
	s_sub_i32 s4, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s21
	s_mul_hi_u32 s4, s21, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s21, s21, s4
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s6, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s4, s7
	s_sub_i32 s6, s6, s13
	s_add_i32 s13, s4, 1
	s_sub_i32 s14, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s13, s4
	s_cselect_b32 s6, s14, s6
	s_add_i32 s13, s4, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s13, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s14, s60
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s15, s3
	s_cvt_f32_u32 s6, s14
	s_sub_i32 s13, 0, s14
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s4, s4, s12
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s12, s4, s59
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s20, s4, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s58, s2, s12
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s20, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s13, s6
	s_mul_hi_u32 s13, s6, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s13
	s_mul_hi_u32 s6, s15, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s6, s14
	s_sub_i32 s2, s15, s4
	s_add_i32 s4, s6, 1
	s_sub_i32 s12, s2, s14
	s_cmp_ge_u32 s2, s14
	s_mov_b32 s15, 0x31027000
	s_cselect_b32 s4, s4, s6
	s_cselect_b32 s2, s12, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s14
	s_load_b64 s[12:13], s[0:1], 0x0
	s_cselect_b32 s6, s6, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s61
	s_xor_b32 s18, s60, s61
	s_cvt_f32_u32 s4, s2
	s_sub_i32 s16, 0, s2
	s_ashr_i32 s22, s18, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s20, v56
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 8, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s62, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s4
	s_mul_hi_u32 s16, s4, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s16, s4, s16
	s_mul_hi_u32 s16, s14, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s19, s16, s2
	s_add_i32 s18, s16, 1
	s_sub_i32 s14, s14, s19
	s_sub_i32 s19, s14, s2
	s_cmp_ge_u32 s14, s2
	s_cselect_b32 s16, s18, s16
	s_cselect_b32 s14, s19, s14
	s_add_i32 s18, s16, 1
	s_cmp_ge_u32 s14, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s62, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s23, s18, s16
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s24, s17, s20
	s_load_b64 s[16:17], s[0:1], 0x18
	v_mad_u64_u32 v[43:44], null, s81, v56, v[41:42]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s81, v41
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s14, s24, s81
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v6, s24, v58, 1
	s_mov_b32 s19, s15
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v59, s81, 3, v43
	v_add_nc_u32_e32 v1, s14, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v2, s14, v59
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s2
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s23, s22
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u8 v1, v1, s[12:15], 0 offen
	buffer_load_u8 v2, v2, s[12:15], 0 offen
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, s62, v5
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v60, 0, v3
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s18, s14
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v6, vcc_lo
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v60, v1
	s_waitcnt vmcnt(0)
	ds_store_b8 v61, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v1, v3, s[16:19], 0 offen
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s17, s2, s22
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 24, v57
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s16, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cvt_f32_u32 s2, s16
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v2, v58, 5, v2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v3, s2
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s2, s63, 63
	.loc	1 795 15 is_stmt 0              ; attention.py:795:15
	s_ashr_i32 s12, s2, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_xor_b32_e32 v4, 8, v2
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s12, s12, 26
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v5, 16, v2
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s2, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v62, 0, v2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s12, s2, 6
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v2, 24, v2
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s12, s12, s59
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v63, 0, v4
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s12, s12, -1
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v64, 0, v5
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s13, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v65, 0, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s14, s13, s21
	s_xor_b32 s12, s12, s59
	s_mul_i32 s15, s14, s7
	.loc	1 795 14                        ; attention.py:795:14
	s_and_not1_b32 s2, s2, 63
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s13, s13, s15
	s_ashr_i32 s12, s12, 31
	s_add_i32 s15, s14, 1
	s_sub_i32 s18, s13, s7
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[44:45], v62
	ds_load_b64 v[46:47], v63
	ds_load_b64 v[48:49], v64
	ds_load_b64 v[50:51], v65
	.loc	1 798 32                        ; attention.py:798:32
	s_cmp_ge_u32 s13, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 0x80, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s14, s15, s14
	s_cselect_b32 s13, s18, s13
	s_add_i32 s15, s14, 1
	s_cmp_ge_u32 s13, s7
	s_cselect_b32 s7, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s12
	s_sub_i32 s7, s7, s12
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s12, v3
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s13, s58, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s83, s13, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s13, s7, 6
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s7, 0, v2
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s13, s83, s13
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s84, s2, s13
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s2, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s10, s11
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s11, s9
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s20
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s20
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s8, s8, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s63, s2
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s8, s8, 0x7fffffc0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s83, s83, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s13, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s13, s13, 26
	s_add_i32 s2, s2, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s84, s84, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s82, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	v_cndmask_b32_e64 v67, 0, 1, s5
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s63, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s5, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 26
	s_add_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s84, s84, s2
.LBB0_4:
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_and_b32_e32 v42, 63, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v66, 0xc0, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s83, s84
	.loc	1 892 65                        ; attention.py:892:65
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s2, s82, v42
	v_lshrrev_b32_e32 v68, 4, v66
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v11, 4, v66
	s_load_b64 s[56:57], s[0:1], 0x40
	s_cbranch_execz .LBB0_8
.Ltmp2:
; %bb.6:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v12, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v10, v8
	s_branch .LBB0_15
.LBB0_7:
                                        ; implicit-def: $vgpr11
	s_load_b64 s[56:57], s[0:1], 0x40
.LBB0_8:                                ; %.lr.ph
	s_xor_b32 s5, s3, s60
	s_mul_f32 s8, s12, 0x4f7ffffe
	s_ashr_i32 s5, s5, 31
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x6c
	s_load_b64 s[64:65], s[0:1], 0x30
	s_xor_b32 s6, s6, s5
	s_cvt_u32_f32 s8, s8
	s_sub_i32 s18, s6, s5
	s_sub_i32 s5, 0, s16
	s_mul_i32 s6, s18, s60
	s_mul_i32 s5, s5, s8
	s_sub_i32 s19, s3, s6
	s_mul_hi_u32 s5, s8, s5
	s_abs_i32 s6, s19
	s_add_i32 s8, s8, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s6, s8
	s_ashr_i32 s8, s19, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s21, s5, s16
	s_xor_b32 s8, s8, s17
	s_sub_i32 s6, s6, s21
	s_add_i32 s17, s5, 1
	s_sub_i32 s21, s6, s16
	s_cmp_ge_u32 s6, s16
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v69, 6, v66
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s5, s17, s5
	s_cselect_b32 s6, s21, s6
	s_add_i32 s17, s5, 1
	s_cmp_ge_u32 s6, s16
	s_load_b32 s60, s[0:1], 0x7c
	s_cselect_b32 s5, s17, s5
	v_mov_b16_e32 v2.l, 0
	s_xor_b32 s5, s5, s8
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v2.h, v1.l
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s20, v69
	s_clause 0x1
	s_load_b128 s[68:71], s[0:1], 0x8
	s_load_b64 s[72:73], s[0:1], 0x20
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s0, s5, s8
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s5, s12, 0x3fb8aa3b
	v_and_b32_e32 v3, 0xe0, v0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, 12, v1
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s1, s18, s61
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v70, s5, v2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 4, v1
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s61, s0, s1
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v75, s11, v5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s62, v5
	v_lshrrev_b32_e32 v5, 4, v3
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v73, s11, v2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, s62, v2
	v_and_b32_e32 v2, 0x1bc, v57
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, 8, v1
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v72, s11, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s62, v1
	v_mul_lo_u32 v1, s15, v69
	v_dual_mov_b32 v85, 0x5410 :: v_dual_and_b32 v6, 16, v0
	v_xor_b32_e32 v2, v2, v5
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v74, s11, v4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s62, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v25, 2, v6
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	v_lshlrev_b32_e32 v4, 6, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[52:53], null, s60, v42, v[1:2]
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v148, v70 :: v_dual_and_b32 v1, 60, v57
	v_mov_b32_e32 v6, 0x7632
	v_cndmask_b32_e32 v85, 0x1054, v85, vcc_lo
	v_and_b32_e32 v7, 64, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v20, v56, 3, v1
	v_lshl_or_b32 v1, v3, 2, v1
	v_cndmask_b32_e32 v6, 0x3276, v6, vcc_lo
	v_cndmask_b32_e64 v19, 0x84, 0, s7
	v_lshrrev_b32_e32 v89, 2, v66
	v_mov_b32_e32 v150, v70
	v_xor_b32_e32 v1, v1, v68
	v_lshl_or_b32 v6, v6, 8, v6
	v_xor_b32_e32 v19, v20, v19
	v_mov_b32_e32 v151, v70
	v_or_b32_e32 v79, v2, v7
	v_or_b32_e32 v84, v1, v7
	v_and_b32_e32 v1, 64, v57
	v_and_b32_e32 v6, 0x760076, v6
	v_dual_mov_b32 v149, v70 :: v_dual_lshlrev_b32 v20, 1, v58
	v_or_b32_e32 v81, v19, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v152, v70 :: v_dual_add_nc_u32 v1, 0, v1
	v_lshl_or_b32 v6, v6, 4, v6
	v_dual_mov_b32 v154, v70 :: v_dual_add_nc_u32 v7, 0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_add_nc_u32 v88, v1, v89
	v_dual_mov_b32 v153, v70 :: v_dual_and_b32 v86, 0x7060706, v6
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v6, 0x1fe, v57
	v_and_b32_e32 v4, 0x380, v4
	v_lshlrev_b32_e32 v5, 2, v41
	v_dual_mov_b32 v160, 0xff800000 :: v_dual_add_nc_u32 v89, v7, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v136, 0, v6
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_or3_b32 v82, v4, v25, v20
	v_xor_b32_e32 v4, 0x108, v81
	v_lshl_or_b32 v85, v85, 8, v85
	v_xor_b32_e32 v2, 0x210, v79
	v_xor_b32_e32 v8, 0x420, v79
	v_xor_b32_e32 v9, 0x630, v79
	v_add_nc_u32_e32 v108, 0, v4
	v_mov_b32_e32 v4, v1
	v_lshl_or_b32 v83, v58, 8, v5
	v_lshl_or_b32 v80, v58, 7, v5
	v_dual_mov_b32 v158, v1 :: v_dual_and_b32 v85, 0x540054, v85
	v_and_b32_e32 v27, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v53, 32, v83
	v_xor_b32_e32 v54, 36, v83
	v_xor_b32_e32 v55, 40, v83
	v_xor_b32_e32 v10, 4, v80
	v_xor_b32_e32 v11, 8, v80
	v_xor_b32_e32 v12, 12, v80
	v_xor_b32_e32 v13, 16, v80
	v_xor_b32_e32 v14, 20, v80
	v_xor_b32_e32 v15, 24, v80
	v_xor_b32_e32 v16, 28, v80
	v_xor_b32_e32 v17, 32, v80
	v_xor_b32_e32 v18, 36, v80
	v_xor_b32_e32 v21, 40, v80
	v_xor_b32_e32 v22, 44, v80
	v_xor_b32_e32 v23, 48, v80
	v_xor_b32_e32 v24, 52, v80
	v_xor_b32_e32 v26, 56, v80
	v_xor_b32_e32 v19, 60, v80
	v_xor_b32_e32 v25, 0x210, v81
	v_xor_b32_e32 v28, 0x318, v81
	v_xor_b32_e32 v29, 4, v82
	v_xor_b32_e32 v30, 8, v82
	v_xor_b32_e32 v31, 12, v82
	v_xor_b32_e32 v5, 16, v82
	v_xor_b32_e32 v32, 20, v82
	v_xor_b32_e32 v33, 24, v82
	v_xor_b32_e32 v34, 28, v82
	v_xor_b32_e32 v35, 4, v83
	v_xor_b32_e32 v36, 8, v83
	v_xor_b32_e32 v37, 12, v83
	v_xor_b32_e32 v38, 16, v83
	v_xor_b32_e32 v3, 20, v83
	v_xor_b32_e32 v39, 24, v83
	v_xor_b32_e32 v40, 28, v83
	v_xor_b32_e32 v128, 44, v83
	v_xor_b32_e32 v129, 48, v83
	v_xor_b32_e32 v130, 52, v83
	v_xor_b32_e32 v131, 56, v83
	v_xor_b32_e32 v132, 60, v83
	v_xor_b32_e32 v133, 0x410, v84
	v_xor_b32_e32 v134, 0x820, v84
	v_xor_b32_e32 v135, 0xc30, v84
	v_lshl_or_b32 v85, v85, 4, v85
	v_or_b32_e32 v137, 0x600, v57
	v_or_b32_e32 v138, 0xe00, v57
	v_or_b32_e32 v139, 0x1600, v57
	v_or_b32_e32 v140, 0x1e00, v57
	v_add_nc_u32_e32 v125, 0, v53
	v_add_nc_u32_e32 v126, 0, v54
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[53:54], null, s15, 12, v[52:53]
	v_add_nc_u32_e32 v127, 0, v55
	v_mad_u64_u32 v[54:55], null, s82, v69, v[42:43]
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s20, s20, s15
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s18, s13
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v71, v0, 4, 1
	v_subrev_nc_u32_e32 v76, s9, v72
	v_subrev_nc_u32_e32 v77, s9, v73
	v_and_b32_e32 v85, 0x5040504, v85
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_add_nc_u32 v90, 0, v2
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_add_nc_u32 v91, 0, v8
	v_dual_mov_b32 v55, 0xff800000 :: v_dual_add_nc_u32 v92, 0, v9
	v_add_nc_u32_e32 v93, 0, v10
	v_dual_mov_b32 v159, 0xff800000 :: v_dual_add_nc_u32 v94, 0, v11
	v_add_nc_u32_e32 v95, 0, v12
	v_add_nc_u32_e32 v96, 0, v13
	v_add_nc_u32_e32 v97, 0, v14
	v_add_nc_u32_e32 v98, 0, v15
	v_add_nc_u32_e32 v99, 0, v16
	v_add_nc_u32_e32 v100, 0, v17
	v_add_nc_u32_e32 v101, 0, v18
	v_add_nc_u32_e32 v102, 0, v21
	v_add_nc_u32_e32 v103, 0, v22
	v_add_nc_u32_e32 v104, 0, v23
	v_add_nc_u32_e32 v105, 0, v24
	v_add_nc_u32_e32 v106, 0, v26
	v_add_nc_u32_e32 v107, 0, v19
	v_add_nc_u32_e32 v109, 0, v25
	v_add_nc_u32_e32 v110, 0, v28
	v_add_nc_u32_e32 v111, 0, v29
	v_add_nc_u32_e32 v112, 0, v30
	v_add_nc_u32_e32 v113, 0, v31
	v_add_nc_u32_e32 v114, 0, v5
	v_add_nc_u32_e32 v115, 0, v32
	v_add_nc_u32_e32 v116, 0, v33
	v_add_nc_u32_e32 v117, 0, v34
	v_add_nc_u32_e32 v118, 0, v35
	v_add_nc_u32_e32 v119, 0, v36
	v_add_nc_u32_e32 v120, 0, v37
	v_add_nc_u32_e32 v121, 0, v38
	v_add_nc_u32_e32 v122, 0, v3
	v_add_nc_u32_e32 v123, 0, v39
	v_add_nc_u32_e32 v124, 0, v40
	v_add_nc_u32_e32 v128, 0, v128
	v_add_nc_u32_e32 v129, 0, v129
	v_add_nc_u32_e32 v130, 0, v130
	v_add_nc_u32_e32 v131, 0, v131
	v_add_nc_u32_e32 v132, 0, v132
	v_add_nc_u32_e32 v133, 0, v133
	v_add_nc_u32_e32 v134, 0, v134
	v_add_nc_u32_e32 v135, 0, v135
	v_add_nc_u32_e32 v137, 0, v137
	v_add_nc_u32_e32 v138, 0, v138
	v_add_nc_u32_e32 v139, 0, v139
	v_add_nc_u32_e32 v140, 0, v140
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_subrev_nc_u32_e32 v78, s9, v74
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v8, v1
	v_add3_u32 v87, 0, v20, v27
	v_subrev_nc_u32_e32 v141, s9, v75
	v_add_nc_u32_e32 v142, s10, v72
	v_add_nc_u32_e32 v143, s10, v73
	v_add_nc_u32_e32 v144, s10, v74
	v_add_nc_u32_e32 v145, s10, v75
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v146, s15, 2, v52
	v_lshl_add_u32 v147, s15, 3, v52
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s19, s19, s14
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	s_add_i32 s89, s8, s20
	s_mov_b32 s48, 0
	.loc	1 821 32                        ; attention.py:821:32
	s_mul_i32 s61, s61, s63
	s_lshl_b32 s62, s81, 4
	s_lshl_b32 s85, s81, 5
	s_mul_i32 s86, s81, 40
	s_mul_i32 s87, s81, 48
	s_mul_i32 s88, s81, 56
	s_and_b32 s69, s69, 0xffff
	s_and_b32 s73, s73, 0xffff
	s_add_i32 s89, s89, s19
	s_and_b32 s65, s65, 0xffff
	s_lshl_b32 s90, s82, 2
	s_lshl_b32 s91, s82, 3
	s_mul_i32 s92, s82, 12
	s_lshl_b32 s93, s82, 4
	s_mul_i32 s94, s82, 20
	s_mul_i32 s95, s82, 24
	s_mul_i32 s96, s82, 28
	s_lshl_b32 s97, s82, 5
	s_mul_i32 s98, s82, 36
	s_mul_i32 s99, s82, 40
	s_mul_i32 s100, s82, 44
	s_mul_i32 s101, s82, 48
	s_mul_i32 s102, s82, 52
	s_mul_i32 s103, s82, 56
	s_mul_i32 s104, s82, 60
	s_and_b32 s77, s71, 0xffff
	s_mov_b32 s76, s70
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 vcc_hi, 0x76543210
	s_mov_b32 s70, s78
	s_mov_b32 s71, s79
	s_mov_b32 s74, s78
	s_mov_b32 s75, s79
	s_mov_b32 s66, s78
	s_mov_b32 s67, s79
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s7, s83, s60
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v195, v35
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s7, s89, s7
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v35, v40
	v_cvt_f32_i32_e32 v40, v18
	v_cvt_f32_i32_e32 v18, v12
	v_cvt_f32_i32_e32 v12, v13
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v13, s7, v52, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v193, v37
	v_cvt_f32_i32_e32 v37, v39
	v_cvt_f32_i32_e32 v39, v19
	v_cvt_f32_i32_e32 v19, v11
	v_cvt_f32_i32_e32 v11, v15
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v15, s7, v146, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s17
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v197, v33
	v_cvt_f32_i32_e32 v33, v28
	v_cvt_f32_i32_e32 v28, v30
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v15, 0x80000000, v15, s16
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v30, v22
	v_cvt_f32_i32_e32 v22, v23
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_u16 v13, v13, s[64:67], 0 offen
	buffer_load_u16 v23, v15, s[64:67], 0 offen
	v_add_lshl_u32 v15, s7, v147, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v194, v36
	v_cvt_f32_i32_e32 v36, v26
	v_cvt_f32_i32_e32 v26, v32
	v_cvt_f32_i32_e32 v32, v20
	v_cvt_f32_i32_e32 v20, v17
	v_cvt_f32_i32_e32 v17, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v14
	v_cvt_f32_i32_e32 v14, v16
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v16, s7, v53, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s15
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v196, v34
	v_cvt_f32_i32_e32 v34, v27
	v_cvt_f32_i32_e32 v27, v31
	v_cvt_f32_i32_e32 v31, v21
	v_cvt_f32_i32_e32 v21, v24
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v24, 0x80000000, v16, s14
	s_clause 0x1
	buffer_load_u16 v16, v15, s[64:67], 0 offen
	buffer_load_u16 v15, v24, s[64:67], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v32, v70, v32 :: v_dual_add_nc_u32 v213, 0, v81
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(18)
	v_mov_b16_e64 v192.h, v192.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v31, v70, v31
	v_cvt_f32_i32_e32 v38, v38
	v_mul_f32_e32 v28, v152, v28
	v_cvt_f32_i32_e32 v29, v29
	v_mul_f32_e32 v20, v154, v20
	v_mul_f32_e32 v18, v149, v18
	v_cvt_f32_i32_e32 v25, v25
	v_mul_f32_e32 v12, v150, v12
	v_mul_f32_e32 v14, v153, v14
	v_mul_f32_e32 v10, v151, v10
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v155, v155, v155
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v40, v70, v40
	v_mul_f32_e32 v22, v70, v22
	v_dual_mul_f32 v30, v70, v30 :: v_dual_mul_f32 v11, v152, v11
	v_mul_f32_e32 v27, v153, v27
	v_mul_f32_e32 v33, v150, v33
	v_mul_f32_e32 v29, v151, v29
	v_mul_f32_e32 v19, v148, v19
	v_mul_f32_e32 v9, v70, v9
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v23.h, 0xff80, v13.l, s17
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v13, 0, v79
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v24.h, 0xff80, v23.l, s16
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b16_d16_hi v13, v23
	ds_store_b16_d16_hi v90, v24
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v13.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v26, v154, v26
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v13.h, v163.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v23.l, v13.l
	v_mov_b16_e32 v24.l, v13.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v192.l, v13.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_neq_f32_e64 s7, 0xff800000, v24
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v15.h, 0xff80, v16.l, s15
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v16, 0, v80
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v23.h, 0xff80, v15.l, s14
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s37, s17, vcc_lo
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b16_d16_hi v91, v15
	ds_store_b16_d16_hi v92, v23
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v24, v16
	ds_load_b32 v198, v93
	ds_load_b32 v199, v94
	ds_load_b32 v200, v95
	ds_load_b32 v201, v96
	ds_load_b32 v202, v97
	ds_load_b32 v203, v98
	ds_load_b32 v204, v99
	ds_load_b32 v205, v100
	ds_load_b32 v206, v101
	ds_load_b32 v207, v102
	ds_load_b32 v208, v103
	ds_load_b32 v209, v104
	ds_load_b32 v210, v105
	ds_load_b32 v211, v106
	ds_load_b32 v212, v107
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v16, 0, 1, s37
	s_and_b32 s38, s16, s7
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v70, v39
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v15.l, v16.l
	v_cndmask_b32_e64 v16, 0, 1, s38
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v21, v70, v21
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v23
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	ds_store_b8 v213, v15
	ds_store_b8 v108, v16
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v213, 0xffff0000, v198
	v_mov_b16_e32 v15.l, v13.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s41, s14, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v213, 0x3fb8aa3b, v213
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v213, v40, v192
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v40.h, v191.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v191, 0xffff0000, v199
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v40.l, v13.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s42, s15, vcc_lo
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v191, 0x3fb8aa3b, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v191, v39, v40
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v40, 0xffff0000, v200
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v39.h, v190.l
	v_mov_b16_e32 v39.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v190, 0x3fb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v190, v32, v39 :: v_dual_and_b32 v39, 0xffff0000, v201
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v32.h, v189.l
	v_mov_b16_e32 v32.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v39, 0x3fb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v39, v31, v32 :: v_dual_and_b32 v32, 0xffff0000, v202
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v31.h, v188.l
	v_mov_b16_e32 v31.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v188, 0x3fb8aa3b, v32
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v32, v149, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v188, v30, v31
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v31, 0xffff0000, v203
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v30.h, v187.l
	v_mov_b16_e32 v30.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v31, 0x3fb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v31, v22, v30 :: v_dual_and_b32 v30, 0xffff0000, v204
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v22.h, v185.l
	v_mov_b16_e32 v22.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v185, 0x3fb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v185, v21, v22 :: v_dual_and_b32 v30, 0xffff0000, v205
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v21.h, v184.l
	v_mov_b16_e32 v21.l, v13.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v70, v197
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v184, 0x3fb8aa3b, v30
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v30, 0xffff0000, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v184, v22, v21
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v21.h, v183.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v22, v70, v196 :: v_dual_mul_f32 v183, 0x3fb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v183, v22, v21 :: v_dual_and_b32 v30, 0xffff0000, v207
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v21.h, v182.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v70, v195
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v182, 0x3fb8aa3b, v30
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v30, 0xffff0000, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v182, v22, v21
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v21.h, v181.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v70, v194
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v181, 0x3fb8aa3b, v30
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v30, 0xffff0000, v209
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v181, v22, v21
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v21.h, v180.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v70, v193
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v180, 0x3fb8aa3b, v30
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v30, 0xffff0000, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v180, v22, v21
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v21.h, v179.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v70, v38
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v179, 0x3fb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v179, v22, v21 :: v_dual_and_b32 v30, 0xffff0000, v211
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v21.h, v178.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v70, v37
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v178, 0x3fb8aa3b, v30
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v30, 0xffff0000, v212
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v178, v22, v21
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v21.h, v186.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v70, v35
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v186, 0x3fb8aa3b, v30
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v30, v148, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v186, v22, v21
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v21.h, v198.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v22.h, v177.l
	v_mov_b16_e32 v22.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v21, 0x3fb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v21, v30, v22
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v22.h, v199.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v30.h, v176.l
	v_mov_b16_e32 v30.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v22, 0x3fb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v22, v32, v30
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v30.h, v200.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v32.h, v175.l
	v_mov_b16_e32 v32.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v30, 0x3fb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v30, v33, v32
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v32.h, v201.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v33.h, v174.l
	v_mov_b16_e32 v33.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v32, 0x3fb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v32, v29, v33
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v29.h, v202.l
	v_mov_b16_e32 v29.l, v13.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v33.h, v173.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v29, 0x3fb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v29, v28, v33
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v28.h, v203.l
	v_mov_b16_e32 v28.l, v13.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v33.h, v172.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v28, 0x3fb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v28, v27, v33
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v27.h, v204.l
	v_mov_b16_e32 v27.l, v13.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v33.h, v170.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v27, 0x3fb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v27, v26, v33
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v33, 0xffff0000, v24
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v26.h, v171.l
	v_mov_b16_e32 v26.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v33, 0x3fb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v33, v20, v26
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v20.h, v207.l
	v_mov_b16_e32 v20.l, v13.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v26.h, v169.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v20, 0x3fb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v20, v19, v26
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v19.h, v208.l
	v_mov_b16_e32 v19.l, v13.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v26.h, v168.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v19, 0x3fb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v19, v18, v26
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v18.h, v212.l
	v_mov_b16_e32 v18.l, v13.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v26.h, v167.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v18, 0x3fb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v18, v14, v26
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v14.h, v209.l
	v_mov_b16_e32 v14.l, v13.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v26.h, v166.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v35, 0x3fb8aa3b, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v165.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v35, v12, v26
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v12.h, v211.l
	v_mov_b16_e32 v12.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v34, 0x3fb8aa3b, v12
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v12.h, v164.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v34, v11, v14
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v11.h, v210.l
	v_mov_b16_e32 v11.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v36, 0x3fb8aa3b, v11 :: v_dual_mul_f32 v11, v70, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v36, v10, v12 :: v_dual_add_nc_u32 v17, 0, v82
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v10.h, v205.l
	v_mov_b16_e32 v10.l, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v37, 0x3fb8aa3b, v10
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v10.h, v161.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v37, v11, v13
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v13.h, v24.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v11, v70, v25
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v24, 0x3fb8aa3b, v13
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v13.h, v206.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v24, v11, v10
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v10.h, v162.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v25, 0x3fb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v25, v9, v10
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v9, 0, 1, s42
	v_cndmask_b32_e64 v10, 0, 1, s41
	ds_store_b8 v109, v9
	ds_store_b8 v110, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v116
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v116 offset:32
	ds_load_u16_d16 v10, v117
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v115 offset:32
	ds_load_u16_d16 v16, v17 offset:32
	v_and_b16 v11.l, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s30, 1, v11.l
	ds_load_u16_d16 v11, v115
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v11, v114 offset:32
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s14, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s15, 1, v9.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v12.l, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v11.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v23, 0xff800000, v185, s15
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s33, 1, v12.l
	ds_load_u16_d16 v12, v114
	v_and_b16 v11.l, 1, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s17, 1, v11.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v12.h, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v12.l
	v_cmp_eq_u16_e64 s31, 1, v12.h
	ds_load_u16_d16_hi v12, v113
	ds_load_u16_d16_hi v13, v113 offset:32
	ds_load_u16_d16 v14, v112 offset:32
	s_waitcnt lgkmcnt(2)
	v_and_b16 v12.l, 1, v12.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s16, 1, v12.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v14.h, 1, v12.h
	v_lshrrev_b16 v12.h, 8, v12.h
	v_cmp_eq_u16_e64 s35, 1, v14.h
	ds_load_u16_d16_hi v14, v112
	ds_load_u16_d16 v15, v111 offset:32
	v_and_b16 v12.h, 1, v12.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v30, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s19, 1, v12.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v12, 0xff800000, v29, s33
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v15.h, 1, v14.h
	v_lshrrev_b16 v14.h, 8, v14.h
	v_cmp_eq_u16_e64 s34, 1, v15.h
	ds_load_u16_d16_hi v15, v111
	v_and_b16 v14.h, 1, v14.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v22, s34
	v_cndmask_b32_e64 v22, 0xff800000, v31, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s18, 1, v14.h
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v31, 0, v84
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v16.h, 1, v15.h
	v_lshrrev_b16 v15.h, 8, v15.h
	v_cmp_eq_u16_e64 s39, 1, v16.h
	ds_load_u16_d16_hi v16, v17
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v9.l, 8, v16.l
	v_and_b16 v17.l, 1, v16.l
	v_and_b16 v15.h, 1, v15.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, 0xff800000, v21, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s28, 1, v17.l
	ds_load_u16_d16 v17, v117 offset:32
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s12, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v15.l
	v_cmp_eq_u16_e64 s21, 1, v15.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v29, 0xff800000, v213, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s13, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v14.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v21, 0xff800000, v183, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	v_and_b16 v17.h, 1, v17.l
	v_cmp_eq_u16_e64 s10, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v13.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s23, 1, v17.h
	v_and_b16 v17.h, 1, v9.h
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s22, 1, v17.h
	v_and_b16 v17.h, 1, v10.h
	v_cmp_eq_u16_e64 s11, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v11.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v30, 0xff800000, v34, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s25, 1, v17.h
	v_and_b16 v17.h, 1, v11.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v11, 0xff800000, v32, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, 0xff800000, v18, s23
	v_cndmask_b32_e64 v34, 0xff800000, v36, s25
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s24, 1, v17.h
	v_and_b16 v17.h, 1, v13.h
	v_cmp_eq_u16_e64 s7, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v10.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v18, 0xff800000, v182, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s27, 1, v17.h
	v_and_b16 v17.h, 1, v14.l
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v19, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s26, 1, v17.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s9, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.h
	v_and_b16 v17.h, 1, v15.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v19, 0xff800000, v181, s11
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s29, 1, v17.h
	v_lshrrev_b16 v17.h, 8, v16.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v17.l
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b16 v17.h, 1, v17.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v25, s29
	v_cndmask_b32_e64 v25, 0xff800000, v188, s17
	v_cndmask_b32_e32 v14, 0xff800000, v178, vcc_lo
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s20, 1, v17.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v17, 0xff800000, v179, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s8, 1, v9.l
	v_and_b16 v9.l, 1, v16.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v26, 0xff800000, v33, s20
	v_cndmask_b32_e64 v33, 0xff800000, v35, s24
	v_cndmask_b32_e64 v35, 0xff800000, v20, s26
	v_cndmask_b32_e64 v20, 0xff800000, v184, s12
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v9, 0, v83
	v_cndmask_b32_e64 v16, 0xff800000, v180, s7
	v_cndmask_b32_e64 v15, 0xff800000, v186, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v162, 0xff800000, v24, s40
	v_cndmask_b32_e64 v24, 0xff800000, v39, s16
	ds_store_2addr_b32 v9, v162, v26 offset1:32
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v10.l
	v_cmp_eq_u16_e64 s36, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v9, 0xff800000, v28, s30
	v_cndmask_b32_e64 v28, 0xff800000, v190, s19
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v10, 0xff800000, v27, s36
	v_cndmask_b32_e64 v27, 0xff800000, v191, s18
	ds_store_2addr_b32 v118, v163, v29 offset1:32
	ds_store_2addr_b32 v119, v40, v27 offset1:32
	ds_store_2addr_b32 v120, v161, v28 offset1:32
	ds_store_2addr_b32 v121, v11, v24 offset1:32
	ds_store_2addr_b32 v122, v12, v25 offset1:32
	ds_store_2addr_b32 v123, v9, v22 offset1:32
	ds_store_2addr_b32 v124, v10, v23 offset1:32
	ds_store_2addr_b32 v125, v37, v20 offset1:32
	ds_store_2addr_b32 v126, v38, v21 offset1:32
	ds_store_2addr_b32 v127, v35, v18 offset1:32
	ds_store_2addr_b32 v128, v36, v19 offset1:32
	ds_store_2addr_b32 v129, v33, v16 offset1:32
	ds_store_2addr_b32 v130, v34, v17 offset1:32
	ds_store_2addr_b32 v131, v30, v14 offset1:32
	ds_store_2addr_b32 v132, v32, v15 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v39, v31
	ds_load_b32 v168, v133
	ds_load_b32 v169, v134
	ds_load_b32 v170, v135
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_dpp v31, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v164, v39, v39 :: v_dual_max_f32 v165, v168, v168
	v_dual_max_f32 v166, v169, v169 :: v_dual_max_f32 v167, v170, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v31, v31, v31
	v_max_f32_e32 v31, v164, v31
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v164, v168 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v164, v164, v164
	v_max_f32_e32 v164, v165, v164
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v165, v169 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v165, v165, v165
	v_max_f32_e32 v165, v166, v165
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v166, v170 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v166, v166, v166
	v_max_f32_e32 v166, v167, v166
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v167, v31 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v31, v31, v167
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v167, v164 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v164, v164, v167
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v167, v165 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v165, v165, v167
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v167, v166 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v166, v166, v167
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v167, v31 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v31, v31, v167
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v167, v164 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v164, v164, v167
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v167, v165 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v165, v165, v167
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v167, v166 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v166, v166, v167
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v167, v31 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v31, v31, v167
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v167, v164 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v164, v164, v167
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v167, v165 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v165, v165, v167
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v167, v166 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v166, v166, v167
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v167, v31, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v31, v31, v167
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v167, v164, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s43, v31, 31
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v164, v164, v167
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v167, v165, -1, -1 op_sel:[1,0]
	v_readlane_b32 s44, v164, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v167, v167, v167 :: v_dual_mov_b32 v164, s43
	v_max_f32_e32 v165, v165, v167
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v167, v166, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s45, v165, 31
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v167, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v165, s44 :: v_dual_max_f32 v166, v166, v167
	v_readlane_b32 s46, v166, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v166, s45 :: v_dual_mov_b32 v167, s46
	ds_store_b128 v88, v[164:167]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[164:167], v89
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v31, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v156, v156, v165, v31
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v31, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v157, v157, v166, v31
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v31, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v55, v55, v167, v31
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v31, v164
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v164, v164, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v31, v31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v31, v164, v31
.Ltmp55:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v164, v168, v156 :: v_dual_max_f32 v155, v155, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v164, v164
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v164, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp56:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v164, v164, v164 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v164, v164, v164 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v164, v164, v164 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v164, v164, v164 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v165, v164, -1, -1 op_sel:[1,0]
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v164, v164, v165
.Ltmp61:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v165, v169, v157
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s37, v164, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp63:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v165, v165
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v165, 0, v165, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v165, v165, v165 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v165, v165, v165 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v165, v165, v165 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v165, v165, v165 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v166, v165, -1, -1 op_sel:[1,0]
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v165, v165, v166 :: v_dual_sub_f32 v166, v170, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s38, v165, 31
.Ltmp68:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v166, v166
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v165, s37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v166, 0, v166, s41
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v166, v166, v166 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v166, v166, v166 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v166, v166, v166 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v166, v166, v166 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v167, v166, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v166, v166, v167
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v167, v39, -1, -1 op_sel:[1,0]
	v_readlane_b32 s41, v166, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v39, v39, v167 :: v_dual_mov_b32 v166, s38
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v167, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_readlane_b32 s42, v39, 31
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v39, v38, v35, v36
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v164, s42
	ds_store_b128 v88, v[164:167]
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v164, v33, v34, v30
	v_max3_f32 v165, v32, v26, v29
	v_max3_f32 v166, v20, v21, v18
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v39, v39, v164, v165
	v_max3_f32 v164, v27, v28, v24
	v_max3_f32 v165, v25, v22, v23
	v_max3_f32 v164, v164, v165, v166
	v_max_f32_e32 v165, v162, v163
	v_max3_f32 v166, v161, v11, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v165, v165, v40, v166
	v_max3_f32 v166, v9, v10, v37
	v_max3_f32 v39, v165, v166, v39
	v_dual_max_f32 v165, v19, v16 :: v_dual_max_f32 v166, v14, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v165, v165, v17, v166
	v_max3_f32 v39, v39, v164, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v164, v39, vcc_hi, 0xfedcba98 op_sel:[1,0]
.Ltmp83:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v39, v160, v39, v164
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v164.h, v13.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v163, v163, v39
	v_sub_f32_e32 v162, v162, v39
	v_sub_f32_e32 v161, v161, v39
	v_sub_f32_e32 v40, v40, v39
	v_sub_f32_e32 v12, v12, v39
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v163, v163
	v_exp_f32_e32 v162, v162
	v_exp_f32_e32 v161, v161
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v12, v12
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v11, v39
	v_sub_f32_e32 v10, v10, v39
	v_sub_f32_e32 v9, v9, v39
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v180, v160, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v163, 0, v163, s39
	v_cndmask_b32_e64 v162, 0, v162, s40
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v161, 0, v161, s35
	v_cndmask_b32_e64 v40, 0, v40, s34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v12, 0, v12, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v164.l, v163.h
	v_cmp_o_f32_e64 s37, v163, v163
	v_cmp_o_f32_e64 s38, v162, v162
	v_cmp_o_f32_e64 s35, v161, v161
	v_cmp_o_f32_e64 s34, v40, v40
	v_and_b32_e32 v164, 1, v164
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v12, v12
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v9, v9
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v164, v163, v164, 0x7fff
	v_mov_b16_e64 v163.l, v162.h
	v_mov_b16_e64 v163.h, v13.l
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v180, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v164.h, 0x7fff, v164.h, s37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v163, 1, v163
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s36
	v_cndmask_b32_e64 v9, 0, v9, s30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v11, v11
	v_add3_u32 v163, v162, v163, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s30, v9, v9
	v_cndmask_b16 v164.l, 0x7fff, v163.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v163, v164, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v162, v163, v164, v85
	v_perm_b32 v163, v163, v164, v86
	v_mov_b16_e64 v164.l, v161.h
	v_mov_b16_e64 v164.h, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v164, 1, v164
	v_add3_u32 v164, v161, v164, 0x7fff
	v_mov_b16_e64 v161.l, v40.h
	v_mov_b16_e64 v161.h, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v161, 1, v161
	v_add3_u32 v161, v40, v161, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v164.h, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v161.h, s34
	v_permlanex16_b32 v161, v40, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v164, v161, v40, v85
	v_perm_b32 v165, v161, v40, v86
	v_mov_b16_e32 v40.l, v12.h
	v_mov_b16_e32 v40.h, v13.l
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v12, v40, 0x7fff
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e32 v12.h, v13.l
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v11, v12, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v40.h, s33
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s31
	v_cmp_o_f32_e64 s31, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v11, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v166, v12, v11, v85
	v_perm_b32 v167, v12, v11, v86
	v_mov_b16_e32 v11.l, v10.h
	v_mov_b16_e32 v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v10, v11, 0x7fff
	v_mov_b16_e32 v10.l, v9.h
	v_mov_b16_e32 v10.h, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v10, v9, v10, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s30
	v_permlanex16_b32 v10, v9, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v168, v10, v9, v85
	v_perm_b32 v169, v10, v9, v86
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v9, s83, v69
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s83, s83, 64
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 4, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s45, s63, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s30, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 8, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s45, s2, s45
	s_and_b32 s30, s2, s30
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s31, s63, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 12, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s33, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 16, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s34, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 20, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s35, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 24, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s36, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 28, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s37, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 32, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s38, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 36, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s39, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 40, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s40, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 44, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s41, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 48, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s42, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 52, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s43, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 56, v9
	v_add_nc_u32_e32 v9, 60, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s44, s63, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s46, s63, v9
	v_mad_u64_u32 v[9:10], null, s47, s82, v[54:55]
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s47, 0xff800000, v160
	v_cndmask_b32_e64 v160, 0, v180, s47
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v11, v9, s90, 1
	v_add_lshl_u32 v12, v9, s91, 1
	v_add_lshl_u32 v40, v9, s92, 1
	v_add_lshl_u32 v161, v9, s93, 1
	v_add_lshl_u32 v170, v9, s94, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s31
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v171, v9, s95, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s33
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v160
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v40, 0x80000000, v40, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v160
	v_mul_f32_e32 v3, v3, v160
	v_mul_f32_e32 v4, v4, v160
	v_mul_f32_e32 v5, v5, v160
	v_mul_f32_e32 v6, v6, v160
	v_mul_f32_e32 v7, v7, v160
	v_mul_f32_e32 v8, v8, v160
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v160, 0x80000000, v161, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s35
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v172, v9, s96, 1
	v_cndmask_b32_e64 v161, 0x80000000, v170, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s36
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v173, v9, s97, 1
	v_cndmask_b32_e64 v170, 0x80000000, v171, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s37
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v174, v9, s98, 1
	v_cndmask_b32_e64 v171, 0x80000000, v172, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s38
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v175, v9, s99, 1
	v_cndmask_b32_e64 v172, 0x80000000, v173, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s39
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v176, v9, s100, 1
	v_cndmask_b32_e64 v173, 0x80000000, v174, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s40
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v177, v9, s101, 1
	v_lshlrev_b32_e32 v10, 1, v9
	v_cndmask_b32_e64 v174, 0x80000000, v175, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v178, v9, s102, 1
	v_cndmask_b32_e64 v175, 0x80000000, v176, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s42
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v179, v9, s103, 1
	v_cndmask_b32_e64 v176, 0x80000000, v177, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s43
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v9, v9, s104, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s45
	v_cndmask_b32_e64 v177, 0x80000000, v178, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s44
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v178, 0x80000000, v179, s30
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s30, s2, s46
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s83, s84
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v9, 0x80000000, v9, s30
	s_clause 0xf
	buffer_load_u16 v179, v10, s[76:79], 0 offen
	buffer_load_u16 v180, v11, s[76:79], 0 offen
	buffer_load_u16 v181, v12, s[76:79], 0 offen
	buffer_load_u16 v160, v160, s[76:79], 0 offen
	buffer_load_u16 v161, v161, s[76:79], 0 offen
	buffer_load_u16 v170, v170, s[76:79], 0 offen
	buffer_load_u16 v171, v171, s[76:79], 0 offen
	buffer_load_u16 v40, v40, s[76:79], 0 offen
	buffer_load_u16 v172, v172, s[76:79], 0 offen
	buffer_load_u16 v173, v173, s[76:79], 0 offen
	buffer_load_u16 v174, v174, s[76:79], 0 offen
	buffer_load_u16 v176, v176, s[76:79], 0 offen
	buffer_load_u16 v177, v177, s[76:79], 0 offen
	buffer_load_u16 v178, v178, s[76:79], 0 offen
	buffer_load_u16 v182, v9, s[76:79], 0 offen
	buffer_load_u16 v175, v175, s[76:79], 0 offen
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[9:12], v89
.Ltmp85:
	.loc	1 886 62                        ; attention.py:886:62
	s_waitcnt lgkmcnt(0)
	v_sub_f32_e32 v10, v38, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	v_mov_b16_e32 v12.h, v13.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(15)
	ds_store_b16 v136, v179
	s_waitcnt vmcnt(14)
	ds_store_b16 v136, v180 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b16 v136, v181 offset:1024
	s_waitcnt vmcnt(12)
	ds_store_b16 v136, v160 offset:2048
	s_waitcnt vmcnt(11)
	ds_store_b16 v136, v161 offset:2560
	s_waitcnt vmcnt(10)
	ds_store_b16 v136, v170 offset:3072
	s_waitcnt vmcnt(7)
	ds_store_b16 v136, v172 offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b16 v136, v173 offset:4608
	s_waitcnt vmcnt(5)
	ds_store_b16 v136, v174 offset:5120
	s_waitcnt vmcnt(4)
	ds_store_b16 v136, v176 offset:6144
	s_waitcnt vmcnt(3)
	ds_store_b16 v136, v177 offset:6656
	ds_store_b16 v137, v40
	ds_store_b16 v138, v171
	s_waitcnt vmcnt(0)
	ds_store_b16 v139, v175
	ds_store_b16 v136, v178 offset:7168
	ds_store_b16 v140, v182
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s29
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v170, v87
	ds_load_u16_d16 v171, v87 offset:256
	ds_load_u16_d16 v172, v87 offset:512
	ds_load_u16_d16 v173, v87 offset:768
	ds_load_u16_d16 v174, v87 offset:1024
	ds_load_u16_d16 v175, v87 offset:1280
	ds_load_u16_d16 v176, v87 offset:1536
	ds_load_u16_d16 v177, v87 offset:1792
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v170, v87 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v171, v87 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v172, v87 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v173, v87 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v174, v87 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v175, v87 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v176, v87 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v177, v87 offset:1920
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s29, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v37, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s29
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[170:177], v[162:169], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v168, v87 offset:2048
	ds_load_u16_d16 v169, v87 offset:2304
	ds_load_u16_d16 v170, v87 offset:2560
	ds_load_u16_d16 v171, v87 offset:2816
	ds_load_u16_d16 v172, v87 offset:3072
	ds_load_u16_d16 v173, v87 offset:3328
	ds_load_u16_d16 v174, v87 offset:3584
	ds_load_u16_d16 v175, v87 offset:3840
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v168, v87 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v169, v87 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v170, v87 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v171, v87 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v172, v87 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v173, v87 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v174, v87 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v175, v87 offset:3968
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s28, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s28
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v160, v11, v10, v85
	v_perm_b32 v161, v11, v10, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v36, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s27, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v35, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s26, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s26
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v162, v11, v10, v85
	v_perm_b32 v163, v11, v10, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v34, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s25, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v33, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s24, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s24
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v164, v11, v10, v85
	v_perm_b32 v165, v11, v10, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v32, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s23, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v30, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s22, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s22
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v166, v11, v10, v85
	v_perm_b32 v167, v11, v10, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v29, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[168:175], v[160:167], v[1:8]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s21, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v26, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s21
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s20, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v11, v12, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s20
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v160, v11, v10, v85
	v_perm_b32 v161, v11, v10, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v28, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s19, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v27, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v10.h
	v_cmp_o_f32_e64 s18, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s18
	v_mov_b16_e32 v12.h, v13.l
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v162, v11, v10, v85
	v_perm_b32 v163, v11, v10, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v25, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s17
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s17, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v24, v39
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s16
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s16, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s17
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s16
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v164, v11, v10, v85
	v_perm_b32 v165, v11, v10, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v23, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s15, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v22, v39
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v22, v87 offset:4096
	ds_load_u16_d16 v23, v87 offset:4352
	ds_load_u16_d16 v24, v87 offset:4608
	ds_load_u16_d16 v25, v87 offset:4864
	ds_load_u16_d16 v26, v87 offset:5120
	ds_load_u16_d16 v27, v87 offset:5376
	ds_load_u16_d16 v28, v87 offset:5632
	ds_load_u16_d16 v29, v87 offset:5888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v22, v87 offset:4224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v23, v87 offset:4480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v24, v87 offset:4736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v25, v87 offset:4992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v26, v87 offset:5248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v27, v87 offset:5504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v28, v87 offset:5760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v29, v87 offset:6016
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s14
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s15
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s14
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v166, v11, v10, v85
	v_perm_b32 v167, v11, v10, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v21, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[22:29], v[160:167], v[1:8]
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	v_mov_b32_e32 v160, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s13
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v20, v39
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s12
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s13
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s12
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v20, v11, v10, v85
	v_perm_b32 v21, v11, v10, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v19, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s11, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v18, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v10.h
	v_cmp_o_f32_e64 s10, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s10
	v_mov_b16_e32 v12.h, v13.l
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v22, v11, v10, v85
	v_perm_b32 v23, v11, v10, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v17, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s9
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v16, v39
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s7
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s9
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s7
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v24, v11, v10, v85
	v_perm_b32 v25, v11, v10, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v15, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s7, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v14, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e32 v10, 0, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v10.h
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v10.l, 0x7fff, v12.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v26, v11, v10, v85
	v_perm_b32 v27, v11, v10, v86
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v10, v87 offset:6144
	ds_load_u16_d16 v11, v87 offset:6400
	ds_load_u16_d16 v12, v87 offset:6656
	ds_load_u16_d16 v13, v87 offset:6912
	ds_load_u16_d16 v14, v87 offset:7168
	ds_load_u16_d16 v15, v87 offset:7424
	ds_load_u16_d16 v16, v87 offset:7680
	ds_load_u16_d16 v17, v87 offset:7936
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v10, v87 offset:6272
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v11, v87 offset:6528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v12, v87 offset:6784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v13, v87 offset:7040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v14, v87 offset:7296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v15, v87 offset:7552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v16, v87 offset:7808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v17, v87 offset:8064
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[10:17], v[20:27], v[1:8]
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v9, v9, v10 :: v_dual_max_f32 v10, v159, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v10, v10, v31
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v11, v159, v10
	v_mov_b32_e32 v159, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v11, v11
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v11, 0, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v9, v158, v11
	v_mov_b32_e32 v158, v9
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v9, s83, v56
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s47, s83, s61
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s47, s81
	v_add_nc_u32_e32 v15, s7, v43
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s63, v9
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v18, s7, v59
	s_mul_i32 s7, s81, 24
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v11, 16, v9
	v_add_nc_u32_e32 v16, 48, v9
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 8, v9
	v_add_nc_u32_e32 v19, s62, v15
	v_add_nc_u32_e32 v12, 24, v9
	v_add_nc_u32_e32 v20, s7, v15
	v_add_nc_u32_e32 v13, 32, v9
	v_add_nc_u32_e32 v22, s86, v15
	v_add_nc_u32_e32 v17, 56, v9
	v_add_nc_u32_e32 v23, s87, v15
	v_add_nc_u32_e32 v14, 40, v9
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v9, 0x80000000, v15, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s7, s63, v10
	v_add_nc_u32_e32 v21, s85, v15
	v_add_nc_u32_e32 v24, s88, v15
	v_cmp_gt_i32_e64 s11, s63, v14
	v_cmp_gt_i32_e64 s12, s63, v16
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s7
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v10, 0x80000000, v18, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s8, s63, v11
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v18, s47, v71, 1
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v185, 64, v18
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v11, 0x80000000, v19, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s9, s63, v12
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v177, 32, v18
	v_add_nc_u32_e32 v173, 16, v18
	v_add_nc_u32_e32 v171, 8, v18
	v_add_nc_u32_e32 v174, 20, v18
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s9
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v176, 28, v18
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v12, 0x80000000, v20, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s10, s63, v13
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v178, 36, v18
	v_add_nc_u32_e32 v180, 44, v18
	v_add_nc_u32_e32 v181, 48, v18
	v_add_nc_u32_e32 v175, 24, v18
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s10
	.loc	1 823 32                        ; attention.py:823:32
	v_dual_cndmask_b32 v13, 0x80000000, v21 :: v_dual_add_nc_u32 v182, 52, v18
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s11
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v183, 56, v18
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v14, 0x80000000, v22, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s13, s63, v17
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s12
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v17, s83, v71
	.loc	1 823 32                        ; attention.py:823:32
	v_dual_cndmask_b32 v15, 0x80000000, v23 :: v_dual_add_nc_u32 v184, 60, v18
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s13
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v186, 0x44, v18
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v16, 0x80000000, v24, vcc_lo
	s_clause 0x7
	buffer_load_u8 v9, v9, s[68:71], 0 offen
	buffer_load_u8 v11, v11, s[68:71], 0 offen
	buffer_load_u8 v13, v13, s[68:71], 0 offen
	buffer_load_u8 v15, v15, s[68:71], 0 offen
	buffer_load_u8 v10, v10, s[68:71], 0 offen
	buffer_load_u8 v12, v12, s[68:71], 0 offen
	buffer_load_u8 v14, v14, s[68:71], 0 offen
	buffer_load_u8 v16, v16, s[68:71], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v19, 2, v17
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v21, 6, v17
	v_add_nc_u32_e32 v24, 12, v17
	v_add_nc_u32_e32 v25, 14, v17
	v_add_nc_u32_e32 v26, 16, v17
	v_add_nc_u32_e32 v28, 20, v17
	v_add_nc_u32_e32 v30, 24, v17
	v_add_nc_u32_e32 v32, 28, v17
	v_add_nc_u32_e32 v34, 32, v17
	v_add_nc_u32_e32 v36, 36, v17
	v_add_nc_u32_e32 v39, 42, v17
	v_add_nc_u32_e32 v161, 46, v17
	v_add_nc_u32_e32 v163, 50, v17
	v_add_nc_u32_e32 v165, 54, v17
	v_add_nc_u32_e32 v166, 56, v17
	v_add_nc_u32_e32 v167, 58, v17
	v_add_nc_u32_e32 v168, 60, v17
	v_add_nc_u32_e32 v169, 62, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v187, 0x48, v18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v27, 18, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v188, 0x4c, v18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v38, 40, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v189, 0x50, v18
	v_add_nc_u32_e32 v179, 40, v18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v23, 10, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v190, 0x54, v18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v40, 44, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v191, 0x58, v18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v29, 22, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v192, 0x5c, v18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v31, 26, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v193, 0x60, v18
	v_add_nc_u32_e32 v170, 4, v18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v20, 4, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v194, 0x64, v18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v33, 30, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v195, 0x68, v18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v162, 48, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v196, 0x6c, v18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v35, 34, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v197, 0x70, v18
	v_add_nc_u32_e32 v172, 12, v18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v22, 8, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v198, 0x74, v18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v37, 38, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v199, 0x78, v18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v164, 52, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v19
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v18, 0x7c, v18
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v60, v9
	s_waitcnt vmcnt(6)
	ds_store_b8 v60, v11 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v60, v13 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v60, v15 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v61, v10
	s_waitcnt vmcnt(2)
	ds_store_b8 v61, v12 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v61, v14 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v61, v16 offset:1536
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v19, 0x80000000, v170, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v20
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[221:224], v65 offset1:1
	ds_load_2addr_stride64_b64 v[225:228], v65 offset0:2 offset1:3
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v20, 0x80000000, v171, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v21
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v21, 0x80000000, v172, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v22
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v22, 0x80000000, v173, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v23
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v23, 0x80000000, v174, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v24
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v24, 0x80000000, v175, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v25
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v25, 0x80000000, v176, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v26
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v26, 0x80000000, v177, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v27
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v27, 0x80000000, v178, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v28
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v28, 0x80000000, v179, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v29
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v29, 0x80000000, v180, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v30
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v30, 0x80000000, v181, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v31
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v31, 0x80000000, v182, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v32
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v32, 0x80000000, v183, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v33, 0x80000000, v184, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v34, 0x80000000, v185, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v35, 0x80000000, v186, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v36, 0x80000000, v187, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v37, 0x80000000, v188, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v38, 0x80000000, v189, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v39
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v39, 0x80000000, v190, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v40
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v40, 0x80000000, v191, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v161
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v178, 0x80000000, v192, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v162
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v179, 0x80000000, v193, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v163
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v180, 0x80000000, v194, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v164
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v181, 0x80000000, v195, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v165
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v186, 0x80000000, v196, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v166
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v193, 0x80000000, v197, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v167
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v194, 0x80000000, v198, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v168
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v195, 0x80000000, v199, vcc_lo
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v169
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	s_clause 0x1f
	buffer_load_u16 v161, v17, s[72:75], 0 offen
	buffer_load_u16 v177, v19, s[72:75], 0 offen
	buffer_load_u16 v176, v20, s[72:75], 0 offen
	buffer_load_u16 v175, v21, s[72:75], 0 offen
	buffer_load_u16 v174, v22, s[72:75], 0 offen
	buffer_load_u16 v173, v23, s[72:75], 0 offen
	buffer_load_u16 v172, v24, s[72:75], 0 offen
	buffer_load_u16 v170, v25, s[72:75], 0 offen
	buffer_load_u16 v163, v26, s[72:75], 0 offen
	buffer_load_u16 v162, v27, s[72:75], 0 offen
	buffer_load_u16 v169, v28, s[72:75], 0 offen
	buffer_load_u16 v168, v29, s[72:75], 0 offen
	buffer_load_u16 v166, v30, s[72:75], 0 offen
	buffer_load_u16 v164, v31, s[72:75], 0 offen
	buffer_load_u16 v165, v32, s[72:75], 0 offen
	buffer_load_u16 v167, v33, s[72:75], 0 offen
	buffer_load_u16 v171, v34, s[72:75], 0 offen
	buffer_load_u16 v192, v35, s[72:75], 0 offen
	buffer_load_u16 v191, v36, s[72:75], 0 offen
	buffer_load_u16 v190, v37, s[72:75], 0 offen
	buffer_load_u16 v189, v38, s[72:75], 0 offen
	buffer_load_u16 v188, v39, s[72:75], 0 offen
	buffer_load_u16 v187, v40, s[72:75], 0 offen
	buffer_load_u16 v185, v178, s[72:75], 0 offen
	buffer_load_u16 v184, v179, s[72:75], 0 offen
	buffer_load_u16 v183, v180, s[72:75], 0 offen
	buffer_load_u16 v182, v181, s[72:75], 0 offen
	buffer_load_u16 v181, v186, s[72:75], 0 offen
	buffer_load_u16 v180, v193, s[72:75], 0 offen
	buffer_load_u16 v179, v194, s[72:75], 0 offen
	buffer_load_u16 v178, v195, s[72:75], 0 offen
	buffer_load_u16 v186, v18, s[72:75], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[15:18], v62 offset1:1
	ds_load_2addr_stride64_b64 v[201:204], v62 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[205:208], v63 offset1:1
	ds_load_2addr_stride64_b64 v[209:212], v63 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[213:216], v64 offset1:1
	ds_load_2addr_stride64_b64 v[217:220], v64 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v200, s55 :: v_dual_mov_b32 v199, s54
	v_dual_mov_b32 v198, s53 :: v_dual_mov_b32 v197, s52
	v_dual_mov_b32 v196, s51 :: v_dual_mov_b32 v195, s50
	v_dual_mov_b32 v194, s49 :: v_dual_mov_b32 v193, s48
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v67
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[15:16], v[44:45], v[193:200] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[44:45], v[193:200] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[201:202], v[44:45], v[193:200] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[203:204], v[44:45], v[193:200] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[205:206], v[46:47], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[207:208], v[46:47], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[209:210], v[46:47], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[211:212], v[46:47], v[33:40] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v193, s83, v42
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[213:214], v[48:49], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[215:216], v[48:49], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[217:218], v[48:49], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[219:220], v[48:49], v[33:40] neg_lo:[1,1,0]
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s7, s63, v193
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[221:222], v[50:51], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[223:224], v[50:51], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[225:226], v[50:51], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[227:228], v[50:51], v[33:40] neg_lo:[1,1,0]
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s17, s0, s7
	s_and_b32 s16, s1, s7
	s_and_b32 s15, s5, s7
	s_and_b32 s14, s6, s7
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v193, v72
	v_cmp_le_i32_e64 s7, v193, v73
	v_cmp_le_i32_e64 s8, v193, v74
	v_cmp_le_i32_e64 s9, v193, v75
	s_and_not1_b32 s11, s17, exec_lo
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s10, vcc_lo, s17
	s_and_b32 s7, s7, s16
	s_and_b32 s8, s8, s15
	s_and_b32 s9, s9, s14
	s_and_b32 s10, s10, exec_lo
	s_and_not1_b32 s12, s16, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_or_b32 s17, s11, s10
	s_or_b32 s16, s12, s7
	s_and_not1_b32 s7, s15, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s10, s14, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_or_b32 s15, s7, s8
	s_or_b32 s14, s10, s9
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s80
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v193, v76
	v_cmp_ge_i32_e64 s7, v193, v77
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v193, v142
	v_cmp_le_i32_e64 s10, v193, v143
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v193, v78
	v_cmp_ge_i32_e64 s11, v193, v141
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v193, v144
	v_cmp_le_i32_e64 s13, v193, v145
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s7, s7, s10
	s_and_b32 s9, s9, s17
	s_and_b32 s7, s7, s16
	s_and_b32 s8, s8, s12
	s_and_b32 s10, s11, s13
	s_and_b32 s8, s8, s15
	s_and_b32 s10, s10, s14
	s_and_not1_b32 s11, s17, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_and_not1_b32 s12, s16, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_or_b32 s17, s11, s9
	s_or_b32 s16, s12, s7
	s_and_not1_b32 s7, s15, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s9, s14, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_or_b32 s15, s7, s8
	s_or_b32 s14, s9, s10
	s_branch .LBB0_9
.LBB0_14:                               ; %._crit_edge.loopexit
.Ltmp89:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v10, v10 :: v_dual_add_f32 v10, 0, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v12, 0xff800000, v11 :: v_dual_mov_b32 v11, v68
.Ltmp90:
.LBB0_15:                               ; %._crit_edge
	.loc	1 1028 26                       ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v66
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshlrev_b32_e32 v9, 2, v0
.Ltmp92:
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e64 s0, 0, v58
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp94:
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v10, 0, v10, vcc_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v12, 0xff800000, v12 :: v_dual_and_b32 v13, 12, v9
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v1, 0, v1, s0
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v11, 0, v11
.Ltmp96:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v13, 0, v13
.Ltmp98:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v17, 0, v4, s0
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v11, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v3
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_load_b32 v12, v13
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v10
.Ltmp103:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v13
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_cndmask_b32_e64 v18, 0, v5, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s59, s59, s3
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v10
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v2
.Ltmp109:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s82, s82, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s58, s59
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v10, v1
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s4, s1, s82
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s1, exec_lo
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v13 :: v_dual_add_f32 v3, v3, v14
.Ltmp114:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v13, v12 :: v_dual_mov_b32 v16, v11
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v2 :: v_dual_mov_b32 v15, v3
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v13, v13, v13
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v2, v2, v14
	v_add_f32_e32 v14, v3, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp122:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v10, v11, v16 :: v_dual_max_f32 v11, v12, v13
.Ltmp123:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp124:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v12, v10 :: v_dual_mov_b32 v13, v11
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp127:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v3 :: v_dual_add_f32 v4, v14, v16
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v2
.Ltmp130:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v14, 0, v6, s0
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v8
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v2, v15
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v17
	v_mov_b32_e32 v2, v1
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v18, v16
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v18, v16 :: v_dual_add_f32 v15, v17, v15
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v17, v15 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v7, v20 :: v_dual_add_f32 v16, v16, v18
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v7
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v18, v14, v19 :: v_dual_add_f32 v15, v15, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v19, v7, v20 :: v_dual_mov_b32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v15 :: v_dual_add_f32 v8, v8, v21
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v7, v16
	v_dual_mov_b32 v22, v8 :: v_dual_mov_b32 v21, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v15, v17
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v16, v7 :: v_dual_add_f32 v16, v18, v20
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v18, v8, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp150:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v22, v56, v41
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v19, v21
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v21, v18 :: v_dual_mov_b32 v20, v17
	v_mov_b32_e32 v8, v7
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp153:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v22
	s_cbranch_execz .LBB0_17
; %bb.16:
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v22, v11, v11
.Ltmp155:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s5, s4, 31
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v11, v10, v12 :: v_dual_mov_b32 v12, 0
.Ltmp157:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[6:7], s[4:5], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp158:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v22, v13
.Ltmp159:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s6, s56, s6
	s_addc_u32 s7, s57, s7
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v12, v[10:11], s[6:7]
.LBB0_17:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s1
.Ltmp160:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v10, v16, v19
	v_dual_add_f32 v16, v14, v15 :: v_dual_add_f32 v15, v4, v6
	v_dual_add_f32 v14, v3, v5 :: v_dual_add_f32 v13, v1, v2
.Ltmp161:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v9
	s_and_b32 vcc_lo, vcc_lo, s2
	v_lshlrev_b32_e32 v0, 5, v0
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v7, v8 :: v_dual_and_b32 v4, 0xe0, v57
.Ltmp163:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v57
	v_add_nc_u32_e32 v2, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 32, v0
.Ltmp164:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v18, v21 :: v_dual_add_nc_u32 v3, 0, v4
	v_add_f32_e32 v11, v17, v20
.Ltmp165:
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v0, v2, v0, v1
	s_barrier
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[9:12] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s4, v42
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v1, v1, 2, 8
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[56:59], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp166:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 229
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_vgpr, 229
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14928
; TotalNumSgprs: 107
; NumVgprs: 229
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 229
; Occupancy: 6
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
	.short	1032                            ; DW_AT_call_line
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
	.short	1031                            ; DW_AT_call_line
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
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           1
        .value_kind:     by_value
      - .offset:         129
        .size:           1
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     229
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
